# Module 10: Storyboarding

**Time: 45 min | Agent: Freya | Phase: Design**

---

## Transformations Within a View

You have sketches of your pages. But pages aren't static.

Things change. Elements transform. States shift.

**Without leaving the page.**

---

## Scenario vs. Storyboard

| Concept | What Changes | Example |
|---------|--------------|---------|
| **Scenario** | Logical views change | User navigates from Signup to Welcome |
| **Storyboard** | Elements within a view change | Signup form shows loading → success → confetti |

A scenario is the journey **across** pages.

A storyboard is the transformation **within** a page.

---

## The Default State

Every page starts somewhere.

This is **keyframe 0** — the default state of all objects on the screen.

Your sketch from Module 09? That's typically the default state.

What happens next is the storyboard.

---

## What Storyboards Capture

### Interactions

User does something. Element responds.

- Button pressed → Loading spinner appears
- Input focused → Placeholder fades, label moves
- Accordion clicked → Content expands
- Drag initiated → Element follows cursor

### Animations

Something changes over time.

- Form submitted → Success message fades in
- Error occurs → Input shakes, border turns red
- Timer counts down → Progress bar shrinks
- Content loads → Skeleton replaced with data

### State Transitions

System state changes, view reflects it.

- Logged out → Logged in (same page, different elements visible)
- Empty → Has data
- Loading → Loaded
- Valid → Invalid

---

## Storyboard Format

Add the storyboard images to the section in question.

Specify step by step:

```markdown
## Password Field Storyboard

### Keyframe 0: Default State
[Image: password-field-default.png]
- Input empty
- Eye icon visible (closed)
- No validation message

### Keyframe 1: User Types
[Image: password-field-typing.png]
- Characters masked as dots
- Strength indicator appears
- Shows "Weak" in red

### Keyframe 2: Password Strong
[Image: password-field-strong.png]
- Strength indicator fills
- Shows "Strong" in green
- Checkmark appears

### Keyframe 3: Show Password
[Image: password-field-visible.png]
- User clicks eye icon
- Characters become visible
- Eye icon opens
```

---

## Why Each Change Happens

Don't just show what changes. Explain **why**.

| Keyframe | What Changes | Why |
|----------|--------------|-----|
| 0 → 1 | Strength indicator appears | User needs feedback while typing |
| 1 → 2 | Color shifts red → green | Reinforce password quality visually |
| 2 → 3 | Characters visible | User wants to verify what they typed |

---

## The Freya Method

Freya helps you think through on-page transformations:

> "When the user submits, what do they see while waiting?"
> "This dropdown opens instantly. Should it animate?"
> "The error appears, but how does the user know which field?"

She ensures every state change serves the user.

---

## Common Storyboard Elements

| Element | Common Transforms |
|---------|-------------------|
| **Buttons** | Default → Hover → Active → Loading → Disabled |
| **Forms** | Empty → Filling → Validating → Error/Success |
| **Modals** | Closed → Opening → Open → Closing |
| **Cards** | Collapsed → Expanded |
| **Notifications** | Hidden → Appearing → Visible → Dismissing |
| **Loaders** | Not visible → Spinning → Complete |

---

## Output

For each interactive section of your page:

- Keyframe images showing transformation
- Step-by-step description of changes
- Reason for each change
- Timing/duration where relevant

This becomes the specification for developers.

---

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Confusing with scenarios | Storyboards stay on one page |
| Missing intermediate states | Show every step, not just start/end |
| No "why" | Explain the purpose of each change |
| Forgetting error states | What happens when things fail? |

---

## Practice

Take one interactive section from your sketch:

1. Identify the default state (keyframe 0)
2. List all possible changes
3. Draw/describe each keyframe
4. Explain why each change happens
5. Note timing if relevant

---

## Next Module

**[Module 11: Conceptual Specifications →](../module-11-conceptual-specifications/module-11-conceptual-specifications-overview.md)**

Document every decision.

---

*Part of the WDS Course: From Designer to Linchpin*
