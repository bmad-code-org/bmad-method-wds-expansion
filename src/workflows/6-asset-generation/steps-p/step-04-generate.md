# Step 04: Generate Page Designs

**Goal:** Craft detailed prompts and generate full page design compositions.

---

## Actions

### 1. Build Page Design Prompt

For each page, construct a comprehensive prompt:

```
Generate a full page design composition for [page name].

Layout: [from wireframe or spec]
Color palette: [hex values from design system]
Typography: [font families, key sizes]
Style: [design style keywords + mood]
Content: [real headlines and body text from specs]
Components: [buttons, cards, forms needed]
Images: [describe image areas — will be placeholder if not yet generated]
Dimensions: [width] x [estimated height based on content]
```

### 2. Include Wireframe Reference

If wireframe exists for this page:
- Attach wireframe as structural reference
- Note: "Follow this layout structure, add full visual design"

### 3. Select Service

```
[G] Generate via MCP  — Direct generation
[E] Export prompts     — For external tool
```

### 4. Generate Sequentially

For each page:
1. Generate desktop version first
2. Present for quick review
3. Use approved desktop as reference for mobile version
4. Use each approved page as reference for the next (batch consistency)

### 5. Track Progress

```
Page Design Progress:
✓ Homepage (desktop) — approved
→ Homepage (mobile) — generating...
○ About (desktop) — pending
○ About (mobile) — pending
[2/8 complete]
```

---

**Next:** → step-05-review.md
