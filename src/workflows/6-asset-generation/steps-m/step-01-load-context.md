# Step 01: Load Context

**Goal:** Load all inputs needed for image generation — page specifications, visual direction, brand assets, and any existing imagery.

---

## Actions

### 1. Load Page Specifications

Read from `{output_folder}/C-Scenarios/`:
- Image placement requirements per page
- Content context (what story does each image tell?)
- Dimensional requirements (hero 16:9, product 1:1, etc.)
- Alt text requirements

### 2. Load Visual Direction

Read brand and visual direction:
- Brand photography guidelines
- Color palette for image harmony
- Mood/tone: professional, warm, edgy, playful, etc.
- Subject matter preferences
- What to avoid (clichés, competitor imagery)

### 3. Load Design System

Image-related tokens:
- Aspect ratios used in layouts
- Border radius applied to images
- Overlay treatments (gradients, color washes)
- Container sizes at each breakpoint

### 4. Check Existing Images

Scan `{output_folder}/E-Assets/images/` and brand assets folder:
- Existing approved images
- Brand photography library
- Stock imagery already licensed
- Previously generated images

### 5. Summarize Context

```
Image Context:
- Images needed: [count] across [count] pages
- Categories: hero, product, team, background, illustration, decorative
- Visual direction: [mood summary]
- Existing assets: [count] reusable
- Generation needed: [count]
```

---

**Next:** → step-02-inventory.md
