# 2026-02-10 WDS Course Development

## Meta

| Field | Value |
|-------|-------|
| **Date** | 2026-02-10 |
| **Agent** | Saga (WDS Analyst) |
| **Feature** | WDS Course: From Designer to Linchpin |
| **Specification** | [WDS workflows and methodology](../../src/workflows/) |
| **Status** | In Progress |

---

## Purpose

Create a compelling course that helps designers **feel** the brilliance of WDS. Transform the existing scattered tutorials into a cohesive 18-module journey that makes designers irreplaceable in the AI era.

---

## About This Dialog

This dialog **bridges the gap** between WDS methodology and learnable content.

```
┌─────────────────────┐         ┌─────────────────────┐         ┌─────────────────────┐
│   WDS METHODOLOGY   │         │    THIS DIALOG      │         │   COURSE CONTENT    │
│                     │         │                     │         │                     │
│ • Workflows         │────────▶│ • Module structure  │────────▶│ • 14 modules        │
│ • Agent guides      │         │ • Tone decisions    │         │ • Tutorials         │
│ • Templates         │         │ • Content mapping   │         │ • Practice files    │
└─────────────────────┘         └─────────────────────┘         └─────────────────────┘
     Source Material                Navigation                    Deliverable
                                     Layer
```

---

## Where to Find What

| I need... | Go to... |
|-----------|----------|
| Course draft | [COURSE-DRAFT-v2.md](../../learn-wds/COURSE-DRAFT-v2.md) |
| Workflow definitions | `src/workflows/*/workflow.yaml` |
| Agent presentations | `src/data/presentations/` |
| Existing tutorials | `docs/learn-wds/module-*/` |
| Examples | `docs/examples/` |
| Step-by-step instructions | [steps/](steps/) folder |

---

## Setup Context

### Project Context

- **Project:** WDS Course Development
- **Target:** Designers who want to become indispensable
- **Tone:** Brief, snappy, philosophy-driven
- **Repository:** `c:\dev\WDS\bmad-method-wds-expansion`

### Relevant Files

| File | Purpose |
|------|---------|
| `docs/learn-wds/COURSE-DRAFT-v2.md` | Master course draft |
| `docs/learn-wds/00-course-overview.md` | Current (outdated) overview |
| `docs/learn-wds/module-*/` | Existing module folders (mismatched) |
| `src/workflows/` | Source content for tutorials |
| `src/data/presentations/` | Agent introductions |

### Vision

> "The design IS the specification. The specification IS the product. The code is just the printout."

**Future Feature:** "Dream mode" where agent generates each step based on Project Brief, user picks what they like.

---

## Scope

### In Scope

- Create 14-module course structure
- Write module overview content
- Create tutorial files for practical modules
- Fix broken links in existing content
- Remove deprecated module folders

### Out of Scope

- Video production
- NotebookLM audio generation
- Interactive exercises
- BMad integration (separate dialog)

### Dependencies

- Phase structure decisions (from BMad integration dialog)
- Workflow content (exists in src/workflows)

---

## Course Structure

### Foundation
| # | Module | Time | Focus |
|---|--------|------|-------|
| 01 | The Paradigm Shift | 30m | Why this changes everything |
| 02 | Installation & Setup | 20m | Get running fast |

### Strategy Phase (Saga)
| # | Module | Time | Focus |
|---|--------|------|-------|
| 03 | Alignment | 30m | Optional — for consultants |
| 04 | Project Brief | 45m | Your North Star |
| 05 | Trigger Mapping | 60m | The secret weapon |
| 06 | Platform Requirements | 30m | Know your boundaries |

### Design Phase (Freya)
| # | Module | Time | Focus |
|---|--------|------|-------|
| 07 | Initialize Scenarios | 30m | Entry point to design |
| 08 | Sketch & Specify | 60m | The core loop |
| 09 | Design System Modes | 30m | Four modes explained |
| 10 | Validate Specifications | 20m | Quality gate |

### Handoff Phase (Idunn)
| # | Module | Time | Focus |
|---|--------|------|-------|
| 11 | Design Delivery | 30m | Package for development |

### Mastery
| # | Module | Time | Focus |
|---|--------|------|-------|
| 12 | Testing | 30m | Verify intent matches reality |
| 13 | Agentic Development | 45m | Build iteratively with AI |
| 14 | Continuous Improvement | 20m | WDS for living products |

**Total: ~8 hours**

---

## Steps Overview

| # | Step | Status | Notes |
|---|------|--------|-------|
| 1 | [Review course draft](steps/01-review-draft.md) | ✅ | Structure finalized |
| 2 | [Refine based on feedback](steps/02-refine-content.md) | ✅ | 18 modules defined |
| 3 | [Create module folders](steps/03-create-folders.md) | ✅ | 18 module folders |
| 4 | [Generate module files](steps/04-generate-modules.md) | ✅ | All 18 modules written |
| 5 | [Create tutorial files](steps/05-create-tutorials.md) | 🔲 | Future enhancement |
| 6 | [Update course overview](steps/06-update-overview.md) | ✅ | New 18-module structure |
| 7 | [Remove old modules](steps/07-cleanup.md) | ✅ | 6 deprecated folders removed |

**Status Legend:** 🔲 Not Started | 🔄 In Progress | ✅ Complete | ⏸️ Blocked | ❌ Skipped

---

## Progress Log

### 2026-02-10

- Created dialog structure
- Generated complete course draft (COURSE-DRAFT-v2.md)
- Refined to 18-module structure based on Marten's feedback
- Created all 18 module folders and overview files (module-01 through module-18)
- Updated 00-course-overview.md with new structure
- Removed 6 deprecated module folders (module-05-map-triggers-outcomes, module-06-platform-architecture, module-08-initialize-scenario, module-09-design-system, module-10-design-delivery, module-12-conceptual-specs)
- Awaiting Marten's review

---

## Old Course Issues (Being Replaced)

The old `docs/learn-wds/` structure had:

| Issue | Impact |
|-------|--------|
| 17 modules with mismatched numbering | Confusing navigation |
| Missing folders (module-09-sketch-interfaces) | 404 errors reported by users |
| Duplicate module numbers (two 05s) | Broken links |
| Names don't match folder names | Lost users |

**Decision:** Replace entirely with new v2 structure.

---

## Spec Changes Discovered

_None yet._

---

## Learnings

- Users can't "feel" WDS from current docs — need emotional hook
- Course should lead with transformation, not features
- Snappy tone works better than comprehensive coverage
- Philosophy before procedure

---

_Created using WDS Agent Dialog Workflow_
