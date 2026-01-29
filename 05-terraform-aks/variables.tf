# Variables for AKS Terraform – Task 5

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group for AKS and Log Analytics"
}

variable "location" {
  type        = string
  default    = "East US"
  description = "Azure region"
}

variable "cluster_name" {
  type        = string
  description = "AKS cluster name"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for AKS API server"
}

variable "kubernetes_version" {
  type        = string
  default    = null
  description = "Kubernetes version; null = use latest supported"
}

variable "node_count" {
  type        = number
  default    = 2
  description = "Default node pool size (used when auto_scaling is false)"
}

variable "node_vm_size" {
  type        = string
  default    = "Standard_B2s"
  description = "VM size for node pool"
}

variable "node_os_disk_size_gb" {
  type        = number
  default    = 30
  description = "OS disk size in GB per node"
}

variable "enable_auto_scaling" {
  type        = bool
  default    = true
  description = "Enable node pool auto scaling"
}

variable "node_min_count" {
  type        = number
  default    = 1
  description = "Minimum nodes when auto scaling"
}

variable "node_max_count" {
  type        = number
  default    = 5
  description = "Maximum nodes when auto scaling"
}

variable "vnet_subnet_id" {
  type        = string
  default    = null
  description = "Optional subnet ID for nodes"
}

variable "network_plugin" {
  type        = string
  default    = "kubenet"
  description = "Network plugin: kubenet or azure"
}

variable "network_policy" {
  type        = string
  default    = null
  description = "Network policy: azure or calico (requires azure plugin)"
}

variable "log_retention_days" {
  type        = number
  default    = 30
  description = "Log Analytics retention in days"
}

variable "tags" {
  type        = map(string)
  default    = {}
  description = "Tags for all resources"
}
