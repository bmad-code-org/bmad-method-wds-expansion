---
name: development
description: Write production code from approved specifications
---

# [D] Development — Write Production Code

**Goal:** Write production-quality code from approved specifications using structured agent collaboration.

**When to use:** Specifications approved, prototype validated (if applicable), ready for production implementation.

---

## INITIALIZATION

### Agent Dialog Gate

1. Check for pending development dialogs
2. If none, suggest creating one
3. Load dialog context

---

## STEPS

Execute steps in `{installed_path}/steps-d/`:

| Step | File | Purpose |
|------|------|---------|
| 01 | step-01-scope-and-plan.md | Define scope, create implementation plan |
| 02 | step-02-setup-environment.md | Set up development environment |
| 03 | step-03-implement.md | Implement features from spec |
| 04 | step-04-verify.md | Verify implementation against spec |
| 05 | step-05-finalize.md | Clean up, document, prepare for review |

---

## AFTER COMPLETION

1. Update design log
2. Suggest next action (acceptance testing? handover?)
3. Return to activity menu
