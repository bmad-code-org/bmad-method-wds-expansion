---
name: reverse-engineering
description: Analyze any software or website to extract specifications and design patterns
---

# [R] Reverse Engineering — Any Software/Site → Specs & Extraction

**Goal:** Analyze existing software or public websites to extract page specifications, design systems, and architectural understanding.

**When to use:** Need to understand an existing product (yours or public). Want to create WDS specifications from existing software. Competitive analysis through design extraction.

**Two modes:**
- **Internal:** Analyze your own codebase (source code access)
- **External:** Analyze any public website (browser-based, no source needed)

---

## INITIALIZATION

### Agent Dialog Gate

1. Check for pending reverse engineering dialogs
2. If none, suggest creating one with target description
3. Load dialog context

---

## STEPS

Execute steps in `{installed_path}/steps-r/`:

| Step | File | Purpose |
|------|------|---------|
| 01 | step-01-identify-target.md | Identify target software/website |
| 02 | step-02-explore-and-capture.md | Explore, screenshot, extract structure |
| 03 | step-03-generate-specs.md | Generate page specifications |
| 04 | step-04-extract-design-system.md | Extract design system (colors, typography, components) |

---

## AFTER COMPLETION

1. Update design log with extracted artifacts
2. Suggest next action (feed specs to Phase 4? continue analysis?)
3. Return to activity menu
