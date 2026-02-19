# Step 04: Generate UI Elements

**Goal:** Generate UI element assets for all components in the inventory.

---

## Actions

### 1. Build Component Prompt Template

```
Generate a [rendering] UI component: [component name] — [variant]

State: [state name]
Colors: background [hex], text [hex], border [hex]
Typography: [font] [size] [weight]
Dimensions: [width] x [height]
Border radius: [value]
Shadow: [value or none]
Padding: [values]
[Additional: icon placement, content text]

Style: Clean, precise, design-system quality
Background: [transparent/color]
```

### 2. Generate by Component Group

Process components in priority order:
1. **Buttons** — All variants and states
2. **Form inputs** — All types and states
3. **Cards** — All patterns
4. **Navigation** — All component types
5. **Feedback** — Alerts, toasts, modals

### 3. Batch Strategy

For grid-style state display:
- Generate all states of one variant in a single prompt
- "Show [Button Primary] in states: default, hover, focus, active, disabled — arranged in a horizontal row"

For individual assets:
- Generate one asset per prompt
- Use previous results as reference for consistency

### 4. Select Service

```
[G] Generate via MCP  — Direct generation
[E] Export prompts     — For external tool (Figma, Sketch, etc.)
```

### 5. Track Progress

```
UI Element Progress:
✓ Buttons (4 variants x 5 states) — 20/20
→ Inputs (4 types x 5 states) — generating...
○ Cards — pending
○ Navigation — pending
○ Feedback — pending
[20/76 complete]
```

---

**Next:** → step-05-review.md
