# Cost Optimization (Task 16)

Using Azure Advisor and common best practices, I have summarised below cost-saving opportunities for typical Azure resources (AKS, VMs, storage). Replace "given resources" with your actual resources when you run the assessment.

**Right-size underutilized VMs / node pools**  
Review Azure Monitor for AKS node CPU and memory (e.g. last 7–14 days). If nodes are consistently under 20–30%, reduce node count or use a smaller SKU (e.g. Standard_B2s). Enable cluster autoscaler so node count scales down when demand is low. For dev/test, use 1–2 nodes and a low min count. *Impact: 20–40% on compute for underutilized clusters.*

**Reserved capacity**  
For production AKS node pools or VMs that run 24/7, purchase 1-year or 3-year reserved capacity for the VM series you use. Apply the reservation to the subscription or resource group. *Impact: up to ~30–50% on reserved compute vs pay-as-you-go.*

**Unattached or underused disks**  
List disks not attached to any VM (Azure Portal → Disks) and delete those no longer needed. For AKS, avoid unused PVCs; use Standard HDD where performance allows.

**Storage tier and lifecycle**  
Enable blob lifecycle management to move data to Cool or Archive after X days. Reduce Log Analytics retention where possible; export to cheaper storage for long-term retention. *Impact: 40–60% on storage for rarely accessed data.*

**Networking and cleanup**  
Reduce unnecessary egress; deallocate unused public IPs and load balancers. Use Azure Advisor "Cost" to find and remove stopped VMs, unused clusters, and orphaned resources. Tag resources and set budgets for visibility.
