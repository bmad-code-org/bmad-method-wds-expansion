# 2026-02-10 BMad V6 Integration

## Meta

| Field | Value |
|-------|-------|
| **Date** | 2026-02-10 |
| **Agent** | Saga (WDS Analyst) |
| **Feature** | BMad V6 Module Integration |
| **Specification** | [BMad module-help.csv format](https://github.com/bmad-code-org/BMAD-METHOD/blob/main/src/bmm/module-help.csv) |
| **Status** | In Progress |

---

## Purpose

Integrate WDS module into BMad Method v6 ecosystem by creating the required `module-help.csv` file, updating configuration, and removing deprecated files. This enables the new `/bmad-help` system to guide users through WDS workflows.

---

## About This Dialog

This dialog **bridges the gap** between BMad's requirements and WDS module structure.

```
┌─────────────────────┐         ┌─────────────────────┐         ┌─────────────────────┐
│   BMAD REQUIREMENTS │         │    THIS DIALOG      │         │   WDS MODULE        │
│                     │         │                     │         │                     │
│ • CSV format        │────────▶│ • Phase mapping     │────────▶│ • module-help.csv   │
│ • Help system       │         │ • Workflow codes    │         │ • module.yaml       │
│ • Module structure  │         │ • Decisions         │         │ • Cleanup           │
└─────────────────────┘         └─────────────────────┘         └─────────────────────┘
     BMad v6 Spec                   Navigation                    Implementation
                                     Layer
```

---

## Where to Find What

| I need... | Go to... |
|-----------|----------|
| BMad CSV format | [BMM module-help.csv](https://github.com/bmad-code-org/BMAD-METHOD/blob/main/src/bmm/module-help.csv) |
| WDS workflow definitions | `src/workflows/*/workflow.yaml` |
| Agent definitions | `src/agents/*.agent.yaml` |
| Current module config | `src/module.yaml` |
| Step-by-step instructions | [steps/](steps/) folder |
| Decision log | This file → [Decisions Made](#decisions-made) |

---

## Setup Context

### Project Context

- **Project:** BMad Method WDS Expansion
- **Module Code:** `wds`
- **Repository:** `c:\dev\WDS\bmad-method-wds-expansion`

### Relevant Files

| File | Purpose |
|------|---------|
| `src/module-help.csv` | Target — help system integration (to create) |
| `src/module.yaml` | Module configuration (to update) |
| `src/agents/*.agent.yaml` | Agent definitions with workflow menus |
| `src/workflows/*/workflow.yaml` | Workflow definitions |
| `src/README.md` | To remove (docs only in docs/) |
| `src/workflows/workflow-status/` | To remove (bmad-help handles this) |
| `src/workflows/workflow-init/` | To remove (bmad-help handles this) |
| `src/workflows/4-ux-design/excalidraw-integration/` | To remove |

### BMad Feedback (2026-02-07)

From Discord conversation with BMadCode:
1. Need `module-help.csv` at `src/` root — drives new help system
2. Remove `src/README.md` — docs only in docs folder
3. Remove `workflow-status` and `workflow-init` — bmad-help handles initialization
4. Remove excalidraw — dropped from main project
5. Map WDS phases into BMad's phase system or create custom `1-name` phases

---

## Scope

### In Scope

- Create `src/module-help.csv` with WDS workflows
- Update `src/module.yaml` design_system_mode options
- Remove deprecated files and folders
- Document phase mapping decisions

### Out of Scope

- Course content development (separate dialog)
- Workflow file modifications
- Agent definition changes beyond menu updates

### Dependencies

- BMad v6 format specification (available via GitHub)
- Understanding of WDS phase structure (documented in decisions)

---

## Decisions Made

### Phase Structure

```
0-wds-pitch       →  AS-Alignment
1-wds-strategy    →  PB-Project Brief → TM-Trigger Map → PR-Platform Requirements
2-wds-ux-design   →  UX-UX & Visual Design
3-wds-handoff     →  DD-Design Delivery

anytime           →  ST-Testing
                     AD-Agentic Development
                     OD-Ongoing Development
```

### Workflow Codes (Self-Documenting)

| Code | Full Reference | Agent | Phase |
|------|----------------|-------|-------|
| AS | AS-Alignment | analyst | 0-wds-pitch |
| PB | PB-Project Brief | analyst | 1-wds-strategy |
| TM | TM-Trigger Map | analyst | 1-wds-strategy |
| PR | PR-Platform Requirements | analyst | 1-wds-strategy |
| UX | UX-UX & Visual Design | ux-designer | 2-wds-ux-design |
| DD | DD-Design Delivery | pm | 3-wds-handoff |
| ST | ST-Testing | ux-designer | anytime |
| AD | AD-Agentic Development | ux-designer | anytime |
| OD | OD-Ongoing Development | pm | anytime |

### Key Decisions

1. **PR moved to Strategy** — Saga owns it, reframed as "strategic boundaries"
2. **Design System = Config Mode** — Not a workflow, set at project setup
3. **BP, RS, DP removed** — These are BMM/Core workflows, not WDS-specific
4. **Self-documenting codes** — "PB-Project Brief" not just "PB"

### Design System Modes

| # | Mode | Description |
|---|------|-------------|
| 1 | None | Ad-hoc styling, no reusable components |
| 2 | Building | System grows from design work |
| 3 | Component Library | External (shadcn, Radix) + your branding |
| 4 | Existing | Your previous system from earlier projects |

---

## Steps Overview

| # | Step | Status | Notes |
|---|------|--------|-------|
| 1 | [Finalize module-help.csv](steps/01-finalize-csv.md) | ✅ | 15 workflows mapped to 4 phases |
| 2 | [Update module.yaml](steps/02-update-module-yaml.md) | ✅ | 4 design_system_mode options |
| 3 | [Remove deprecated files](steps/03-remove-deprecated.md) | ✅ | Removed README, workflow-status, workflow-init, excalidraw |
| 4 | [Verify integration](steps/04-verify-integration.md) | 🔲 | Test with bmad-help |

**Status Legend:** 🔲 Not Started | 🔄 In Progress | ✅ Complete | ⏸️ Blocked | ❌ Skipped

---

## Progress Log

### 2026-02-10

- Created dialog structure
- Researched BMad CSV format from GitHub
- Mapped WDS phases to BMad system
- Made key decisions on PR placement, design system modes, workflow codes
- Created initial draft of module-help.csv (needs refinement)

---

## Spec Changes Discovered

| Issue | Resolution | Spec Updated? |
|-------|------------|---------------|
| Design system was listed as workflow | Changed to configuration mode | 🔲 Update module.yaml |
| PR was in Idunn's domain | Moved to Saga's domain | 🔲 Update agent definitions |

---

## Learnings

- BMad's help system uses CSV to enable cross-module guidance
- At install time, all module CSVs merge into unified help
- Phase naming with `1-name` prefix creates custom phases
- "anytime" phase for repeatable workflows

---

_Created using WDS Agent Dialog Workflow_
