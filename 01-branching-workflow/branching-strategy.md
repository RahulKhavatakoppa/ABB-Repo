# Branching Strategy (Task 1)

I have used a simple branch model for this assessment so PRs and code review are clear.

## Branch model

- **main** – Production-ready code. I update it only via merged PRs and keep it protected.
- **develop** – Integration branch. My feature branches merge here first; then I promote to main for release.
- **feature/*** – One branch per feature or task (e.g. `feature/ci-pipeline`). I branch from develop and merge back via PR.

## Workflow I followed

1. Create feature branch from develop: `git checkout develop && git pull && git checkout -b feature/your-task`
2. Commit with clear messages (e.g. "Add CI workflow", "Fix env var in CD").
3. Push and open PR into **develop** (or main for hotfixes). I add a short description and link to the task.
4. Review – I aim for at least one approval. The reviewer checks logic, no secrets in repo, and consistency with existing style.
5. Squash merge, delete branch. I tag releases from main when needed.

## PR and review

- **PR title:** I keep it short and descriptive (e.g. "Add Terraform AKS with Azure Monitor").
- **Review checklist:** Code matches description; no secrets/sensitive data; pipelines and configs valid; no unnecessary files committed.
