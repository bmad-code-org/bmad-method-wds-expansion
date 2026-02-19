# Step 06: Review and Iterate

**Goal:** Review all generated images as a cohesive set, verify brand consistency, and iterate on outliers.

---

## Actions

### 1. Present Image Gallery

Display all generated images:
- Grouped by batch/type
- Show at intended display size
- Show with intended page context (placed in wireframe or layout)

### 2. Batch Consistency Review

For each batch, verify:
- [ ] Color temperature consistent across all images
- [ ] Lighting direction consistent
- [ ] Level of detail and sharpness consistent
- [ ] Style keywords clearly reflected
- [ ] No image feels like it belongs to a different set

### 3. Brand Alignment

Across the full set:
- [ ] Color palette harmonizes with brand
- [ ] Mood matches visual direction
- [ ] Subject matter is appropriate
- [ ] No unintended text or artifacts in images
- [ ] Cultural sensitivity check

### 4. Technical Quality

For each image:
- [ ] Resolution sufficient for display size
- [ ] No visible AI artifacts (extra fingers, warped text, etc.)
- [ ] Edges are clean
- [ ] Compression-friendly (no excessive fine detail that muddies at JPEG quality)

### 5. User Review

```
[A] Approve all              — Save complete image set
[R] Regenerate [images]      — Redo specific images
[V] Variations [image]       — Generate alternatives for specific image
[E] Edit [image]             — Describe specific changes needed
[T] Tone shift               — Adjust color/mood across entire batch
[C] Context preview          — Show images placed in page designs
```

### 6. Iterate Outliers

For images flagged for regeneration:
- Capture specific feedback ("too warm", "wrong angle", "needs more space on left")
- Adjust prompt with corrections
- Use closest approved batch-mate as reference
- Re-review in context of the set

### 7. Save Approved Set

Save to `{output_folder}/E-Assets/images/`:
- Organized by type: `heroes/`, `products/`, `backgrounds/`, etc.
- Include original prompts as metadata
- `image-set-summary.md` — catalog with context and usage notes

### 8. Update Design Log

Record:
- Images generated: [count] across [count] batches
- Styles used: [list per batch]
- Reference chaining: [how many chains, longest chain]
- Iterations: [count regenerations needed]

---

**Complete.** → [M] Return to Activity Menu
