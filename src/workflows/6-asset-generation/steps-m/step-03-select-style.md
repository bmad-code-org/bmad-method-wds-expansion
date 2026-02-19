# Step 03: Select Style

**Goal:** Choose the content style and visual treatment for image generation.

---

## Actions

### 1. Load Content Styles

Read available content styles from `data/styles/content-styles/`:

```
Content style (rendering technique):

[1] Photorealistic     — Camera-quality, natural lighting
[2] Illustration       — Digital art, stylized
[3] Watercolor         — Soft, painterly, organic
[4] Flat Design        — Minimal, geometric, solid colors
[5] Isometric          — 3D-like, parallel projection
[6] 3D Render          — CGI quality, controlled lighting
[7] Hyper-realistic    — Beyond photo, idealized
[8] Line Art           — Clean outlines, minimal
[9] Pencil Sketch      — Hand-drawn feel
[10] Comic Book        — Bold, dynamic, halftone
```

### 2. Style Per Batch

Different image types may use different styles:
- Hero images: Photorealistic or Hyper-realistic
- Product shots: Photorealistic or 3D Render
- Backgrounds: Watercolor or Flat Design
- Feature illustrations: Illustration or Isometric

```
Style assignments:
| Batch | Content Style |
|-------|--------------|
| Hero images | [selected] |
| Product shots | [selected] |
| Backgrounds | [selected] |
| ... | ... |
```

### 3. Visual Parameters

For each batch, define:
- **Lighting:** Natural, studio, dramatic, soft, golden hour
- **Color harmony:** Warm, cool, brand-matched, monochromatic
- **Composition:** Rule of thirds, centered, dynamic angle
- **Mood:** Professional, energetic, calm, luxurious, approachable

### 4. Confirm Style

```
Image Style Configuration:
- Primary style: [name]
- Style per batch: [table]
- Color direction: [description]
- Mood: [description]
- Prompt keywords: [from style library]
```

---

**Next:** → step-04-references.md
