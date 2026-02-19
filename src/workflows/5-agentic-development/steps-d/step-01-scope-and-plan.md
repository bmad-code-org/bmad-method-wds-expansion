# Step 01: Scope and Plan

**Goal:** Read the approved spec, extract every deliverable, and create a sequenced implementation plan.

---

## Process

### 1. Read the Approved Specification

Open the approved spec (page spec, feature spec, or component spec) and read it end to end. Do not skim. Note:

- Every page, component, and feature described
- All properties, states, and variants for each component
- Responsive behavior and breakpoints
- Data requirements (APIs, models, mock data)
- Acceptance criteria (these are your definition of done)
- Design tokens and design system references

### 2. Inventory All Work Items

Create a flat list of everything that needs to be built. Be specific — not "build the form" but each field, validation rule, and submit behavior. Include:

- Pages / routes
- Components (new and modified)
- Data models or API integrations
- State management additions
- Styling / responsive work
- Tests to write

### 3. Identify Dependencies and Determine Order

Map which items depend on which. Common patterns:

- Shared components before pages that use them
- Data layer before UI that consumes it
- Layout / structure before content sections
- Base styles / tokens before component styles

Order the work so you never build something before its dependencies exist.

### 4. Estimate Effort

For each work item, note relative size (small / medium / large). This is not for time tracking — it is for spotting items that are too large and should be broken down further. Any "large" item should be split into sub-tasks.

### 5. Create the Branch

Create a feature branch from the appropriate base branch. Use a descriptive name that ties to the spec (e.g., `feature/booking-page`, `feature/user-profile-card`).

### 6. List All Acceptance Criteria

Extract every acceptance criterion from the spec into a standalone checklist. This checklist will be used in Step 04 (Verify) to confirm completion. Format:

```markdown
## Acceptance Criteria

- [ ] Criterion from spec
- [ ] Criterion from spec
- [ ] ...
```

Record the inventory, implementation order, and acceptance criteria in the dialog file.

---

## Checklist

- [ ] Spec read in full — no sections skipped
- [ ] All pages, components, and features inventoried
- [ ] Dependencies mapped, implementation order defined
- [ ] Large items broken into sub-tasks
- [ ] Feature branch created
- [ ] All acceptance criteria extracted into a checklist
- [ ] Plan documented in dialog file

---

## Next Step

Continue to **step-02-setup-environment.md**
