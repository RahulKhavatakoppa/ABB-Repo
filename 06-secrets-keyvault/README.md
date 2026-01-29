# Task 6 – Secrets (Key Vault)

**For reviewers:** In this folder I have kept `cd.yml` – the same CD workflow as Task 3, with the "Get secrets from Key Vault" step (Azure/get-keyvault-secrets). Secrets are exposed as masked pipeline variables and used during deploy.

**Deliverables:** I have left `deployment-logs/` for a deployment log showing the Key Vault step and successful deploy.

**To run on GitHub:** Copy `03-cd-pipeline/cd.yml` to `.github/workflows/cd.yml` (same workflow). Set KEY_VAULT_NAME and Azure secrets.
