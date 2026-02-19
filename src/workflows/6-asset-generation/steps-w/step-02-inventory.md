# Step 02: Asset Inventory

**Goal:** Identify all pages and views that need wireframes, organized for batch generation.

---

## Actions

### 1. List All Pages

From loaded page specs, create a complete list:

| # | Page | Views | Priority |
|---|------|-------|----------|
| 1 | [page name] | Desktop, Mobile | High |
| ... | ... | ... | ... |

### 2. Check What Exists

Cross-reference with `{output_folder}/E-Assets/wireframes/`:
- Mark pages that already have wireframes
- Identify outdated wireframes (spec changed after generation)

### 3. Present Inventory

```
Wireframe Inventory:
- Total pages: [count]
- Already wireframed: [count]
- Need wireframes: [count]
- Need update: [count]

Generate all [count] wireframes now, or select specific pages?
```

### 4. User Selection

Wait for user to confirm scope:
- **All** — Generate full batch
- **Select** — User picks specific pages
- **Missing only** — Generate only pages without wireframes

---

**Next:** → step-03-select-style.md
