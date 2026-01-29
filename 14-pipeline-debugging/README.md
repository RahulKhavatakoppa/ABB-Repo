# Task 14 – Pipeline Debugging

**For reviewers:** In this folder I have kept `pipeline-debugging.yml` (the fixed workflow) and `pipeline-before-fail.yml` (example of the failing pipeline – Azure DevOps style; script expected APP_ENV but only AppEnv was set).

**Problem:** Deploy failed because APP_ENV was not set. **Fix I applied:** Set `env.APP_ENV` at the job (or workflow) level in the workflow so the deploy step receives it.

**To run on GitHub:** Copy `pipeline-debugging.yml` to `.github/workflows/pipeline-debugging.yml`.
