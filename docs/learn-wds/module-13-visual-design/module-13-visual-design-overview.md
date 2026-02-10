# Module 13: Visual Design

**Time: 60 min | Agent: Freya | Phase: Design**

---

## Making It Real

You have specifications. Now make them visible.

This is where many designers get stuck. Let's unstick you.

---

## From Concept to Visual

Your specifications describe WHAT. Visual design shows HOW IT LOOKS.

- Colors
- Typography
- Spacing
- Imagery
- Icons
- Visual hierarchy

---

## The Visual Design Loop

```
Spec → Generate → Review → Refine → Generate → Approve
```

It's iterative. First attempt is rarely final.

---

## Tools

### Stitch (AI Generation)

Give Stitch your specification. It generates HTML/CSS.

```
"Generate a signup form based on this spec..."
```

Output: Working prototype you can see and click.

### Figma

Refine the AI output. Polish the details.

- Import from Stitch via html.to.design
- Adjust colors, spacing, typography
- Export back to code

### html.to.design

Bridge between code and Figma.

- Import HTML prototypes to Figma
- Export Figma designs to code

---

## Entry Points

| Starting Point | Approach |
|----------------|----------|
| Specification only | Generate with Stitch |
| Rough sketch | AI refines into visual |
| Inspiration image | AI extracts and applies style |
| Existing brand | Apply tokens to generated output |

---

## The Freya Method

Freya connects visuals to strategy:

> "This visual is beautiful, but does it match Felix's need for simplicity?"
> "The color contrast here might cause accessibility issues."
> "Your spec says primary CTA — but visually the secondary button draws more attention."

She keeps visuals aligned with intent.

---

## What to Design

### For Each Page

1. **Layout** — Position of elements
2. **Visual hierarchy** — What draws attention first
3. **Typography** — Font choices, sizes, weights
4. **Colors** — From your palette or brand
5. **Spacing** — Rhythm and breathing room
6. **States** — Hover, active, error, etc.

### Don't Forget

- Empty states
- Loading states
- Error states
- Mobile responsive (if applicable)

---

## Design Tokens

If using Design System (Modes 2-4), extract tokens:

```yaml
colors:
  primary: "#0066FF"
  secondary: "#6B7280"
  error: "#DC2626"

typography:
  heading: "Inter, 24px, 700"
  body: "Inter, 16px, 400"

spacing:
  sm: "8px"
  md: "16px"
  lg: "24px"
```

Tokens ensure consistency across all visuals.

---

## Output

Visual prototypes for each page:

```
C-Scenarios/
└── S01-User-Registration/
    ├── scenario-overview.md
    ├── P01-signup-form.md
    ├── P01-signup-form.html    ← Visual prototype
    └── P02-welcome-screen.md
```

---

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Design before spec | Spec first, always |
| Ignoring states | Design all states |
| Inconsistent styling | Use design tokens |
| Forgetting accessibility | Check contrast, sizes |
| Over-designing | Keep it simple |

---

## The Test

Does your visual match your specification exactly?

If there's a difference, update either the spec or the visual. Never leave mismatches.

---

## Practice

Take one specification from Module 11:

1. Generate visual with Stitch
2. Review against spec
3. Refine in Figma (or directly)
4. Verify all states are designed
5. Export final prototype

---

## Next Module

**[Module 14: Design System Modes →](../module-14-design-system-modes/module-14-design-system-modes-overview.md)**

How your components are managed.

---

*Part of the WDS Course: From Designer to Linchpin*
