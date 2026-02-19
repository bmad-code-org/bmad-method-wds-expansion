# Step 05: Generate Images

**Goal:** Execute image generation for all batches, maintaining visual consistency through reference chaining.

---

## Actions

### 1. Build Image Prompt

For each image, construct a detailed prompt:

```
Generate a [content style] image: [description]

Subject: [what the image shows]
Mood: [emotional tone]
Lighting: [lighting setup]
Color palette: harmonize with [hex values from brand]
Composition: [framing direction]
Dimensions: [width] × [height]
Style keywords: [from content style library]

[Reference: attached — match the visual treatment of this reference]
[Negative: avoid text, watermarks, logos, borders]
```

### 2. Process Batches

For each batch group:
1. Start with the hero/anchor image of the batch
2. Present for approval
3. Chain approved result as reference for next
4. Continue through all images in the batch

### 3. Select Service

```
[G] Generate via MCP  — Direct AI generation
[E] Export prompts     — Formatted for external service
[U] Upload existing    — User provides images, skip generation
```

**MCP generation:**
- Send prompt + reference image + dimensions
- Receive generated image
- Display for review

**Prompt export:**
- Save formatted prompts to `{output_folder}/E-Assets/images/prompts/`
- Include reference image paths and service-specific parameters
- User generates externally and imports results

### 4. Handle Variations

For key images (heroes, feature images):
```
Generate variations?

[1] Single best     — One generation, iterate if needed
[3] Three options   — Generate 3 variations, pick best
[5] Five options    — Generate 5, pick best (slower)
```

### 5. Track Progress

```
Image Generation Progress:

Hero images [3/5]:
  ✓ Homepage hero — approved
  ✓ About hero — approved
  → Products hero — generating (variation 2/3)...
  ○ Services hero — pending
  ○ Contact hero — pending

Product shots [0/17]:
  ○ All pending — starts after heroes

[5/34 total complete]
```

---

**Next:** → step-06-review.md
