# Step 03: Review and Integrate

**Goal:** Review the visual output and integrate it back into the page specification.

---

## Process

### 1. Present Visual Result

Show the generated visual to the user with notes on:
- What was implemented
- Any deviations from the specification
- Suggested improvements

**For Nano Banana results:**
- AI-generated text in images is often garbled — do NOT rely on the image for exact text content. The spec is the source of truth for all text.
- Focus review on: **layout correctness**, **color accuracy**, **mood/feeling**, **section presence and order**
- The image is a design exploration tool, not a pixel-perfect mockup

### 2. Collect Feedback

- Does this match your vision?
- What should change?
- Should we iterate or proceed?

### 3. Integrate

Update the page specification with:
- Link to the visual artifact
- Any design decisions captured during visual creation
- Notes on visual style that should apply to other pages

### 4. Save

Store visual artifact in the appropriate location:

- **UI mockups (page/section):** `{output_folder}/D-Design-System/01-Visual-Design/design-concepts/`
- **Image assets (photos/illustrations):** `{output_folder}/D-Design-System/01-Visual-Design/design-concepts/` (move to `02-Assets/images/` when finalized)
- **Legacy path:** `{output_folder}/D-UX-Design/[scenario]/visuals/` (if project uses older folder structure)

**Update the agent dialog** with the accepted result and save path.

---

## After Completion

Return to scenario dashboard or proceed to another activity.
