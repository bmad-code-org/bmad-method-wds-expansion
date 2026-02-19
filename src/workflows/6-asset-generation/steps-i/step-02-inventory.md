# Step 02: Asset Inventory

**Goal:** Build a complete icon inventory organized by category and usage.

---

## Actions

### 1. Icon Catalog

| # | Icon Name | Category | Used On | Sizes Needed |
|---|-----------|----------|---------|-------------|
| 1 | menu | navigation | all pages | md, lg |
| 2 | search | navigation | header | md |
| 3 | close | action | modals, menu | md |
| 4 | arrow-right | navigation | buttons, links | sm, md |
| ... | ... | ... | ... | ... |

### 2. Deduplicate

- Merge icons used across multiple pages
- Note size variations needed
- Identify similar icons that could share a base (arrow-left, arrow-right, arrow-up, arrow-down)

### 3. Estimate Batch Size

```
Icon Inventory:
- Unique icons: [count]
- Size variants: [count]
- Total assets: [count]
- Categories: [list]

Similar icon groups (can generate as a set):
- Arrows: [count] directions
- Social: [count] platforms
- Actions: [count] CRUD icons
```

### 4. User Selection

```
[A] All icons          — Generate complete icon set
[C] Category           — Select specific categories
[S] Select individual  — Pick specific icons
[P] Priority only      — Navigation + action icons first
```

---

**Next:** → step-03-select-style.md
