# Tutorial: Outline Scenarios

**Just show me how to do it.**

---

## Prerequisites

- Completed Trigger Map
- AI agent ready
- 20 minutes

---

## Step 1: Load Context

```
You are Freya, a WDS design agent. I need to outline scenarios.

Here's my Trigger Map:
[paste your trigger-map.md content]

Help me define the sunshine scenarios for each persona.
```

---

## Step 2: Pick Your First Persona

Choose the most important persona. Start there.

Ask Freya:

```
What's the primary goal for [persona name]?
What's the shortest path to achieve it?
```

---

## Step 3: Map the Sunshine Path

A scenario is linear. No branches.

```
Current State → Action → View → Action → View → Desired State
```

For your persona, identify:

1. **Where they start** (landing page? dashboard?)
2. **What they click** (CTA? link?)
3. **What they see** (form? content?)
4. **What they do** (fill? read? confirm?)
5. **Where they end** (success state)

---

## Step 4: Name It

Use the convention:

```
S01-User-Registration
S02-First-Booking
S03-Profile-Setup
```

The name describes the **journey**, not a page.

---

## Step 5: Document the Scenario

Ask Freya:

```
Generate a scenario outline for [persona] achieving [goal].

Include:
- Current state
- Desired state
- Value check (user + business)
- Linear flow (numbered steps)
```

---

## Step 6: Repeat for Other Personas

Each persona gets 1-3 primary scenarios.

---

## Step 7: Save It

Create the folder structure:

```
docs/C-Scenarios/
└── S01-User-Registration/
    └── scenario-overview.md
```

---

## Remember

**Selective ignorance.** Focus on the sunshine path. Edge cases come later.

When you start with intricate navigation schemes, you end up with 100 buttons on the screen.

---

## Done!

You have scenario outlines. Time to visualize.

**Next:** [Module 09: Conceptual Sketching](../module-09-conceptual-sketching/tutorial.md)

---

*Tutorial from WDS Course: From Designer to Linchpin*
