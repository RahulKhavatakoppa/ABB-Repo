# Task 3 – CD Pipeline

**For reviewers:** In this folder I have kept `cd.yml` – the GitHub Actions workflow for deploy to Staging, then Production. It uses Azure login, Key Vault for secrets, and Azure Web App deploy. Production uses the "Production" environment; I have assumed required reviewers are added on that environment in repo Settings for approval gates.

**Deliverables:** I have left `deployment-logs/` for the deployment log.

**To run on GitHub:** Copy `cd.yml` to `.github/workflows/cd.yml`. Set repo secrets (AZURE_*, KEY_VAULT_NAME, APP_SERVICE_NAME_STAGING, APP_SERVICE_NAME_PROD).
