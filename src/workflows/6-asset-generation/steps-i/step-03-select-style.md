# Step 03: Select Style

**Goal:** Define the icon style — outline weight, fill treatment, and visual consistency rules.

---

## Actions

### 1. Icon Style

```
Icon style:

[O] Outline        — Line icons with consistent stroke weight
[F] Filled         — Solid filled shapes
[D] Duotone        — Two-tone with primary + lighter secondary
[G] Glyph          — Minimal, symbol-like
```

### 2. Style Parameters

Based on selection, configure:

**Outline:**
- Stroke width: [1px / 1.5px / 2px]
- Line cap: [round / square]
- Line join: [round / miter]
- Corner radius: [sharp / rounded]

**Filled:**
- Fill style: [solid / gradient-subtle]
- Corner radius: [sharp / rounded / circular]

**Duotone:**
- Primary color: [from design system]
- Secondary opacity: [20% / 30% / 40%]

### 3. Grid and Alignment

```
Icon grid:
- Canvas: [24x24] with [2px] padding = [20x20] live area
- Alignment: centered on pixel grid
- Optical sizing: adjust to appear equal visual weight
```

### 4. Color Treatment

```
Color mode:

[M] Monochrome     — Single color (inherits from context via currentColor)
[B] Brand colors   — Use brand palette for category distinction
[F] Fixed color    — Specific hex per icon
```

### 5. Confirm Style

```
Icon Style:
- Style: [outline/filled/duotone/glyph]
- Parameters: [stroke/fill details]
- Grid: [size] with [padding] padding
- Color: [mode]
- Format: SVG primary, PNG fallback at [sizes]
```

---

**Next:** → step-04-generate.md
