# Step 04: Generate Wireframes

**Goal:** Craft optimized prompts and generate wireframes through MCP service or prompt export.

---

## Actions

### 1. Craft Prompt Template

Build the base prompt from context + style:

```
Generate a [fidelity] wireframe for a [page type] page.

Layout: [grid description from design system]
Content zones: [from page spec]
Style influence: [design style keywords]
Dimensions: [width] x [height]
Color: Grayscale only — use #F5F5F5, #E0E0E0, #BDBDBD, #757575, #212121
[Annotations: Label all content zones with their purpose]
```

### 2. Customize Per Page

For each page in the inventory:
- Insert page-specific content zones
- Add page-specific navigation state
- Note unique layout requirements

### 3. Select Service

```
Generation service:

[G] Generate via MCP  — Send directly to image generation service
[E] Export prompts     — Copy-paste ready prompts for external tool
```

### 4. Execute Generation

**MCP path:**
- Send prompts one at a time
- After first result, attach as reference for consistency
- Present each result for quick approval before continuing

**Export path:**
- Format all prompts with dimensions and style notes
- Save to `{output_folder}/E-Assets/wireframes/prompts/`
- User generates externally, then drops results back

### 5. Batch Progress

Track and display:
```
Wireframe Generation Progress:
✓ Homepage (desktop) — approved
✓ Homepage (mobile) — approved
→ About page (desktop) — generating...
○ About page (mobile) — pending
○ Contact (desktop) — pending
○ Contact (mobile) — pending
[3/8 complete]
```

---

**Next:** → step-05-review.md
