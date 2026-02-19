# Step 03: Generate Specs

**Goal:** Create WDS-format page specifications from the observations captured in Step 02. Generate all output in `document_output_language`.

---

## Process

### 1. Prioritize Pages

From the page inventory (Step 02), decide which pages to spec first:

- Start with the most representative or foundational pages
- Group pages that share layout patterns
- Skip pages that are nearly identical (spec one, note variations)

### 2. Generate Page Specification for Each Page

For each page, create a specification document following this structure:

```markdown
# [Page Name] — Page Specification

## Overview

**Purpose:** [What this page does for the user]
**URL:** [Route or URL]
**Type:** [Landing / Listing / Detail / Form / Dashboard / Other]

## Layout Structure

### Desktop Layout
[Describe the grid/layout: single column, sidebar+main, multi-column grid, etc.]

### Sections (top to bottom)

#### Section 1: [Name]
- **Position:** [Top of page / Below hero / etc.]
- **Layout:** [Full width / Contained / Grid columns]
- **Content:**
  - [Element 1: heading, text, image, etc.]
  - [Element 2]
  - [Element 3]

#### Section 2: [Name]
...

## Component List

| Component | Location | Variant | Notes |
|-----------|----------|---------|-------|
| Navigation | Top | Desktop / Mobile | Sticky |
| Hero | Section 1 | With image | Full-width background |
| Card | Section 2 | Product card | 3-column grid |
| Button | Section 3 | Primary CTA | Centered |
| Footer | Bottom | Standard | 4 columns |

## Content Strategy

- **Headline pattern:** [Short and punchy / Descriptive / Question-based]
- **Body copy:** [Formal / Conversational / Technical]
- **CTA language:** [Action-oriented: "Get started", "Buy now", etc.]
- **Images:** [Photos / Illustrations / Icons / Mixed]

## Responsive Behavior

| Breakpoint | Changes |
|------------|---------|
| Desktop (1024px+) | [Default layout as described above] |
| Tablet (768-1023px) | [Grid changes, sidebar collapse, etc.] |
| Mobile (< 768px) | [Single column, stacked sections, hamburger nav] |

## Interactions

- [Describe key interactions: hover effects, click behaviors, scroll animations]
- [Form validation approach if applicable]
- [Modal/overlay triggers]
```

### 3. Create Scenario Outlines from User Flows

If the target has multi-page flows (sign up, checkout, onboarding), document them as scenario outlines:

```markdown
# Scenario: [Flow Name]

## Steps

1. **[Step Name]** — [Page] — [What user does]
2. **[Step Name]** — [Page] — [What user does]
3. **[Step Name]** — [Page] — [What user does]

## Success Path
[Describe the happy path from start to completion]

## Error States
[What happens when things go wrong: validation errors, empty states, timeouts]
```

### 4. Cross-Reference with Components

Ensure every component mentioned in page specs appears in the component inventory from Step 02. Flag any components that appear in specs but were not captured.

### 5. Save Output

Save all specifications to the output folder. Use a consistent naming convention:

```
output/
  specs/
    page-home.md
    page-about.md
    page-products.md
    page-product-detail.md
  scenarios/
    scenario-checkout.md
    scenario-onboarding.md
```

---

## Checklist

- [ ] Pages prioritized and ordered
- [ ] Page specification created for each key page
- [ ] Layout structure documented (desktop and sections)
- [ ] Component list matches component inventory from Step 02
- [ ] Content strategy noted per page
- [ ] Responsive behavior described
- [ ] User flow scenarios documented (if applicable)
- [ ] All output generated in `document_output_language`
- [ ] Specs saved to output folder

---

## Next Step

Continue to step-04-extract-design-system.md
