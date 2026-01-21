# {page-number}-{page-name}

**Scenario:** {scenario-name}  
**Page Number:** {page-number}  
**Created:** {date}  
**Method:** Whiteport Design Studio (WDS)

---

## Overview

**Page Purpose:** {What job must this page accomplish?}

**Success Criteria:** {How will we know the page succeeded?}

**VTC Reference:** {Link to or brief description of Value Trigger Chain for this page}

**URL/Route:** {url-path}

**Entry Points:**

- {How users arrive at this page}

**Exit Points:**

- {Where users go after completing their goal}

**Main User Goal:** {Primary objective for users on this page}

**Page Visibility:** {Public / Private / Authenticated}

---

## Meta Content & Social Sharing

{#if page_visibility == "Public"}
**Note:** This page is publicly accessible and will appear in search results and social media shares. Complete all meta content fields.

### Page Title (Browser Tab & Search Results)
**Character Limit:** 55-60 characters (including brand name)

**Content:**
- EN: "{Compelling page title for search results}"
- {Language2}: "{Translated title}"

**Purpose:** Appears in browser tab, search results, and social media shares. Should be descriptive and include primary topic.

---

### Meta Description (Search Results Preview)
**Character Limit:** 150-160 characters

**Content:**
- EN: "{Clear, compelling description that encourages clicks}"
- {Language2}: "{Translated description}"

**Purpose:** Appears below page title in search results. Should summarize page value and include call-to-action.

---

### Social Sharing Content

#### Social Media Title
**Character Limit:** 60-70 characters (can differ from page title)

**Content:**
- EN: "{Engaging title optimized for social media}"
- {Language2}: "{Translated title}"

**Purpose:** Appears when page is shared on Facebook, Twitter, LinkedIn, etc.

---

#### Social Media Description
**Character Limit:** 120-150 characters

**Content:**
- EN: "{Compelling description for social shares}"
- {Language2}: "{Translated description}"

**Purpose:** Appears below title in social media share previews.

---

#### Social Media Image
**Image Requirements:**
- Dimensions: 1200x630px (Open Graph standard)
- Format: JPG or PNG
- File size: < 1MB
- Content: Should represent page content visually

**Image Path:** `/images/social/{page-name}-social.jpg`

**Alt Text:**
- EN: "{Descriptive alt text for image}"
- {Language2}: "{Translated alt text}"

**Purpose:** Appears as preview image when page is shared on social media.

---

### Agent Questions for Meta Content

When specifying a public page, agents should ask:

1. **Page Title Question:**
   - "What should appear in the browser tab and search results for this page?"
   - "Keep it under 60 characters and make it descriptive."

2. **Meta Description Question:**
   - "How would you describe this page in 150-160 characters to encourage clicks from search results?"
   - "What value does this page provide to users?"

3. **Social Title Question:**
   - "What title would work best when this page is shared on social media?"
   - "Can be different from page title, optimized for social engagement."

4. **Social Description Question:**
   - "What description would encourage people to click when they see this shared on Facebook/Twitter/LinkedIn?"
   - "Keep it under 150 characters."

5. **Social Image Question:**
   - "What image best represents this page content?"
   - "Should be 1200x630px and visually engaging."

{/if}

{#if page_visibility == "Private" || page_visibility == "Authenticated"}
**Note:** This page is not publicly accessible. Meta content for search engines is not required, but page title for browser tab should still be defined.

### Page Title (Browser Tab)
**Content:**
- EN: "{Page title for authenticated users}"
- {Language2}: "{Translated title}"

{/if}

---

## Layout Structure

{High-level description of page layout - header, main content areas, footer, etc.}

```
[Optional: ASCII layout diagram]
+------------------+
| Header           |
+------------------+
| Main Content     |
|                  |
+------------------+
| Footer           |
+------------------+
```

---

## Structural Area Labels

### Page Container
**AREA LABEL:** `{page-name}-page`  
**Component:** Main page wrapper  
**Purpose:** Top-level container for the entire page  
**HTML Implementation:** `<div id="{page-name}-page" aria-label="{page-name}-page">`  
**Style:** {Full viewport height, background color, etc.}

### Navigation Header Section
**AREA LABEL:** `{page-name}-header`  
**Component:** Header section container  
**Purpose:** Contains navigation, title, and header elements  
**HTML Implementation:** `<header id="{page-name}-header" aria-label="{page-name}-header">`  
**Style:** {Background, border, padding, etc.}

### Main Content Area
**AREA LABEL:** `{page-name}-main`  
**Component:** Main content container  
**Purpose:** Contains primary page content and sections  
**HTML Implementation:** `<main id="{page-name}-main" aria-label="{page-name}-main">`  
**Style:** {Max-width, centering, padding, etc.}

{#if has_form}
### Form Container
**AREA LABEL:** `{page-name}-form`  
**Component:** Form element  
**Purpose:** Groups all input fields and form controls  
**HTML Implementation:** `<form id="{page-name}-form" aria-label="{page-name}-form">`  
**Behavior:** Handles form submission and validation
{/if}

{#if has_sections}
### {Section Name} Section
**AREA LABEL:** `{page-name}-{section-name}-section`  
**Component:** Section container  
**Purpose:** Groups related content and components  
**HTML Implementation:** `<section id="{page-name}-{section-name}-section" aria-label="{page-name}-{section-name}-section">`  
**Style:** {Background, borders, spacing, etc.}

#### Section Header Bar (if applicable)
**AREA LABEL:** `{page-name}-{section-name}-header-bar`  
**Component:** Header container with background  
**Purpose:** Visual grouping header for section  
**HTML Implementation:** `<div id="{page-name}-{section-name}-header-bar" aria-label="{page-name}-{section-name}-header-bar">`  
**Style:** {Background color, padding, layout}
{/if}

---

## Components & Area Labels

### {Component Name 1}

**AREA LABEL:** `{page-section-element}`  
**Component Type:** {button/input/card/etc.}  
{#if design_system_enabled}
**Design System Component:** {component-name}  
**Figma Component:** {figma-component-name}  
**Variant:** {size=large, type=primary, etc.}
{/if}

**Content Purpose:** {What job must this content do? Be specific.}  
**Review Criteria:** {How will we know this content succeeded?}

**States:**

- **Default:** {Description and behavior}
- **Hover:** {Hover state appearance and behavior}
- **Active:** {Active/clicked state}
- **Disabled:** {When and why disabled}
- **Loading:** {Loading state if applicable}
- **Error:** {Error state if applicable}

**Behavior:**
{What happens when user interacts with this component}

**Content:**

- **English:** {Text content in English}
- **{Language2}:** {Text content in second language}
- **{Language3}:** {Text content in third language}

**Content Rationale:** {Why this specific content? How does it achieve its purpose?}

**Validation:** {If applicable - validation rules}

---

{Repeat Component section for each element on the page}

---

## Page States

### Default State

**When:** {When this state is active}  
**Appearance:** {What the user sees}  
**Available Actions:** {What users can do}

### Empty State

**When:** {When this state is active - e.g., no data available}  
**Appearance:** {What the user sees}  
**Message:** {Empty state message in all languages}  
**Available Actions:** {What users can do}

### Loading State

**When:** {When this state is active - e.g., fetching data}  
**Appearance:** {Loading indicators, disabled elements}  
**Message:** {Loading message in all languages}  
**Available Actions:** {What users can do while loading}

### Error State

**When:** {When this state is active}  
**Appearance:** {Error UI elements}  
**Error Messages:** {See Error Messages section}  
**Recovery Actions:** {How user fixes the error}

### Success State

**When:** {When this state is active - after successful action}  
**Appearance:** {Success indicators}  
**Message:** {Success message in all languages}  
**Next Steps:** {Where user goes or what they can do next}

---

## Validation Rules

{If applicable - for forms and inputs}

| Field        | Rule              | Error Code | Error Message   |
| ------------ | ----------------- | ---------- | --------------- |
| {field-name} | {validation-rule} | {ERR_CODE} | {error-message} |

---

## Error Messages

| Error Code | Trigger                  | Message (English) | Message ({Lang2})    | Recovery     |
| ---------- | ------------------------ | ----------------- | -------------------- | ------------ |
| ERR_001    | {When this error occurs} | {English message} | {Translated message} | {How to fix} |

---

## Data Requirements

### Data Sources

| Data Element | Source                   | Type        | Required | Notes   |
| ------------ | ------------------------ | ----------- | -------- | ------- |
| {data-field} | {API endpoint or static} | {data-type} | {yes/no} | {notes} |

### API Endpoints

**{Endpoint Name}**

- **Method:** {GET/POST/PUT/DELETE}
- **Path:** `/api/{path}`
- **Purpose:** {What this endpoint does}
- **Request:** {Request format}
- **Response:** {Response format}
- **Error Codes:** {Possible errors}

---

## Responsive Behavior

### Mobile (< 768px)

{Describe layout changes, hidden elements, mobile-specific interactions}

### Tablet (768px - 1024px)

{Describe layout changes for tablet}

### Desktop (> 1024px)

{Describe full desktop layout}

---

## Interactions & Navigation

### On Page Load

1. {Action sequence when page loads}
2. {Data fetching}
3. {State initialization}

### User Interactions

**{Interaction Name}**

1. User {action}
2. System {response}
3. Page {state change}
4. User sees {result}

---

## Accessibility

### Keyboard Navigation
- **Tab Order:** {Document logical tab sequence through interactive elements}
- **Keyboard Shortcuts:** {Any custom keyboard shortcuts}
- **Focus Indicators:** {Visual focus states for all interactive elements}
- **Skip Links:** {Skip to main content, skip navigation}

### Screen Reader Support
- **ARIA Labels:** {All interactive elements have descriptive aria-label attributes}
- **ARIA Descriptions:** {Complex components have aria-describedby}
- **ARIA Live Regions:** {Dynamic content updates announced to screen readers}
- **Semantic HTML:** {Proper use of header, main, nav, section, article tags}
- **Heading Hierarchy:** {Logical h1-h6 structure documented}

### Visual Accessibility
- **Color Contrast:** {WCAG AA compliance - 4.5:1 for normal text, 3:1 for large text}
- **Color Independence:** {Information not conveyed by color alone}
- **Text Sizing:** {Readable at 200% zoom without horizontal scroll}
- **Focus Visibility:** {Clear focus indicators with 3:1 contrast ratio}

### Content Accessibility
- **Alt Text:** {All images have descriptive alt attributes}
- **Form Labels:** {All inputs have associated labels (visible or aria-label)}
- **Error Messages:** {Clear, descriptive error messages announced to screen readers}
- **Required Fields:** {Marked with aria-required and visual indicators}
- **Field Instructions:** {Help text associated with aria-describedby}

### Interactive Element Accessibility
- **Button Labels:** {All buttons have clear, descriptive text or aria-label}
- **Link Purpose:** {Link text describes destination (avoid "click here")}
- **Form Validation:** {Errors announced and associated with fields}
- **Loading States:** {aria-busy and loading announcements}
- **Modal Dialogs:** {Focus trap, aria-modal, proper close mechanisms}

### WCAG Compliance Level
- **Target Level:** {WCAG 2.1 Level AA / AAA}
- **Tested With:** {Screen readers: NVDA, JAWS, VoiceOver}
- **Known Issues:** {Any accessibility limitations or planned improvements}

---

## Technical Notes

{Any technical constraints, performance requirements, browser compatibility notes, etc.}

---

## Design References

**Sketches:** {Link to sketch files in Sketches/ folder}  
**Prototype:** {Link to HTML prototype in Prototype/ folder}  
**VTC Reference:** {Which VTC(s) does this page serve? Link to VTC documents}  
**Trigger Map Reference:** {Which personas/drivers this page addresses}  
**Content Strategy:** {Link to content creation workshop outputs or content purpose definitions}

---

## Content Purpose Summary

**Key Content Blocks:**

| Object ID | Purpose | Review Criteria |
|-----------|---------|-----------------|
| {object-id-1} | {What this content must do} | {Success measure} |
| {object-id-2} | {What this content must do} | {Success measure} |
| {object-id-3} | {What this content must do} | {Success measure} |

**Overall Content Strategy:**
{Brief explanation of how content on this page works together to achieve page purpose}

---

## Development Checklist

Before implementing:

- [ ] Page purpose is clear and testable
- [ ] VTC reference documented
- [ ] All Object IDs assigned and documented
- [ ] Content purposes defined for key elements
- [ ] Content achieves stated purposes (reviewed)
- [ ] All states defined and specified
- [ ] Validation rules clear
- [ ] Error messages in all languages
- [ ] API endpoints defined
- [ ] Responsive behavior specified
- [ ] Accessibility requirements noted
- [ ] Prototype validated

---

_Created using Whiteport Design Studio (WDS) methodology_
