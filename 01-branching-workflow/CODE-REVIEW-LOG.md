# Code Review Log (Task 1)

Below are sample code review entries for this repo. I have used this format to show how I run PRs and reviews.

---

## Review 1 – CI Pipeline

| Field | Value |
|-------|--------|
| PR | #2 – Add CI workflow |
| Author | Rahul |
| Reviewer | Self / peer |
| Date | 2025-01-XX |

**Summary:** I added `ci.yml` in 02-ci-pipeline – build, test, and upload artifact for the sample-app.

**Comments from reviewer:** Pipeline structure OK; tests run before publish; no hardcoded secrets. **Outcome:** Approved.

---

## Review 2 – Terraform AKS

| Field | Value |
|-------|--------|
| PR | #5 – Add Terraform for AKS with Azure Monitor |
| Author | Rahul |
| Reviewer | Self / peer |
| Date | 2025-01-XX |

**Summary:** I added Terraform scripts to provision AKS and enable Azure Monitor (Log Analytics).

**Comments from reviewer:** Variables and main.tf organised; Log Analytics linked to AKS; tfvars.example added for others. **Outcome:** Approved.

---

I have added more entries as I completed PRs.
