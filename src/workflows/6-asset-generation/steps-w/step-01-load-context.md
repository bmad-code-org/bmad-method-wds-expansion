# Step 01: Load Context

**Goal:** Load all inputs needed to generate wireframes — page specifications, design system layout rules, and any existing wireframe references.

---

## Actions

### 1. Load Page Specifications

Read the page specs from `{output_folder}/C-Scenarios/`:
- Page structure and layout requirements
- Content zones and hierarchy
- Responsive breakpoints
- Navigation patterns

### 2. Load Design System

Read layout tokens from the design system:
- Grid system (columns, gutters, margins)
- Spacing scale
- Breakpoint definitions
- Container widths

### 3. Check Existing Wireframes

Scan `{output_folder}/E-Assets/wireframes/` for:
- Previously generated wireframes (to maintain consistency)
- Approved reference wireframes from the user

### 4. Summarize Context

Present to user:
```
Wireframe Context:
- Pages to wireframe: [list from specs]
- Grid: [columns] / [gutter] / [margins]
- Breakpoints: [list]
- Existing wireframes: [count] found
```

---

**Next:** → step-02-inventory.md
