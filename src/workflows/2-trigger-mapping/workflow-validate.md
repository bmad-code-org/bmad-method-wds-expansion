---
name: trigger-mapping-validate
description: Validate Trigger Map documents against WDS quality standards
web_bundle: true
validateWorkflow: './steps-v/step-01-target-group-coverage.md'
---

# Validate Trigger Map

**Goal:** Systematically validate all Trigger Map documents against WDS quality standards and generate an actionable report.

**Your Role:** Validation specialist reviewing trigger map completeness, consistency, and strategic alignment.

---

## INITIALIZATION SEQUENCE

### 1. Configuration Loading

Load and read full config from `{project-root}/_bmad/wds/config.yaml` and resolve:

- `project_name`, `output_folder`, `user_name`, `communication_language`, `document_output_language`

### 2. Load Trigger Map Data

Load all trigger map documents from `{output_folder}/B-Trigger-Map/`.

### 3. Route to Validation

Load, read completely, and execute `{validateWorkflow}` (steps-v/step-01-target-group-coverage.md)

Auto-proceed through all validation steps. Present final report at the end.
