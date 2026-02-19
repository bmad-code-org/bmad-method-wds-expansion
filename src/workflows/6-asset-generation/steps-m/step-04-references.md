# Step 04: Reference Images

**Goal:** Attach reference images that guide visual consistency across batch generation.

---

## Actions

### 1. Gather Reference Images

Sources of reference imagery:
- Brand photography from client
- Mood board images from visual direction
- Previously approved generated images
- Style examples from the content style library

### 2. Categorize References

```
Reference images loaded:

Brand references: [count]
- [description of each]

Style references: [count]
- [description of each]

Previous generations: [count]
- [approved images from earlier in this session]
```

### 3. Select Per Batch

For each batch, assign 1-3 reference images:

| Batch | Reference | Purpose |
|-------|-----------|---------|
| Hero images | [ref 1] | Mood and lighting direction |
| Product shots | [ref 2] | Framing and background treatment |
| Backgrounds | [ref 3] | Texture and color treatment |

### 4. Reference Strategy for Batch Consistency

Within a batch:
1. Generate the first image without reference (or with external reference only)
2. Once approved, use it as reference for image #2
3. Continue chaining — each approved image becomes reference for the next
4. This creates natural visual consistency across the batch

```
Batch chaining strategy:
Image 1: [style reference only]
Image 2: [Image 1 as reference]
Image 3: [Image 2 as reference]
...chain continues...

If an image diverges, regenerate using the closest approved match as reference.
```

### 5. Confirm References

```
References ready:
- External references: [count] loaded
- Batch chaining: enabled
- Fallback: Regenerate outliers using best match as reference
```

---

**Next:** → step-05-generate.md
