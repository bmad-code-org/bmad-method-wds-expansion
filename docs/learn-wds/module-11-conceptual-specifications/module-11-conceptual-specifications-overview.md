# Module 11: Conceptual Specifications

**Time: 60 min | Agent: Freya | Phase: Design**

---

## Every Decision Documented

This is where design becomes specification.

This is the core of WDS.

---

## Why Specifications Matter

> "The design IS the specification."

A sketch can be interpreted 10 different ways. A specification has one meaning.

When you specify, you decide. No ambiguity. No guessing. No "I thought you meant..."

---

## What You Document

For every element on every screen:

### 1. What Is It?

Name and type. Button, form field, card, modal.

### 2. Why Does It Exist?

Trace back to your Trigger Map.

- Which persona uses this?
- Which driving force does it address?
- Which feature does it implement?

### 3. How Does It Behave?

Every state. Every interaction.

- Default state
- Hover state
- Active state
- Disabled state
- Error state
- Loading state
- Empty state

### 4. What Content Does It Show?

Exact text. Not lorem ipsum.

- Headlines
- Labels
- Button text
- Error messages
- Helper text

---

## The Specification Format

```markdown
## Sign Up Form

### Purpose
Allow new users to create an account with minimal friction.

### Connects To
- Persona: Felix the Full-Stack
- Driving Force: "Want to try before committing"
- Feature: F03-Quick-Signup

### Elements

#### Email Field
- Type: Text input
- Label: "Email"
- Placeholder: "you@company.com"
- Validation: Valid email format
- Error message: "Please enter a valid email"

#### Password Field
- Type: Password input
- Label: "Password"
- Requirements: 8+ characters
- Show/hide toggle: Yes
- Error message: "Password must be at least 8 characters"

#### Submit Button
- Label: "Create Free Account"
- States: Default, Hover, Loading, Disabled
- Disabled when: Form invalid
- Loading when: Submitting

### States
- Default: Empty form, CTA prominent
- Filling: Real-time validation as user types
- Error: Inline messages below fields
- Submitting: Button shows loading spinner
- Success: Redirect to welcome screen

### Content
- Headline: "Start building in 2 minutes"
- Subtext: "No credit card required"
- CTA: "Create Free Account"
- Terms link: "By signing up, you agree to our Terms"
```

---

## The Freya Method

Freya ensures completeness:

> "You specified the error state for email, but not for password."
> "This button says 'Submit' — is that the actual label or a placeholder?"
> "What happens if the user has JavaScript disabled?"

She won't let you ship incomplete specs.

---

## Specification Depth

### Must Have
- All visible elements
- All states
- All content
- All interactions

### Should Have
- Edge cases
- Accessibility considerations
- Performance notes

### Nice to Have
- Animation details
- Micro-interactions
- Sound effects

Start with Must Have. Add the rest if time allows.

---

## Object IDs

Every specifiable element gets an ID:

```
signup-form
signup-email-field
signup-password-field
signup-submit-button
```

These IDs trace through implementation. Developers reference them. Testers verify them.

---

## Output

```
C-Scenarios/
└── S01-User-Registration/
    ├── scenario-overview.md
    ├── P01-signup-form.md      ← Page specification
    └── P02-welcome-screen.md
```

Each page gets its own specification file.

---

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Lorem ipsum content | Write real copy |
| Missing states | Document all states |
| Vague descriptions | Be specific |
| No connection to strategy | Reference Trigger Map |
| Incomplete error handling | Specify every error |

---

## The Test

Can a developer build this from your spec alone?

If they need to ask questions, your spec is incomplete.

---

## Practice

Take one page from your storyboard:

1. List every element
2. For each element, document WHAT, WHY, HOW, CONTENT
3. Define all states
4. Write actual copy
5. Review with Freya

---

## Next Module

**[Module 12: Functional Interface Components →](../module-12-functional-interface-components/module-12-functional-interface-components-overview.md)**

Time to identify reusable patterns.

---

*Part of the WDS Course: From Designer to Linchpin*
