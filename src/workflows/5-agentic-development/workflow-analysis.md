---
name: analysis
description: Understand an existing codebase through systematic exploration
---

# [A] Analysis — Understand Your Own Codebase

**Goal:** Systematically explore and document an existing codebase's architecture, patterns, and dependencies.

**When to use:** Joining an existing project. Need to understand code before making changes. Architecture documentation is missing or outdated.

---

## INITIALIZATION

### Agent Dialog Gate

1. Check for pending analysis dialogs
2. If none, suggest creating one with analysis focus
3. Load dialog context

---

## STEPS

Execute steps in `{installed_path}/steps-a/`:

| Step | File | Purpose |
|------|------|---------|
| 01 | step-01-define-question.md | Define what you want to understand |
| 02 | step-02-scan-codebase.md | Scan and explore the codebase |
| 03 | step-03-map-architecture.md | Map architecture, dependencies, patterns |
| 04 | step-04-document-findings.md | Document findings and recommendations |

---

## AFTER COMPLETION

1. Update design log
2. Suggest next action
3. Return to activity menu
