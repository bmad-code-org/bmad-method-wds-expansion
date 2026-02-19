# Step 04: Extract Design System

**Goal:** Consolidate all design tokens and component patterns into a structured WDS-compatible design system document.

---

## Process

### 1. Extract Design Tokens

Take the raw values captured in Step 02 and organize them into a structured token system.

#### Colors

Group colors by purpose:

```yaml
colors:
  brand:
    primary: "#2563EB"
    primary-hover: "#1D4ED8"
    secondary: "#7C3AED"
    secondary-hover: "#6D28D9"
  text:
    heading: "#111827"
    body: "#4B5563"
    muted: "#9CA3AF"
    inverse: "#FFFFFF"
  background:
    page: "#FFFFFF"
    surface: "#F9FAFB"
    muted: "#F3F4F6"
  border:
    default: "#E5E7EB"
    focus: "#2563EB"
  feedback:
    success: "#059669"
    error: "#DC2626"
    warning: "#D97706"
    info: "#2563EB"
```

#### Typography

```yaml
typography:
  font-family:
    heading: "Inter, sans-serif"
    body: "Inter, sans-serif"
    mono: "JetBrains Mono, monospace"
  scale:
    h1: { size: "48px", weight: 700, line-height: 1.2 }
    h2: { size: "36px", weight: 700, line-height: 1.25 }
    h3: { size: "24px", weight: 600, line-height: 1.3 }
    h4: { size: "20px", weight: 600, line-height: 1.4 }
    body-lg: { size: "18px", weight: 400, line-height: 1.6 }
    body: { size: "16px", weight: 400, line-height: 1.5 }
    small: { size: "14px", weight: 400, line-height: 1.4 }
    caption: { size: "12px", weight: 500, line-height: 1.4 }
```

#### Spacing

```yaml
spacing:
  base: "4px"
  scale: [4, 8, 12, 16, 20, 24, 32, 40, 48, 64, 80, 96]
  # Common patterns observed:
  # Section padding: 64-96px vertical
  # Card padding: 24px
  # Element gap: 16px
  # Tight gap: 8px
```

#### Other Tokens

```yaml
border-radius:
  sm: "4px"
  md: "8px"
  lg: "12px"
  full: "9999px"

shadows:
  sm: "0 1px 2px rgba(0,0,0,0.05)"
  md: "0 4px 6px rgba(0,0,0,0.1)"
  lg: "0 10px 15px rgba(0,0,0,0.1)"

breakpoints:
  sm: "640px"
  md: "768px"
  lg: "1024px"
  xl: "1280px"
```

### 2. Catalog Reusable Components

For each component in the inventory (from Step 02), document it as a component specification:

```markdown
### Button

**Variants:**
| Variant | Background | Text | Border | Usage |
|---------|-----------|------|--------|-------|
| Primary | brand.primary | text.inverse | none | Main CTAs |
| Secondary | transparent | brand.primary | brand.primary | Secondary actions |
| Ghost | transparent | text.body | none | Tertiary actions |

**Sizes:**
| Size | Padding | Font Size | Height |
|------|---------|-----------|--------|
| sm | 8px 16px | 14px | 32px |
| md | 12px 24px | 16px | 40px |
| lg | 16px 32px | 18px | 48px |

**States:** default, hover, focus, active, disabled, loading
```

### 3. Document Component Variants and States

For each component, ensure you capture:

- **Variants** — Visual variations (primary/secondary, small/medium/large)
- **States** — Interactive states (default, hover, focus, active, disabled, loading, error, success)
- **Content slots** — What content goes where (icon, label, description, image)
- **Responsive behavior** — How the component adapts at different breakpoints

### 4. Map Token Usage to Components

Show which tokens each component uses. This connects the token system to the component system:

| Component | Colors Used | Typography | Spacing | Border Radius |
|-----------|------------|------------|---------|---------------|
| Button (Primary) | brand.primary, text.inverse | body (600 weight) | 12px 24px | md |
| Card | background.page, border.default | h3 + body | 24px padding, 16px gap | lg |
| Input | background.page, border.default, border.focus | body | 12px 16px | md |
| Badge | feedback.*, text.inverse | small (600 weight) | 4px 8px | full |

### 5. Output in WDS Design System Format

Compile everything into a single design system document:

```markdown
# Design System: [Target Name]

**Extracted from:** [URL / Source]
**Date:** [Date]

## Design Tokens
[Colors, Typography, Spacing, Radii, Shadows, Breakpoints]

## Components
[Each component with variants, states, token usage]

## Patterns
[Layout patterns, form patterns, navigation patterns observed]

## Notes
[Any inconsistencies found, assumptions made, areas needing clarification]
```

Save to the output folder alongside the page specs from Step 03.

---

## Checklist

- [ ] Color tokens organized by purpose (brand, text, background, border, feedback)
- [ ] Typography scale documented (families, sizes, weights, line heights)
- [ ] Spacing system extracted (base unit + scale)
- [ ] Additional tokens captured (radii, shadows, breakpoints)
- [ ] Each component cataloged with variants and states
- [ ] Token-to-component mapping created
- [ ] Design system document saved in WDS format
- [ ] Output is consistent with page specs from Step 03

---

## Next Step

Return to activity menu
