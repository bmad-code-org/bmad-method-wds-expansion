---
name: scenarios-validate
description: Validate UX scenario outlines against WDS quality standards
web_bundle: true
validateWorkflow: './steps-v/step-01-scenario-coverage.md'
---

# Validate UX Scenarios

**Goal:** Systematically validate all scenario outlines against WDS quality standards and generate an actionable report.

**Your Role:** Validation specialist reviewing scenario quality, coverage, and consistency.

---

## INITIALIZATION SEQUENCE

### 1. Configuration Loading

Load and read full config from `{project-root}/_bmad/wds/config.yaml` and resolve:

- `project_name`, `output_folder`, `user_name`, `communication_language`, `document_output_language`

### 2. Load Scenario Files

Load all scenario files from `{output_folder}/C-UX-Scenarios/` and the scenario index `00-ux-scenarios.md`.

### 3. Route to Validation

Load, read completely, and execute `{validateWorkflow}` (steps-v/step-01-scenario-coverage.md)

Auto-proceed through all validation steps. Present final report at the end.
