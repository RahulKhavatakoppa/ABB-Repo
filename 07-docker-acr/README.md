# Task 7 – Docker & ACR

**For reviewers:** In this folder I have kept the `Dockerfile` (multi-stage, node:18-alpine).

**Build:** From repo root: `docker build -t devops-assessment-app:latest -f 07-docker-acr/Dockerfile ./sample-app`.  
**ACR:** `az acr login --name YOUR_ACR`; tag and push the image to your registry.
