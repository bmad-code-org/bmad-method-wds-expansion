# [P] Specify — Detail a Page Specification

**Goal:** Create a complete, implementation-ready page specification with layout, components, content, interactions, and states.

**When to use:** When a page structure exists (from Suggest, Dream, or Sketch) and needs full specification detail.

---

## Entry

Load page context from existing page structure in `{output_folder}/D-UX-Design/`.

## Steps

Execute steps in `{installed_path}/steps-p/`:

| Step | File | Purpose |
|------|------|---------|
| 01 | step-01-page-basics.md | Page metadata, purpose, entry points |
| 02 | step-02-layout-sections.md | Section layout and ordering |
| 03 | step-03-components-objects.md | Component/object definitions per section |
| 04 | step-04-content-languages.md | Content text and translations |
| 05 | step-05-interactions.md | User interactions and behaviors |
| 06 | step-06-states.md | Loading, error, empty states |
| 07 | step-07-validation.md | Form validation and constraints |
| 08 | step-08-generate-spec.md | Generate final specification document |

**Reference data:**
- `{installed_path}/data/object-types/` — component types and templates
- `{installed_path}/data/guides/WDS-SPECIFICATION-PATTERN.md` — specification format
- `{installed_path}/data/modular-architecture/` — three-tier architecture
- `{installed_path}/templates/page-specification.template.md` — output template

---

## After Completion

Page specification is complete. Proceed to:
- **[V] Validate** — audit the specification
- Return to scenario dashboard for next page
- **[W] Visual Design** — create visual mockups
