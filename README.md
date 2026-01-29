# DevOps Technical Assessment – Senior Software Engineer

**Candidate:** Rahul  
**Role:** Senior Software Engineer – DevOps  
**Submission:** 48-hour assessment – I have completed the tasks as outlined in the assignment; however, not all deliverables include live runs or screenshots.

I was unable to run all live tasks because I was also managing a production push for one of my AI agent bots at my current company during this time.

---

## How to navigate

I have organised the repo so each task has its own folder. Below is a quick map of where to find what.

| # | Topic | Folder | Deliverables |
|---|--------|--------|---------------|
| 1 | Branching & Workflow | `01-branching-workflow/` | branching-strategy.md, CODE-REVIEW-LOG.md |
| 2 | CI Pipeline | `02-ci-pipeline/` | ci.yml, build-logs/ |
| 3 | CD Pipeline | `03-cd-pipeline/` | cd.yml, deployment-logs/, screenshots/ |
| 4 | Multi-Stage | `04-multi-stage-pipeline/` | multi-stage-pipeline.yml, config/ |
| 5 | Terraform AKS | `05-terraform-aks/` | aks-terraform-script.tf, variables.tf, output-logs/ |
| 6 | Secrets (Key Vault) | `06-secrets-keyvault/` | cd.yml, deployment-logs/ |
| 7 | Docker & ACR | `07-docker-acr/` | Dockerfile, docker-build-logs.txt, acr-push-logs.txt |
| 8 | K8s Deployment | `08-kubernetes-deployment/` | deployment.yaml, logs/, screenshots/ |
| 10 | Monitoring | `10-monitoring/` | alert-rules.md, screenshots/, alert-logs/ |
| 11 | Log Query (KQL) | `11-log-analytics/` | log-analytics-query.kql, query-results/ |
| 12 | Pipeline Security | `12-pipeline-security/` | security-pipeline.yml, scan-logs/ |
| 13 | Container Security | `13-container-security/` | container-scan-report.txt, mitigations.md |
| 14 | Pipeline Debugging | `14-pipeline-debugging/` | pipeline-debugging.yml, pipeline-before-fail.yml |
| 16 | Cost Optimization | `16-cost-optimization/` | cost-optimization.md |

---

## Notes for reviewers

- **Workflows:** I have kept the workflow files in the task folders (e.g. `02-ci-pipeline/ci.yml`) so you can review them per task. Copies are also in `.github/workflows/` so they run on GitHub Actions (ci.yml, cd.yml, multi-stage.yml, security.yml, pipeline-debugging.yml).
- **Sample app:** A small Node.js app used for CI/CD and container tasks is in `sample-app/`. Placeholders (ACR name, secrets, tfvars) need to be replaced before running.
- **Screenshots and logs:** Each task folder has a README describing what to add; I have left placeholder instructions where I could not run the flow myself because of time constraint.

Thank you for reviewing my submission.
