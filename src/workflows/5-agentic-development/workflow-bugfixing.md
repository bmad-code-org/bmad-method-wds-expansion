---
name: bugfixing
description: Fix bugs in existing code through structured investigation and verification
---

# [F] Bugfixing — Fix Bugs in Existing Code

**Goal:** Systematically investigate, fix, and verify bugs with minimal side effects.

**When to use:** A bug has been reported or discovered in existing code.

---

## INITIALIZATION

### Agent Dialog Gate

1. Check for pending bugfix dialogs
2. If none, suggest creating one with bug details
3. Load dialog context

---

## STEPS

Execute steps in `{installed_path}/steps-f/`:

| Step | File | Purpose |
|------|------|---------|
| 01 | step-01-reproduce.md | Reproduce and document the bug |
| 02 | step-02-investigate.md | Investigate root cause |
| 03 | step-03-fix.md | Implement the fix |
| 04 | step-04-verify.md | Verify fix, check regressions |
| 05 | step-05-document.md | Document fix, update tests |

---

## AFTER COMPLETION

1. Update design log
2. Suggest next action
3. Return to activity menu
