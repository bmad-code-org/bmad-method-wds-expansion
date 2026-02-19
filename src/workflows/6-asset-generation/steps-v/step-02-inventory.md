# Step 02: Asset Inventory

**Goal:** Catalog all motion content needed with type, duration, and technical requirements.

---

## Actions

### 1. Motion Asset Catalog

| # | Asset | Page | Type | Duration | Format |
|---|-------|------|------|----------|--------|
| 1 | Hero animation | Homepage | ambient loop | 8-10s | MP4/WebM |
| 2 | Feature reveal | Features | scroll-triggered | 2s | CSS/Lottie |
| 3 | Product demo | Products | explainer | 15-30s | MP4 |
| 4 | Loading spinner | Global | micro | 1s | SVG anim |
| ... | ... | ... | ... | ... | ... |

### 2. Categorize by Complexity

```
Complexity levels:

[S] Simple     — CSS animation or SVG animation (transitions, fades, spins)
[M] Medium     — Lottie/motion graphics (illustrated animations, reveals)
[C] Complex    — Video production (filmed content, long explainers)
[G] Generated  — AI video generation (ambient backgrounds, product shots)
```

### 3. Technical Requirements

| Format | Use Case | File Size Target |
|--------|----------|-----------------|
| CSS/SVG | Micro-interactions | < 10KB |
| Lottie | Illustrations, icons | < 50KB |
| WebM/MP4 | Background, heroes | < 2MB |
| Full video | Demos, explainers | < 10MB |

### 4. Present Inventory

```
Motion Content Inventory:
- Simple (CSS/SVG): [count]
- Medium (Lottie): [count]
- Complex (video): [count]
- AI Generated: [count]
- Total motion assets: [count]

Generate scope:
[A] All motion content
[T] By type
[S] Select specific
[P] Priority (hero + above-fold only)
```

---

**Next:** → step-03-select-style.md
