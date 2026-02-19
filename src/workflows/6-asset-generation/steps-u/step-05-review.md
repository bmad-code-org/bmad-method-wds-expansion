# Step 05: Review and Iterate

**Goal:** Review all generated UI elements for design system compliance, consistency, and completeness.

---

## Actions

### 1. Present Component Library

Display generated components grouped by type:
- Show all variants side by side
- Show all states for each variant
- Compare hover/focus/active transitions visually

### 2. Design System Compliance

For each component, verify:
- [ ] Colors match exact token values
- [ ] Typography matches scale
- [ ] Border radius matches tokens
- [ ] Shadows match elevation tokens
- [ ] Spacing matches padding/margin tokens
- [ ] Focus ring follows accessibility standard

### 3. Cross-Component Consistency

Verify across the full set:
- [ ] Visual weight feels balanced (buttons don't overpower inputs)
- [ ] Color usage is consistent (same primary blue everywhere)
- [ ] Radius values are uniform (all `md` radius components match)
- [ ] Shadow levels are distinguishable
- [ ] Disabled states all follow the same pattern

### 4. Accessibility Check

- [ ] Color contrast meets WCAG AA (4.5:1 for text, 3:1 for large text)
- [ ] Focus states are clearly visible
- [ ] Disabled states are distinguishable but clearly inactive

### 5. User Review

```
[A] Approve all           — Save complete component library
[R] Regenerate [component]— Redo specific components
[T] Token adjust          — Update design token and regenerate affected
[C] Compare               — Side-by-side comparison view
```

### 6. Save Approved Set

Save to `{output_folder}/E-Assets/ui-elements/`:
- Organized by component type: `buttons/`, `inputs/`, `cards/`, etc.
- `component-library-summary.md` — index with notes

### 7. Update Design Log

Record:
- Components generated: [count types] x [count variants] x [count states]
- Compliance: [pass/issues]
- Accessibility: [pass/issues]

---

**Complete.** → [M] Return to Activity Menu
