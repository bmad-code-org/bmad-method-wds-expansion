---
name: evolution
description: Add features to existing products through targeted changes
---

# [E] Evolution — Add Features to Existing Product

**Goal:** Incrementally add features to an existing product with minimal disruption.

**When to use:** Existing product needs new functionality. Changes should be targeted, not a complete rewrite.

---

## INITIALIZATION

### Agent Dialog Gate

1. Check for pending evolution dialogs
2. If none, suggest creating one
3. Load dialog context

---

## STEPS

Execute steps in `{installed_path}/steps-e/`:

| Step | File | Purpose |
|------|------|---------|
| 01 | step-01-scope-change.md | Define what changes vs what stays |
| 02 | step-02-analyze-impact.md | Analyze impact on existing code |
| 03 | step-03-plan-implementation.md | Plan incremental implementation |
| 04 | step-04-implement.md | Implement changes |
| 05 | step-05-verify-and-document.md | Verify, regression check, document |

---

## AFTER COMPLETION

1. Update design log
2. Suggest next action
3. Return to activity menu
