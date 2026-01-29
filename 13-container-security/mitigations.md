# Container Vulnerabilities – Mitigations (Task 13)

Based on typical container scan findings, I have summarised below the mitigation steps I would apply.

**Base image CVEs**  
Rebuild the image regularly with `docker build --pull` so you pick up the latest base. Pin to a digest once a patched version is available: `FROM node:18-alpine@sha256:...`. Run the scanner in CI and fail the pipeline on Critical/High.

**Application dependencies (npm)**  
Run `npm audit` and `npm audit fix` in CI or in the Docker build. Upgrade or replace packages for remaining issues. Use a lockfile so builds are reproducible.

**Non-root user and minimal image**  
Use `USER node` (or a dedicated UID) in the Dockerfile. Use a minimal base (Alpine) and avoid extra packages; use a multi-stage build to drop build tools.

**Registry and pipeline**  
Enable Microsoft Defender for Containers on ACR (or equivalent). In the pipeline, run Trivy or Snyk on the built image and fail on Critical/High (or block deployment until approved).
