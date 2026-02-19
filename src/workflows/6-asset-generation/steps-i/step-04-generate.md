# Step 04: Generate Icons

**Goal:** Batch-generate icons with consistent style across the entire set.

---

## Actions

### 1. Build Icon Prompt

```
Generate a [style] icon: [icon name]

Style: [outline/filled/duotone] icon
Stroke: [width] [cap] [join]
Canvas: [size]x[size], [padding] padding
Color: [color/monochrome]
Background: transparent

The icon should clearly represent [description of what the icon communicates].
Keep it simple — recognizable at [smallest size]px.
```

### 2. Generate by Group

Process related icons together for maximum consistency:

**Group strategy:**
1. **Navigation set** — menu, close, search, arrows, chevrons
2. **Action set** — edit, delete, save, share, copy, download, upload
3. **Status set** — success/check, warning, error/x, info
4. **Feature set** — page-specific icons
5. **Social set** — platform icons

For each group:
- Generate the first icon, get approval
- Use it as style reference for the rest of the group
- Generate remaining in batch

### 3. Select Service

```
[G] Generate via MCP     — AI generation (best for custom/unique icons)
[E] Export prompts        — For external generation
[L] Library match         — Search open-source icon libraries for matches
```

### 4. SVG Optimization

For each generated icon:
- Clean SVG markup (remove unnecessary attributes)
- Ensure viewBox is correct
- Set stroke/fill to `currentColor` for monochrome icons
- Validate pixel alignment

### 5. Track Progress

```
Icon Generation Progress:
✓ Navigation set (8 icons) — approved
✓ Action set (12 icons) — approved
→ Status set (4 icons) — generating...
○ Feature set (15 icons) — pending
○ Social set (6 icons) — pending
[20/45 complete]
```

---

**Next:** → step-05-review.md
