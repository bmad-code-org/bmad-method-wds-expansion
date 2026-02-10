# Module 15: Design Delivery

**Time: 45 min | Agent: Freya | Phase: Design**

---

## Freya's Final Step

You've designed. You've specified. You've visualized.

Now: validate and package.

---

## Two Parts

### 1. Validate

Is everything complete?

### 2. Deliver

Package for implementation.

---

## Validation Checklist

Before delivery, every specification must pass:

### Completeness

- [ ] All pages in scenario specified
- [ ] All elements documented
- [ ] All states defined
- [ ] All content written (no lorem ipsum)
- [ ] All interactions described
- [ ] Error states handled

### Traceability

- [ ] Every element connects to Trigger Map
- [ ] Personas referenced
- [ ] Driving forces addressed
- [ ] Features linked

### Quality

- [ ] Object IDs assigned
- [ ] Consistent terminology
- [ ] No ambiguity
- [ ] Accessibility considered

### Testability

- [ ] Acceptance criteria defined
- [ ] Success states clear
- [ ] Error conditions specified

---

## The Freya Method

Freya audits your specifications:

> "Page P02 is missing the error state for form validation."
> "Element signup-button has no Object ID."
> "This spec says 'appropriate error message' — what's the actual text?"

She finds gaps before developers do.

---

## The Delivery Package

```
E-PRD/Design-Deliveries/
└── DD01-User-Registration/
    ├── delivery-overview.md
    ├── scenarios/
    │   └── S01-User-Registration/
    │       ├── scenario-overview.md
    │       ├── P01-signup-form.md
    │       ├── P01-signup-form.html
    │       └── P02-welcome-screen.md
    ├── components/
    │   ├── button.md
    │   └── input.md
    └── acceptance-criteria.md
```

---

## Delivery Overview

```markdown
# DD01: User Registration

## Summary
First-time user signup flow from landing page to welcome dashboard.

## Scenarios Included
- S01-User-Registration

## Pages
| ID | Page | Status |
|----|------|--------|
| P01 | Signup Form | Ready |
| P02 | Welcome Screen | Ready |

## Components Used
- Button (primary, secondary)
- Input (text, password)

## Dependencies
- Authentication API
- Email service

## Acceptance Criteria
See: acceptance-criteria.md

## Notes for Development
- Mobile responsive required
- Form validation must be real-time
- Password strength indicator optional but recommended
```

---

## Acceptance Criteria

```markdown
# Acceptance Criteria: S01-User-Registration

## Happy Path
- [ ] User can enter email and password
- [ ] Real-time validation shows errors
- [ ] Submit button disabled when form invalid
- [ ] Successful submission redirects to welcome
- [ ] Welcome screen shows user's email

## Error Handling
- [ ] Invalid email shows "Please enter a valid email"
- [ ] Short password shows "Password must be at least 8 characters"
- [ ] Server error shows "Something went wrong. Please try again."
- [ ] Network error shows "Check your connection"

## Edge Cases
- [ ] Duplicate email shows "This email is already registered"
- [ ] Back button from welcome returns to signup (form cleared)
- [ ] Refresh during submission does not duplicate account

## Accessibility
- [ ] All inputs have labels
- [ ] Errors announced to screen readers
- [ ] Focus moves to first error on submit
- [ ] Touch targets minimum 44px
```

---

## Reference, Don't Duplicate

The delivery package **references** your design artifacts. It doesn't copy them.

When specs update, delivery stays current.

---

## Handoff to Idunn

Once delivered:

- Freya's work is complete
- Idunn takes over for implementation
- Developers can build from delivery package
- Testers can verify against acceptance criteria

---

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Incomplete specs | Run Freya's audit |
| Missing acceptance criteria | Write them before delivery |
| Lorem ipsum content | Use real copy |
| No Object IDs | Add them systematically |
| Vague requirements | Be specific |

---

## The Test

Can a developer who has never seen this project build it correctly from your delivery package?

If no, it's not ready.

---

## Practice

For one completed scenario:

1. Run through the validation checklist
2. Fill any gaps
3. Create delivery overview
4. Write acceptance criteria
5. Package for delivery

---

## Next Module

**[Module 16: Agentic Development →](../module-16-agentic-development/module-16-agentic-development-overview.md)**

Freya hands off to Idunn. Implementation begins.

---

*Part of the WDS Course: From Designer to Linchpin*