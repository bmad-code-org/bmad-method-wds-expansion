# Step 02: Asset Inventory

**Goal:** Create a complete inventory of UI elements to generate, organized by component type and state.

---

## Actions

### 1. List Component Types

| # | Component | Variants | States | Total Assets |
|---|-----------|----------|--------|-------------|
| 1 | Button | primary, secondary, ghost, destructive | default, hover, focus, active, disabled | 20 |
| 2 | Input | text, email, password, search | default, focus, filled, error, disabled | 20 |
| 3 | Card | content, product, feature | default, hover | 6 |
| ... | ... | ... | ... | ... |

### 2. Prioritize

```
Priority levels:
[H] High   — Used on every page (buttons, inputs, navigation)
[M] Medium — Used on multiple pages (cards, alerts)
[L] Low    — Used on specific pages (specialized components)
```

### 3. Check Existing Assets

Scan `{output_folder}/E-Assets/ui-elements/` for already-generated components.

### 4. Present Inventory

```
UI Element Inventory:
- Component types: [count]
- Total variants x states: [count] assets
- Already generated: [count]
- Need generation: [count]

Generate scope:
[A] All components      — Full component library
[H] High priority only  — Core components first
[S] Select specific     — Pick components to generate
```

---

**Next:** → step-03-select-style.md
