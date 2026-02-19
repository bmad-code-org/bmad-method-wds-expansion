# Step 03: Select Style

**Goal:** Choose design style and content style that define the visual character of the page designs.

---

## Actions

### 1. Load Design Styles

Read available design styles from `data/styles/design-styles/`:
- Present each with a one-line description
- Highlight any that match the project's brand direction

```
Design style (visual approach):

[1] Minimal       — Clean, spacious, restrained
[2] Corporate     — Professional, structured, trustworthy
[3] Brutalist     — Raw, bold, unconventional
[4] Organic       — Natural, flowing, warm
[5] Playful       — Fun, colorful, energetic
[6] Editorial     — Magazine-quality, typography-driven
```

### 2. Load Content Styles

For any generated visual elements within the page design:

```
Content style (rendering technique for visuals):

Choose if the page contains illustrations or decorative elements.
Skip if using photography only.
```

### 3. Combine with Design System

Merge selected style with design system tokens:
- Style mood + design system colors = final palette application
- Style spacing feel + design system spacing tokens = layout rhythm
- Style typography approach + design system fonts = type treatment

### 4. Confirm Style Selection

```
Page Design Style:
- Design style: [name] — [key characteristics]
- Content style: [name or "photography only"]
- Applied to design system: [name]
- Dimensions: [desktop width] x auto, [mobile width] x auto
```

---

**Next:** → step-04-generate.md
