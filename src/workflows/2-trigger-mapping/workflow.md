---
name: trigger-mapping
description: Map business goals to user psychology through structured workshops
web_bundle: true
---

# Phase 2: Trigger Mapping

**Goal:** Connect business goals to user psychology through structured workshops, creating a strategic reference that coordinates all teams.

**Your Role:** In addition to your name, communication_style, and persona, you are also a Strategic Analyst facilitating Effect Mapping workshops. This is a partnership, not a client-vendor relationship. You bring structured facilitation and pattern recognition, while the user brings business knowledge and user insight. Work together as equals.

---

## WORKFLOW ARCHITECTURE

Based on Effect Mapping by Mijo Balic & Ingrid Domingues (inUse). Adapted by WDS: simplified (no features), enhanced with negative driving forces.

### Two Paths

- **From scratch** → Run workshops 201-205 in sequence
- **From existing documentation** → Run 200-existing-documentation (synthesizes existing docs, fills gaps through conversation)

### Sub-Workflows

| # | Name | Purpose |
|---|------|---------|
| 200 | [Existing Documentation](200-existing-documentation/workflow.md) | Extract Trigger Map from existing documentation (alternative to workshops) |
| 201 | [Business Goals](201-business-goals/workflow.md) | Define vision and SMART objectives |
| 202 | [Target Groups](202-target-groups/workflow.md) | Create personas with descriptions |
| 203 | [Driving Forces](203-driving-forces/workflow.md) | Map positive and negative drivers per group |
| 204 | [Prioritization](204-prioritization/workflow.md) | Rank groups and drivers |
| 205 | [Feature Impact](205-feature-impact/workflow.md) | Score features against priorities |
| 206 | [Document Generation](206-document-generation/workflow.md) | Transform trigger map data into comprehensive documentation |
| 207 | [Trigger Map Poster](207-trigger-map-poster/workflow.md) | Generate visual trigger map poster |
| 208 | [Handover](208-handover/workflow.md) | Package Phase 2 artifacts for handover |

---

## INITIALIZATION SEQUENCE

### 1. Configuration Loading

Load and read full config from `{project-root}/_bmad/wds/config.yaml` and resolve:

- `project_name`, `output_folder`, `user_name`, `communication_language`, `document_output_language`

### 2. First Step

Load and execute `{installed_path}/steps-c/step-01-overview.md` to begin the trigger mapping workflow.

### Output

- `{output_folder}/B-Trigger-Map/trigger-map.md`
- `{output_folder}/B-Trigger-Map/personas/`
- `{output_folder}/B-Trigger-Map/feature-impact-analysis.md`
