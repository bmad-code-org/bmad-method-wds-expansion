# Module 16: Agentic Development

**Time: 60 min | Agent: Idunn | Phase: Implementation**

---

## Build Iteratively

You have a complete delivery package.

Now build it. Piece by piece. With AI assistance.

---

## The Old Way vs. The WDS Way

### Old Way

```
Design everything → Hand off → Wait → Review → Disappointment
```

### WDS Way

```
Design one thing → Build it → Review → Iterate → Next thing
```

Smaller loops. Faster feedback. Better outcomes.

---

## Meet Idunn

Idunn is your implementation partner. She:

- Coordinates between design and development
- Tracks what's built vs. what's specified
- Documents decisions along the way
- Keeps the feedback loop tight

---

## The Agentic Development Loop

```
┌─────────────┐
│  Pick spec  │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│  Build it   │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│  Review vs  │
│    spec     │
└──────┬──────┘
       │
   Match? ─── No ──► Fix
       │
      Yes
       │
       ▼
┌─────────────┐
│ Document &  │
│    next     │
└─────────────┘
```

---

## Agent Dialogs

Document your AI conversations:

```
docs/F-Agent-Dialogs/
└── 2026-02-10-signup-form/
    ├── dialog.md           ← The conversation
    ├── decisions.md        ← What was decided
    └── changes.md          ← What changed from spec
```

---

## Why Document?

### You'll Forget

"Why did we make the password field 20 characters max?"

The answer is in the dialog.

### Others Need Context

New team member joins. They can read the history.

### AI Context Carries Forward

Start a new session? Load the dialog. Context preserved.

---

## Dialog Structure

```markdown
# Agent Dialog: Signup Form Implementation

## Meta
- Date: 2026-02-10
- Specification: P01-signup-form.md
- Status: Complete

## Decisions Made

### Password Validation
- Decision: Validate on blur, not on keypress
- Reason: Less jarring for user
- Spec impact: Updated state transitions

### Error Animation
- Decision: Shake animation on error
- Reason: Clear visual feedback
- Spec impact: None (implementation detail)

## Changes from Spec

| Element | Spec Said | Built As | Reason |
|---------|-----------|----------|--------|
| Error message | Red text | Red box | Accessibility contrast |

## Learnings
- Real-time validation needs debounce
- Password toggle icon needs larger touch target
```

---

## The Idunn Method

Idunn keeps you aligned:

> "The spec says 8 character minimum. You've implemented 6. Which is correct?"
> "This interaction isn't in the spec. Should we update the spec or remove the feature?"
> "Good implementation. Let's document why we chose shake animation."

She ensures specs and code stay synchronized.

---

## What to Build When

### Build Order

1. **Core happy path first** — Main functionality
2. **Error states second** — What can go wrong
3. **Edge cases third** — Unusual but possible
4. **Polish last** — Animations, micro-interactions

### One Thing at a Time

Don't build the whole page. Build one element. Verify. Next element.

---

## Spec Divergence

Sometimes implementation reveals spec issues:

| Situation | Action |
|-----------|--------|
| Spec unclear | Clarify with Freya |
| Spec impossible | Update spec |
| Better implementation idea | Document, consider spec update |
| Pure implementation detail | Document, don't update spec |

---

## Output

- Working implementation matching specs
- Agent dialogs documenting decisions
- Spec updates where needed

---

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Building everything at once | One element at a time |
| Ignoring spec divergence | Document every difference |
| Not documenting decisions | Write dialogs as you work |
| Over-polishing early | Core functionality first |

---

## Practice

Take one page specification:

1. Start an agent dialog document
2. Build one element
3. Compare to spec
4. Document any decisions
5. Repeat for next element

---

## Next Module

**[Module 17: Testing →](../module-17-testing/module-17-testing-overview.md)**

Verify implementation matches design.

---

*Part of the WDS Course: From Designer to Linchpin*
