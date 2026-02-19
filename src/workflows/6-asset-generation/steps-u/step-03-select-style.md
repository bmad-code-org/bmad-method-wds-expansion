# Step 03: Select Style

**Goal:** Confirm the visual style for UI element generation — the design system tokens drive most decisions, but rendering approach matters.

---

## Actions

### 1. Rendering Approach

```
UI element rendering:

[V] Vector/CSS     — Clean, scalable, code-ready appearance
[R] Realistic      — Rendered with shadows and depth, presentation-quality
[F] Flat           — Minimal, no shadows, pure color blocks
```

### 2. State Visualization

```
How to show component states:

[G] Grid           — All states in a grid (design system documentation style)
[I] Individual     — Each state as a separate asset
[A] Animated       — State transitions shown as sequence
```

### 3. Apply Design System

Map design tokens to visual properties:
- Primary button: `color.primary.500` background, `color.white` text, `radius.md`, `shadow.sm`
- Hover: `color.primary.600` background, `shadow.md`
- Focus: `ring.2` `color.primary.300` outline
- etc.

### 4. Confirm Style

```
UI Element Style:
- Rendering: [selected approach]
- State display: [grid/individual/animated]
- Design system: [name] applied
- Background: [transparent / light / dark]
- Scale: [1x / 2x / both]
```

---

**Next:** → step-04-generate.md
