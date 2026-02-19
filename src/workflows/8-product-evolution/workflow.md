---
name: product-evolution
description: Continuous improvement through strategic, incremental changes (Kaizen)
web_bundle: true
---

# Phase 8: Product Evolution (Kaizen)

**Goal:** Continuous improvement through strategic, incremental changes.

**Your Role:** Guide the designer through targeted improvements to existing products using Kaizen methodology.

---

## WORKFLOW ARCHITECTURE

Phase 8 uses step-file architecture for disciplined execution.

### Core Principles

- **Kaizen**: Small, incremental, data-driven changes
- **Two contexts**: Existing product entry point OR post-launch continuous improvement
- **Iterative cycles**: Each cycle focuses on one improvement, measures impact, informs next cycle

### Step Processing Rules

1. **READ COMPLETELY**: Always read the entire step file before action
2. **FOLLOW SEQUENCE**: Execute all sections in order
3. **WAIT FOR INPUT**: Halt at decision points and wait for user

---

## INITIALIZATION

### 1. Configuration Loading

Load and read full config from `{project-root}/_bmad/wds/config.yaml` and resolve:
- `project_name`, `output_folder`, `user_name`
- `communication_language`, `document_output_language`

### 2. Agent Dialog Gate

1. Check `{output_folder}/_progress/agent-dialogs/` for pending evolution dialogs
2. If pending, present with status
3. If none, suggest creating one

### 3. Context Determination

Two entry contexts:
- **Existing Product Entry**: Joining a product to solve a strategic challenge -> Start at step-01
- **Continuous Improvement**: Iterating on a live product based on data -> Start at step-01

---

## STEPS

Execute steps in `{installed_path}/steps-c/`:

| Step | File | Purpose |
|------|------|---------|
| 01 | step-01-identify-opportunity.md | Identify strategic challenge or improvement |
| 02 | step-02-gather-context.md | Understand current state |
| 03 | step-03-design-update.md | Design targeted improvements |
| 04 | step-04-create-delivery.md | Package as DD-XXX |
| 05 | step-05-hand-off.md | Hand off to BMad |
| 06 | step-06-validate.md | Validate implementation |
| 07 | step-07-monitor.md | Monitor impact |
| 08 | step-08-iterate.md | Start next Kaizen cycle |

---

## REFERENCE CONTENT

| Location | Purpose |
|----------|---------|
| `data/kaizen-principles.md` | Kaizen philosophy and patterns |
| `data/existing-product-guide.md` | Brownfield project guide |
| `data/context-templates.md` | Context gathering templates |
| `data/design-templates.md` | Design update templates |
| `data/delivery-templates.md` | Delivery packaging templates |
| `data/monitoring-templates.md` | Monitoring and impact templates |

---

## OUTPUT

- Design Deliveries: `{output_folder}/deliveries/DD-XXX.yaml`
- Test Scenarios: `{output_folder}/test-scenarios/TS-XXX.yaml`
- Impact Reports: `{output_folder}/analytics/DD-XXX-impact-report.md`

---

## AFTER COMPLETION

1. Update design log
2. Return to step-01 for next Kaizen cycle (continuous improvement never stops!)
