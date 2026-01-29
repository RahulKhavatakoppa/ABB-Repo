# Task 4 – Multi-Stage Pipeline

**For reviewers:** In this folder I have kept `multi-stage-pipeline.yml` – Build, then Deploy to Dev → Test → Prod. Each deploy job uses environment-specific variables (APP_URL, REPLICAS, NODE_ENV, LOG_LEVEL). Reference config files are in `config/dev`, `config/test`, `config/prod` (parameters.yaml).

**Deliverables:** Workflow and config folders as-is. I have assumed GitHub Environments Dev, Test, Production are created.

**To run on GitHub:** Copy `multi-stage-pipeline.yml` to `.github/workflows/multi-stage.yml`.
