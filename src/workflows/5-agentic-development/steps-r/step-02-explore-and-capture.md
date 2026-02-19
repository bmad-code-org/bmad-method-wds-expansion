# Step 02: Explore and Capture

**Goal:** Systematically explore the target and capture a complete inventory of pages, components, patterns, and design tokens.

---

## Process

The approach depends on the access method defined in Step 01. Follow the relevant section below.

### If URL (Browser Access)

#### 2a. Crawl Pages

1. Start at the home page or main entry point
2. Follow navigation links to discover all pages
3. For each page, note:
   - URL and page title
   - Primary purpose (landing, form, listing, detail, dashboard)
   - Key content sections
   - Interactive elements (forms, modals, dropdowns, accordions)
4. Check for hidden pages: sitemap.xml, footer links, search results

#### 2b. Capture Structure

For each page:
- Header: logo placement, navigation items, CTAs, user menu
- Main content: sections, layout grid, content blocks
- Footer: links, columns, newsletter, legal
- Sidebar: if present, what it contains

#### 2c. Note Interactions

- Hover states on buttons and links
- Dropdown/menu behavior
- Form validation patterns
- Modal/overlay triggers
- Loading states and transitions
- Responsive breakpoints (resize browser to observe)

#### 2d. Extract CSS and Design Tokens

From browser DevTools or computed styles:
- Color values (backgrounds, text, borders, accents)
- Font families, sizes, weights, line heights
- Spacing patterns (padding, margin, gap values)
- Border radius values
- Shadow values
- Breakpoint values

### If Source Code Access

#### 2e. Read Code Structure

1. Identify the component directory (e.g., `src/components/`)
2. List all components and categorize: layout, navigation, form, display, feedback
3. Map routes to pages/views
4. Identify shared/global styles or theme configuration
5. Read the theme/design token file if one exists

#### 2f. Map Routes

Create a route inventory:

```
Routes:
- / → HomePage
- /about → AboutPage
- /products → ProductListPage
- /products/:id → ProductDetailPage
- /cart → CartPage
- /checkout → CheckoutPage
```

### If Screenshots

#### 2g. Analyze Visual Patterns

For each screenshot:
1. Identify the page type and purpose
2. Sketch the layout grid (columns, rows, sections)
3. List visible components
4. Note typography hierarchy (headings, body, labels, captions)
5. Extract colors by sampling prominent areas
6. Note spacing rhythm (consistent or variable)

### Document Results (All Methods)

Compile findings into these inventories:

#### Page Inventory

| # | Page | URL / Route | Type | Key Sections |
|---|------|-------------|------|--------------|
| 1 | Home | / | Landing | Hero, Features, Testimonials, CTA |
| 2 | About | /about | Content | Story, Team, Values |
| 3 | Products | /products | Listing | Filters, Grid, Pagination |

#### Navigation Structure

```
Primary nav: Home | Products | About | Contact
Secondary nav: [Login | Sign Up] or [Profile | Settings | Logout]
Footer nav: [column structure]
Mobile nav: [hamburger / bottom tabs / other]
```

#### Component Inventory

| Component | Variants | Used On |
|-----------|----------|---------|
| Button | Primary, Secondary, Ghost, Disabled | All pages |
| Card | Product card, Testimonial card, Feature card | Home, Products |
| Form Input | Text, Email, Password, Textarea, Select | Contact, Auth |
| Modal | Confirmation, Form, Info | Products, Cart |
| Navigation | Desktop, Mobile hamburger | All pages |

#### Color Palette

| Name | Value | Usage |
|------|-------|-------|
| Primary | #2563EB | Buttons, links, accents |
| Secondary | #7C3AED | Highlights, badges |
| Neutral-900 | #111827 | Headings |
| Neutral-600 | #4B5563 | Body text |
| Neutral-100 | #F3F4F6 | Backgrounds |

#### Typography Scale

| Level | Size | Weight | Line Height | Usage |
|-------|------|--------|-------------|-------|
| H1 | 48px | 700 | 1.2 | Page titles |
| H2 | 36px | 700 | 1.25 | Section headings |
| H3 | 24px | 600 | 1.3 | Sub-headings |
| Body | 16px | 400 | 1.5 | Paragraphs |
| Small | 14px | 400 | 1.4 | Labels, captions |

#### Spacing Patterns

Note the base spacing unit and common values (e.g., 4px base: 4, 8, 12, 16, 24, 32, 48, 64).

---

## Checklist

- [ ] All pages discovered and inventoried
- [ ] Navigation structure documented
- [ ] Component inventory created
- [ ] Color palette extracted
- [ ] Typography scale documented
- [ ] Spacing patterns noted
- [ ] Interactive patterns observed (hover, modal, form behavior)

---

## Next Step

Continue to step-03-generate-specs.md
