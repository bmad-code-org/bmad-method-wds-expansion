# Module 14: Design System Modes

**Time: 30 min | Agent: Freya | Phase: Design**

---

## How Components Are Managed

You configured this at project setup. Now let's understand how each mode works in practice.

---

## The Four Modes

| Mode | When to Use |
|------|-------------|
| **1. None** | Quick projects, one-offs |
| **2. Building** | First project for a client |
| **3. Component Library** | Using shadcn/Radix/MUI |
| **4. Existing** | Second project, same client |

---

## Mode 1: None

### What It Means

No design system. Ad-hoc styling.

### How Freya Works

- Styles defined inline in page specs
- No component extraction
- Each element is self-contained

### Best For

- Landing pages
- Quick prototypes
- One-time projects
- Tight deadlines

### Trade-off

Consistency is manual. Reuse requires copy-paste.

---

## Mode 2: Building

### What It Means

Design system grows organically from your work.

### How Freya Works

As you design, she notices patterns:

> "This button appears in three specifications. Should we extract it as a component?"

You say yes → Goes into `D-Design-System/components/`

Future buttons reference it:

```markdown
### Submit Button
- Component: Button (primary)
- Label: "Save Changes"
```

### Best For

- First project for new client
- Greenfield products
- When brand is still forming

### The Evolution

```
Project 1: Mode 2 (Building)
    ↓
You create components
    ↓
Project 2: Mode 4 (Existing)
    ↓
You reuse what you built
```

---

## Mode 3: Component Library

### What It Means

Using external library (shadcn, Radix, MUI, etc.) with your branding.

### How Freya Works

She references library components:

> "This matches shadcn's Button component. Use primary variant?"

You apply your tokens on top:

```yaml
# Your tokens applied to shadcn
colors:
  primary: "#0066FF"  # Your brand blue
spacing:
  md: "16px"          # Your spacing scale
```

### Best For

- Speed to market
- Consistent base components
- Teams familiar with the library

### Trade-off

You get the library's patterns, not your own.

---

## Mode 4: Existing

### What It Means

Import design system from previous project.

### How Freya Works

She loads your existing components:

> "You have a Button component from the previous project. Use it here?"

You can extend:

```markdown
### New Variant
- Component: Button
- Variant: "outline" (NEW)
```

### Best For

- Second+ project for same client
- Product families
- Brand consistency across projects

### The Power

Your work compounds. Each project builds on the last.

---

## Mode Selection Flow

```
                    ┌──────────────────────┐
                    │  New Project Setup   │
                    └──────────┬───────────┘
                               │
                    ┌──────────▼───────────┐
                    │ Do you need reusable │
                    │     components?      │
                    └──────────┬───────────┘
                          No   │   Yes
                    ┌──────────┴───────────┐
                    ▼                       ▼
              Mode 1: None          ┌──────────────────┐
                                    │ Do you have an   │
                                    │ existing system? │
                                    └────────┬─────────┘
                                        No   │   Yes
                                    ┌────────┴─────────┐
                                    ▼                   ▼
                             ┌─────────────┐    Mode 4: Existing
                             │ External or │
                             │   custom?   │
                             └──────┬──────┘
                             External│Custom
                                    ┌┴─────────┐
                                    ▼          ▼
                          Mode 3: Library  Mode 2: Building
```

---

## Output

Depends on mode:

| Mode | Design System Output |
|------|---------------------|
| None | Nothing — inline only |
| Building | `D-Design-System/` grows |
| Library | `D-Design-System/tokens.yaml` |
| Existing | `D-Design-System/` extended |

---

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Building when should use Library | Evaluate existing options first |
| None when project will grow | Anticipate future needs |
| Existing when brand changed | Start fresh with Building |
| Over-engineering early | Start None, upgrade later |

---

## Practice

For your current project:

1. Which mode did you select?
2. Is it still the right choice?
3. If Mode 2, what components have emerged?
4. If Mode 3, which library components are you using?

---

## Next Module

**[Module 15: Design Delivery →](../module-15-design-delivery/module-15-design-delivery-overview.md)**

Time to package and deliver.

---

*Part of the WDS Course: From Designer to Linchpin*
