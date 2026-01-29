# Terraform AKS with Azure Monitor (Log Analytics) – Task 5
# Run: terraform init, terraform plan, terraform apply
# Backend and variables are in separate files for clarity.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }
  }
  # Uncomment and set for remote state
  # backend "azurerm" {
  #   resource_group_name  = "tfstate-rg"
  #   storage_account_name = "tfstatesa"
  #   container_name      = "tfstate"
  #   key                 = "aks.tfstate"
  # }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

# Resource group for AKS and related resources
resource "azurerm_resource_group" "aks_rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

# Log Analytics workspace for Azure Monitor
resource "azurerm_log_analytics_workspace" "main" {
  name                = "${var.cluster_name}-law"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  sku                 = "PerGB2018"
  retention_in_days   = var.log_retention_days
  tags                = var.tags
}

# AKS cluster with Azure Monitor (OMS) enabled
resource "azurerm_kubernetes_cluster" "main" {
  name                = var.cluster_name
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name                = "default"
    node_count          = var.node_count
    vm_size             = var.node_vm_size
    os_disk_size_gb     = var.node_os_disk_size_gb
    type                = "VirtualMachineScaleSets"
    enable_auto_scaling = var.enable_auto_scaling
    min_count           = var.enable_auto_scaling ? var.node_min_count : null
    max_count           = var.enable_auto_scaling ? var.node_max_count : null
    vnet_subnet_id      = var.vnet_subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  # Azure Monitor (container insights) – required for Task 5
  oms_agent {
    log_analytics_workspace_id      = azurerm_log_analytics_workspace.main.id
    msi_auth_for_monitoring_enabled = true
  }

  # Optional: enable Azure Policy addon
  # azure_policy_enabled = true

  network_profile {
    network_plugin     = var.network_plugin
    network_policy     = var.network_policy
    load_balancer_sku  = "standard"
    outbound_type      = "loadBalancer"
  }

  tags = var.tags
}

# Outputs for use in pipelines or other configs
output "aks_id" {
  description = "ID of the AKS cluster"
  value       = azurerm_kubernetes_cluster.main.id
}

output "aks_name" {
  description = "Name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.main.name
}

output "aks_fqdn" {
  description = "FQDN of the AKS API server"
  value       = azurerm_kubernetes_cluster.main.fqdn
}

output "aks_kube_config" {
  description = "Kubernetes config (sensitive)"
  value       = azurerm_kubernetes_cluster.main.kube_config_raw
  sensitive   = true
}

output "log_analytics_workspace_id" {
  description = "Log Analytics workspace ID (for Azure Monitor)"
  value       = azurerm_log_analytics_workspace.main.id
}

output "log_analytics_workspace_workspace_id" {
  description = "Log Analytics workspace GUID"
  value       = azurerm_log_analytics_workspace.main.workspace_id
}
