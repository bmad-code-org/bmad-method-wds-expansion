# Module 17: Testing

**Time: 45 min | Agent: Idunn | Phase: Implementation**

---

## Verify Implementation Matches Spec

Code is written. Does it match your design?

---

## Why Test Against Specs?

Your specifications are the source of truth.

If implementation differs, one of them is wrong:
- Spec needs updating, or
- Implementation needs fixing

Testing finds the differences.

---

## Browser-Based Testing

Open the implementation. Open your spec. Compare.

### What to Check

| Check | How |
|-------|-----|
| Content | Does text match spec exactly? |
| States | Do all states work as specified? |
| Interactions | Do clicks/hovers behave correctly? |
| Layout | Is visual hierarchy correct? |
| Responsiveness | Does it work on all sizes? |

---

## The Testing Flow

```
┌─────────────┐
│  Open spec  │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│  Open impl  │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│  Compare    │
│  element by │
│  element    │
└──────┬──────┘
       │
       ▼
   Matches? ─── No ──► Document difference
       │
      Yes
       │
       ▼
┌─────────────┐
│    Next     │
│   element   │
└─────────────┘
```

---

## The Idunn Method

Idunn guides testing systematically:

> "Let's check the signup form against spec P01."
> "The button says 'Sign Up' but spec says 'Create Free Account'. Which is correct?"
> "Error state: spec says inline message, implementation shows toast. Mismatch."

She catches what eyes miss.

---

## Testing Checklist

For each page:

### Content
- [ ] Headlines match spec
- [ ] Body text matches spec
- [ ] Button labels match spec
- [ ] Error messages match spec
- [ ] Placeholder text matches spec

### States
- [ ] Default state correct
- [ ] Hover states work
- [ ] Active states work
- [ ] Disabled states work
- [ ] Error states display correctly
- [ ] Loading states show correctly
- [ ] Empty states handled

### Interactions
- [ ] Clicks trigger correct actions
- [ ] Forms validate correctly
- [ ] Navigation works
- [ ] Keyboard navigation works
- [ ] Touch works (if applicable)

### Visual
- [ ] Layout matches spec
- [ ] Spacing is correct
- [ ] Colors are correct
- [ ] Typography is correct
- [ ] Responsive breakpoints work

---

## When Implementation Differs

Three possibilities:

### 1. Spec Was Unclear

Fix: Update spec to be clearer. Implementation might be correct.

### 2. Implementation Is Wrong

Fix: Update implementation to match spec.

### 3. Better Idea During Implementation

Fix: Update spec to reflect improved approach. Document why.

**Never leave mismatches undocumented.**

---

## Test Results Document

```markdown
# Test Results: S01-User-Registration

## Tested: 2026-02-10
## Status: 2 issues found

## P01: Signup Form

### Content ✅
All text matches spec.

### States
- [x] Default
- [x] Hover
- [x] Active
- [ ] Error — message color differs (spec: #DC2626, impl: #EF4444)
- [x] Loading
- [x] Disabled

### Interactions ✅
All working correctly.

### Visual
- [ ] Submit button padding too large (spec: 16px, impl: 24px)

## Actions Required
1. Fix error message color
2. Fix button padding

## Notes
- Decided to keep larger padding (better touch target)
- Updated spec to reflect this change
```

---

## Acceptance Testing

Run through acceptance criteria:

```markdown
## Happy Path
- [x] User can enter email and password
- [x] Real-time validation shows errors
- [x] Submit button disabled when form invalid
- [x] Successful submission redirects to welcome
- [x] Welcome screen shows user's email

## Error Handling
- [x] Invalid email shows correct message
- [ ] Short password message differs — FIXED
- [x] Server error handled
- [x] Network error handled
```

---

## Output

- Test results document
- List of issues found
- Spec updates where needed
- Implementation fixes where needed

---

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Testing happy path only | Test all states |
| Ignoring small differences | Every difference matters |
| Not documenting results | Write test results doc |
| Fixing without updating spec | Keep them synchronized |

---

## Practice

Take one implemented page:

1. Open the spec
2. Open the implementation
3. Go through testing checklist
4. Document any differences
5. Decide: fix spec or fix implementation

---

## Next Module

**[Module 18: Product Evolution →](../module-18-product-evolution/module-18-product-evolution-overview.md)**

Products don't end at launch.

---

*Part of the WDS Course: From Designer to Linchpin*
