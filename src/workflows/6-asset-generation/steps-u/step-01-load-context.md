# Step 01: Load Context

**Goal:** Load the design system components, page specifications, and visual direction needed to generate UI element assets.

---

## Actions

### 1. Load Design System Components

Read component definitions from the design system:
- Button variants (primary, secondary, ghost, destructive)
- Card patterns (content card, product card, feature card)
- Form elements (inputs, selects, checkboxes, radios, toggles)
- Navigation components (navbar, sidebar, breadcrumbs, tabs)
- Feedback components (alerts, toasts, modals, tooltips)

### 2. Load Design Tokens

Read tokens that affect component rendering:
- Color tokens (backgrounds, borders, text colors per state)
- Typography tokens (font sizes, weights for labels and content)
- Spacing tokens (padding, margins, gaps)
- Border tokens (radius, width, style)
- Shadow tokens (elevation levels)
- Transition tokens (hover, focus, active states)

### 3. Load Page Context

From page specs, identify which components are used where:
- Which button variants appear on which pages
- Form patterns per page
- Card layouts and grid arrangements

### 4. Summarize Context

```
UI Element Context:
- Component types defined: [count]
- Design tokens loaded: [count]
- States to generate: default, hover, focus, active, disabled
- Pages referencing components: [count]
```

---

**Next:** → step-02-inventory.md
