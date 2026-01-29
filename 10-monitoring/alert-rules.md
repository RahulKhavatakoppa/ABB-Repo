# Azure Monitor Alert Rules (Task 10)

I have documented below how to configure these in Azure Portal: **Monitor → Alerts → Create → Alert rule**.

## CPU threshold

| Setting | Value |
|--------|--------|
| Scope | AKS cluster or Log Analytics workspace (Container insights) |
| Condition | Signal = Container CPU or Node CPU |
| Threshold | e.g. > 80% for 5 minutes |
| Action group | Email or webhook for notifications |

## Memory threshold

| Setting | Value |
|--------|--------|
| Scope | Same as above (AKS / workspace) |
| Condition | Signal = Container Memory or Node memory working set |
| Threshold | e.g. > 85% for 5 minutes |
| Action group | Same as CPU |

## Steps in Portal

1. Monitor → Alerts → Create → Alert rule.
2. Select scope: your AKS cluster or the Log Analytics workspace used for Container insights.
3. Condition: choose "Container CPU" or "Node CPU", set threshold (e.g. 80%), 5 min.
4. Create or select an action group (e.g. email).
5. Name the rule (e.g. "AKS – High CPU") and create. Repeat for memory.
