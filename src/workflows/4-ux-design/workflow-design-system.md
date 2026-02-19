# [M] Manage Design System — Define and Update Components

**Goal:** Define, update, and review design system components used across page specifications.

**When to use:** When the user needs to create new components, update existing ones, or review the design system for consistency.

---

## Entry

Load design system from `{output_folder}/D-UX-Design/design-system/` (if exists).

## Steps

Execute steps in `{installed_path}/steps-m/`:

| Step | File | Purpose |
|------|------|---------|
| 01 | step-01-review-current.md | Review existing design system state |
| 02 | step-02-define-component.md | Define or update a component |
| 03 | step-03-validate-usage.md | Check component usage across specs |

**Reference data:**
- `{installed_path}/data/object-types/` — component type definitions and templates
- `{installed_path}/data/modular-architecture/` — three-tier architecture guide
- `{installed_path}/data/guides/TRANSLATION-ORGANIZATION-GUIDE.md` — content organization

---

## After Completion

Design system updated. Return to scenario dashboard or proceed to:
- **[V] Validate** — audit design system consistency
- **[P] Specify** — apply updated components to page specs
