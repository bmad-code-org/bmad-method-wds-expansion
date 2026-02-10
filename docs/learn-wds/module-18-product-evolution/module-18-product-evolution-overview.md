# Module 18: Product Evolution

**Time: 30 min | Agent: Idunn | Phase: Implementation**

---

## Products Don't End at Launch

Users give feedback. Business shifts. Technology changes.

The cycle continues.

---

## Same Creative Discipline, Smaller Scope

Everything you learned applies to changes too:

- New feature? Start with Trigger Map connection.
- Bug fix? Update spec, then implementation.
- User feedback? Trace to personas and driving forces.

The process scales down as well as up.

---

## The Evolution Cycle

```
┌─────────────┐
│  Feedback   │ ◄── Users, analytics, business
└──────┬──────┘
       │
       ▼
┌─────────────┐
│  Connect to │
│ Trigger Map │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│ Update spec │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│   Deliver   │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│    Test     │
└──────┬──────┘
       │
       └──────────► Repeat
```

---

## Types of Evolution

### Feature Additions

New capability that didn't exist.

1. Does it serve existing personas?
2. Does it address new driving forces?
3. Outline the scenario
4. Design → Specify → Build → Test

### Feature Modifications

Existing capability needs to change.

1. Why the change? User feedback? Business need?
2. Update existing specs
3. Build the change
4. Test against updated specs

### Bug Fixes

Something doesn't work as specified.

1. Is spec correct? Or is implementation wrong?
2. Fix the right thing
3. Document the fix

### Optimizations

Same functionality, better experience.

1. What's the improvement?
2. Does it affect specs?
3. Update if needed
4. Build and test

---

## Connecting to Trigger Map

Every change should trace back:

| Change Request | Trigger Map Connection |
|----------------|----------------------|
| "Add dark mode" | Felix values customization |
| "Simplify checkout" | Harriet fears complexity |
| "Add export feature" | Business goal: power user retention |
| "Fix slow loading" | All personas: performance drives satisfaction |

If it doesn't connect, question whether it should happen.

---

## Version Control for Specs

Specs evolve. Track changes:

```markdown
## Changelog

### v1.2 (2026-03-15)
- Added: Dark mode toggle
- Changed: Button padding increased
- Removed: Deprecated social login

### v1.1 (2026-02-20)
- Fixed: Error message wording
- Added: Password strength indicator

### v1.0 (2026-02-10)
- Initial specification
```

---

## Your Design System Grows

Remember the modes?

| Project | Mode |
|---------|------|
| Project 1 | Building (Mode 2) |
| Project 2 | Existing (Mode 4) |
| Project 3 | Existing (Mode 4) |

Your work compounds. Each project builds on the last.

New components? Add them to your system.
New patterns? Document them.
New learnings? Incorporate them.

---

## The Idunn Method

Idunn keeps evolution organized:

> "This feature request doesn't connect to any persona. Should we add a new persona or reconsider the feature?"
> "The spec for this page is now v1.3. Make sure you're building against the latest."
> "Good improvement. Let's update the component definition for future use."

She ensures changes don't create chaos.

---

## Avoiding Spec Drift

Over time, specs and reality can diverge.

### Prevention

- Update specs with every change
- Test regularly against specs
- Review specs quarterly

### Recovery

If specs are out of date:

1. Audit current implementation
2. Update specs to match reality
3. Document differences as intentional
4. Resume normal process

---

## Output

- Updated specifications
- Updated delivery packages
- Updated design system components
- Version history maintained

---

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Skipping spec updates | Always update specs |
| Losing Trigger Map connection | Trace every change |
| Not versioning specs | Add changelog |
| Letting drift accumulate | Regular audits |

---

## The Bigger Picture

You're not just a designer anymore.

You're the keeper of creative discipline:
- Strategy traced through design
- Design expressed in specifications
- Specifications realized in code
- Code verified against specifications
- Evolution maintaining the chain

**You are the linchpin.**

---

## Course Complete

You've learned:

1. The paradigm shift
2. How to set up WDS
3. Strategy with Saga
4. Design with Freya
5. Implementation with Idunn
6. Evolution as a practice

Now go build something amazing.

---

## What's Next?

- **Apply to a real project** — The only way to learn
- **Join the community** — [Discord](https://discord.gg/whiteport)
- **Contribute** — WDS is open source
- **Teach others** — Spread creative discipline

---

*Part of the WDS Course: From Designer to Linchpin*

**[← Back to Course Overview](../00-course-overview.md)**

---

*Created by Mårten Angner and the Whiteport team*
*Part of the BMad Method ecosystem*
