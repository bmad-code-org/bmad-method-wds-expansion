# Module 12: Functional Interface Components

**Time: 45 min | Agent: Freya | Phase: Design**

---

## Identify Reusable Patterns

As you specify, patterns emerge.

Same button. Same card. Same form pattern.

---

## Why Extract Components?

### Consistency

Same component = same behavior everywhere.

### Efficiency

Specify once, reference many times.

### Maintainability

Change once, update everywhere.

### Communication

Shared vocabulary with developers.

---

## When to Extract

A pattern becomes a component when:

- **Appears 3+ times** — Not just twice
- **Consistent behavior** — Same interactions everywhere
- **Worth centralizing** — Benefits from single definition
- **Meaningful abstraction** — Not just "box with text"

---

## Component Anatomy

```markdown
## Button Component

### Description
Primary action trigger used throughout the application.

### Variants
| Variant | Use Case |
|---------|----------|
| Primary | Main actions |
| Secondary | Alternative actions |
| Ghost | Tertiary actions |
| Danger | Destructive actions |

### States
- Default
- Hover
- Active (pressed)
- Focused
- Disabled
- Loading

### Props
| Prop | Type | Default | Description |
|------|------|---------|-------------|
| variant | string | primary | Visual style |
| size | string | medium | sm, md, lg |
| disabled | boolean | false | Disables interaction |
| loading | boolean | false | Shows spinner |
| icon | node | null | Optional icon |
| fullWidth | boolean | false | Spans container |

### Usage Rules
- One primary button per screen
- Always has text label (icon optional)
- Minimum touch target: 44px
- Loading replaces text with spinner

### Accessibility
- Role: button
- Keyboard: Enter/Space to activate
- Focus visible on keyboard navigation
- Aria-disabled when disabled
- Aria-busy when loading
```

---

## The Freya Method

Freya notices patterns as you specify:

> "This is the third time you've specified a card with image, title, and description. Should we extract it as a component?"

> "Your submit buttons are inconsistent — some say 'Submit', others say 'Save'. Should we standardize?"

She helps you see what's becoming a pattern.

---

## Component vs. Instance

**Component:** The definition (Button)
**Instance:** A specific usage (signup-submit-button)

In your specs:
- Define components in your Design System
- Reference components in your page specs

```markdown
### Submit Button
- Component: Button (primary, large)
- Label: "Create Free Account"
- OnClick: Submit form
```

---

## Not Everything Is a Component

Some things are just styled elements:

| Component | Not a Component |
|-----------|-----------------|
| Button | A specific color |
| Card | A specific margin |
| Input | A single label |
| Modal | A page layout |

Components have behavior. Styles have appearance.

---

## Output

Component candidates documented:

```
D-Design-System/
└── components/
    ├── button.md
    ├── card.md
    ├── input.md
    └── modal.md
```

If Design System Mode is "None", these stay as inline specifications.

---

## Design System Modes

| Mode | Component Handling |
|------|-------------------|
| **None** | Inline in page specs |
| **Building** | Extract to D-Design-System/ |
| **Library** | Reference external (shadcn, etc.) |
| **Existing** | Import from previous project |

---

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Extracting too early | Wait for 3+ usages |
| Too specific | Keep components generic |
| Too generic | Must have clear purpose |
| Missing states | Document all states |
| Inconsistent naming | Use clear conventions |

---

## Practice

Review your specifications from Module 11:

1. Identify repeated patterns
2. List elements that appear 3+ times
3. Document one as a component
4. Update specs to reference it

---

## Next Module

**[Module 13: Visual Design →](../module-13-visual-design/module-13-visual-design-overview.md)**

Time to make it real.

---

*Part of the WDS Course: From Designer to Linchpin*
