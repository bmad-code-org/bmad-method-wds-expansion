# Step 5: Identify Business Customers (B2B)

## Goal

Help user define their ideal business customer profile.

## Key Elements

Business customer profile determines who buys the product and influences purchasing decisions.

## Instructions

If business model is B2B or Both, guide user to define their ideal business customer. Ask about company size, industry, decision-making structure, and budget authority. Also identify buying roles (buyer vs. user).


## Agent Dialog Update

**Mandatory:** Append to `dialog/decisions.md` if key decisions were made.

**Record:**
- Business customer definition (B2B contexts)
- Buyer vs end-user distinction
- Business customer needs and decision criteria

**Then:** Mark Step 6 complete in `dialog/progress-tracker.md` progress tracker

## Next Step

After identifying business customers, proceed to step-07-target-users.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted:
  ['step-01-init.md', 'step-02-vision.md', 'step-03-positioning.md', 'step-04-create-vtc.md', 'step-05-business-model.md', 'step-06-business-customers.md']
business_customer_profile: '[captured business customer profile]'
buying_roles: '[captured buying roles]'
```
