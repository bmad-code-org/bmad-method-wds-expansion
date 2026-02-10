# Tutorial: Storyboarding

**Just show me how to do it.**

---

## Prerequisites

- Conceptual sketches (keyframe 0)
- 20 minutes

---

## Step 1: Identify Interactive Elements

Look at your sketch. What can change?

- Buttons (click → loading → success)
- Forms (empty → filling → validating → error/success)
- Dropdowns (closed → open → selected)
- Modals (hidden → appearing → visible → closing)

---

## Step 2: Pick One Element

Start with the most important interaction.

Ask Freya:

```
I have a [element type] in my [view name].

Help me storyboard all the states it goes through.
```

---

## Step 3: Define Keyframes

List every state, in order:

```
Keyframe 0: Default state
Keyframe 1: User hovers
Keyframe 2: User clicks
Keyframe 3: Loading
Keyframe 4: Success
```

Or for error paths:

```
Keyframe 4a: Error state
Keyframe 5a: User corrects
```

---

## Step 4: Capture Each Keyframe

For each state, document:

1. **What the user sees** (visual description)
2. **What triggered this state** (user action or system event)
3. **Why this matters** (UX purpose)

---

## Step 5: Visualize the Sequence

Options:

- **Multiple sketches** — One per keyframe
- **Annotated single sketch** — Labels for each state
- **Written description** — Freya can generate this

Ask Freya:

```
Generate a storyboard specification for [element]:

Include all keyframes from default to completion.
Explain WHY each transition happens.
```

---

## Step 6: Note Timing

Where relevant:

| Transition | Duration | Easing |
|------------|----------|--------|
| Hover → Active | 100ms | ease-out |
| Submit → Loading | instant | — |
| Loading → Success | 200ms | ease-in |

---

## Step 7: Save It

Add to your page specification:

```markdown
## Password Field Storyboard

### Keyframe 0: Default
- Input empty, eye icon closed
- No validation message

### Keyframe 1: User Types
- Characters masked
- Strength indicator appears (red: "Weak")

### Keyframe 2: Strong Password
- Strength indicator green: "Strong"
- Checkmark appears

### Keyframe 3: Show Password
- User clicks eye icon
- Characters visible
- Eye icon open
```

---

## Remember

**Scenario** = navigation between views
**Storyboard** = transformation within a view

Don't confuse them.

---

## Done!

You've storyboarded your interactive elements.

**Next:** [Module 11: Conceptual Specifications](../module-11-conceptual-specifications/tutorial.md)

---

*Tutorial from WDS Course: From Designer to Linchpin*
