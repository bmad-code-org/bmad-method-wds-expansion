# Tutorial 08: Create Your Scenario Outlines

**Hands-on guide to defining user journeys with Freya**

---

## Overview

This tutorial walks you through creating scenario outlines that map user journeys across your application.

**Time:** 20-25 minutes
**Prerequisites:** Trigger Map completed (Module 06)
**Agent:** Freya
**What you'll create:** Scenario outline documents in `C-UX-Scenarios/`

---

## Before You Start

**You'll need:**

- Your completed Trigger Map
- Understanding of your personas and their goals
- Product Brief for context

**Freya will help you:**

- Identify which scenarios to prioritize
- Structure each scenario correctly
- Connect scenarios to your Trigger Map
- Ensure dual value (user + business)

---

## Step 1: Start the Conversation with Freya (2 min)

### Open your AI IDE and initiate:

**You say:**
> "I want to create scenario outlines for my project. I have my Trigger Map ready. Can you help me identify and structure the key user journeys?"

**Freya responds with context questions about your personas.**

### Share your Trigger Map:

Reference your B-Trigger-Map folder or summarize your personas and their primary goals.

---

## Step 2: Freya Analyzes and Suggests Scenarios (5 min)

### Ask Freya to analyze your Trigger Map:

**You say:**
> "I'd like you to analyze my Trigger Map and suggest prioritized scenarios. Here's my Product Brief and Trigger Map..." (share the files)

### Freya analyzes automatically:

Freya examines:
- Your top business goals (from Product Brief)
- Priority personas (from Workshop 4 rankings)
- Top driving forces per persona
- Feature-to-driver connections

**Then selects strategic context** from the Trigger Map for potential scenarios.

### Freya presents ranked suggestions:

> **Freya:** "Based on your Trigger Map, I've identified 8 potential scenarios. Here are the top 3 by strategic value:
>
> **S01-Family-Setup** (Priority #1)
> - Business Goal: BG01 - Multi-user adoption
> - Persona: Harriet the Household Manager (your #1 priority)
> - Driver: Need to get whole family on same page (her #1 driver)
> - Why this matters: Household with multiple members = higher retention
> - Estimated impact: High (multiplier effect)
>
> **S02-Daily-Overview** (Priority #2)
> - Business Goal: BG02 - Daily active usage
> - Persona: Felix the Full-Stack (Harriet's spouse)
> - Driver: Quick visibility into what's needed (his #2 driver)
> - Why this matters: Enables daily habit formation
> - Estimated impact: High (retention driver)
>
> **S03-Task-Completion** (Priority #3)
> - Business Goal: BG02 - Daily active usage
> - Persona: Kids (Junior Members)
> - Driver: Clear expectations and progress visibility
> - Why this matters: Completes family loop
> - Estimated impact: Medium (enabler for S01/S02)
>
> Should we start with S01-Family-Setup?"

### You validate and adjust:

**You respond:**
> "Yes, S01 makes sense. But should S03 happen first, or can they be parallel?"

**Freya:**
> "Good question. S01 is the entry point - users must set up household first. S02 and S03 can follow in any order. S01 → (S02 + S03 in parallel) → complete activation."

---

## Step 3: Build First Scenario Outline (5 min)

### Freya starts with what she knows:

**Freya:**
> "Let's build S01-Family-Setup together. I already have the strategic context from your Trigger Map:
>
> **Strategic Context** ✓
> - Business Goal: BG01 - Multi-user adoption
> - Persona: Harriet the Household Manager
> - Driver: Need to get whole family on same page
> - Transaction: Set up household + invite family members
>
> Now I need your help with the details. First, the **Usage Situation** — when and why would Harriet start this journey? What's her emotional state?"

**You respond:**

> "She just downloaded the app after seeing a Facebook ad. It's evening after kids are in bed. She's motivated but skeptical — she's tried other family apps that nobody used."

**Freya documents:**

> "Perfect. Got it:
> - When: Evening, after kids in bed
> - Why: Saw Facebook ad, motivated to solve coordination problem
> - Emotional state: Cautiously optimistic but skeptical
> - Context: Tried 2 other apps that failed
>
> Next: **Natural Starting Point** — how does she arrive at the first screen?"

**You respond:**

> "She clicks the download link from the Facebook ad, which takes her to the landing page."

**Freya:**

> "✓ Natural starting point documented. Now let's define **Current State** and **Desired State**..."

**You provide:**
> "Current: She's on the landing page, curious but uncommitted. Desired: She has a household set up with at least one family member invited, feeling like she's actually made progress."

---

## Step 4: Map the Linear Flow (5 min)

### Freya asks about the journey:

> "Walk me through the steps. What logical views does the user pass through between landing page and having a household with an invited member?"

**Think through each navigation:**

1. Where do they start?
2. What action moves them forward?
3. What's the next logical view?
4. Repeat until desired state reached

**Example response:**

> "Landing page, they click 'Start Free.' Then signup form, they enter email and password. Then household creation, they name the household. Then invite screen, they send an invite to a family member. Then dashboard with confirmation."

### Freya structures it:

```
## Linear Flow
1. Landing Page → (Click "Start Free" CTA)
2. Signup Form → (Submit credentials)
3. Household Creation → (Enter household name)
4. Invite Family → (Send invite email)
5. Dashboard with Confirmation ✓
```

---

## Step 5: Validate Value Check (3 min)

### Freya prompts:

> "Let's verify this scenario has dual value. What does Harriet get from completing this journey?"

**You respond:**

> "She has a household set up and a family member invited. She feels like she's actually started using the app, not just signed up. She can see it might actually work."

**Freya:**

> "And what does the business get?"

**You respond:**

> "A new user in the activation funnel, plus a second user invited — which increases likelihood of retention. That second user is crucial for the network effect."

### Freya documents and confirms:

> "Perfect. Value Check validated:
>
> **Value Check**
> - User: Household created, family invited, feels like real progress
> - Business: Activated user + second user invited (retention signal + network effect)
>
> **Connections** (already established from Trigger Map):
> - Persona: Harriet the Household Manager ✓
> - Driving Force: "Need to get whole family on same page" ✓
> - Business Goal: BG01 - Multi-user adoption ✓
> - Feature: F01-Family-Onboarding
> - Platform: Mobile PWA (iOS/Android)
>
> The scenario outline is complete!"

---

## Step 6: Review the Complete Scenario (2 min)

### Freya presents the full outline:

```markdown
# S01-Family-Setup

## Strategic Context
- Business Goal: BG01 - Multi-user adoption
- Persona: Harriet the Household Manager (Priority #1)
- Driving Force: "Need to get whole family on same page" (Top driver)
- Transaction: Set up household + invite family members

## Usage Situation
**When:** Evening after kids in bed, just saw Facebook ad
**Why:** Motivated to solve family coordination problem
**Emotional State:** Cautiously optimistic but skeptical (tried apps before)
**Context:** Tried 2 other family apps that nobody used

## Natural Starting Point
Clicks download link from Facebook ad → arrives at landing page.
Previous action: Saw ad on Facebook feed.

## Current State
Visitor on landing page, just discovered the app.
Curious but skeptical — wondering if this will actually help.

## Desired State
Account created, household named, family member invited.
Feeling accomplished — "We've actually started this."

## Value Check
- User: Household created, family invited, feels like real progress
- Business: Activated user + second user invited (retention signal + network effect)

## Persona
Harriet the Household Manager
- Driving Force: "Need to get whole family on same page"
- Fear: Another app nobody will use

## Linear Flow
1. Landing Page → (Click "Start Free" CTA)
2. Signup Form → (Submit credentials)
3. Household Creation → (Enter household name)
4. Invite Family → (Send invite email)
5. Dashboard with Confirmation ✓

## Connections
- Feature: F01-Family-Onboarding
- Business Goal: BG01 - Multi-user adoption
- Platform: Mobile PWA (iOS/Android)
```

### Verify and adjust:

> "Does this capture the journey accurately? Anything missing or incorrect?"

---

## Step 7: Continue with Remaining Scenarios (5 min)

### Freya suggests the next priority:

> "S01-Family-Setup is complete. Based on my analysis, should we continue with S02-Daily-Overview (Priority #2) or S03-Task-Completion (Priority #3)?
>
> I'd suggest S02 next since it addresses the activation loop after setup. S03 can follow."

**You validate:**

> "Agreed, let's do S02-Daily-Overview."

### Freya already has the strategic context:

> "Here's the strategic context for S02:
> - Business Goal: BG02 - Daily active usage
> - Persona: Felix the Full-Stack (Harriet's spouse)
> - Driver: Quick visibility into what's needed
> - Transaction: View today's tasks and dog care schedule
>
> Now, **Usage Situation** for Felix..."

Work through S02 using the same collaborative pattern:
1. Freya provides strategic context (from Trigger Map)
2. You provide Usage Situation
3. You provide Natural Starting Point
4. You define Current State + Desired State
5. Validate Value Check
6. Define Linear Flow
7. Freya documents complete scenario

### Freya tracks progress:

> "We've completed:
> - S01-Family-Setup ✓
> - S02-Daily-Overview ✓
> - S03-Task-Completion (in progress)
>
> These 3 cover your core activation flow. Any other critical journeys to outline?"

---

## Step 8: Save the Scenarios (2 min)

### Freya saves each scenario:

```
C-UX-Scenarios/
├── S01-Family-Setup/
│   └── scenario-overview.md
├── S02-Daily-Overview/
│   └── scenario-overview.md
├── S03-Task-Completion/
│   └── scenario-overview.md
```

### Confirm the structure:

> "I've created the scenario folders with overview documents. Each scenario is now ready for the next steps: conceptual sketching and detailed specifications."

---

## What You've Created

### For each scenario:

- **Strategic Context** — Strategic foundation from Trigger Map (Freya provides)
- **Usage Situation** — When, why, emotional context (you provide)
- **Natural Starting Point** — How they arrive (you provide)
- **Current State** — Clear starting point (you define)
- **Desired State** — Clear end goal (you define)
- **Value Check** — User and business value confirmed
- **Persona** — Connected to Trigger Map
- **Linear Flow** — Steps from start to finish (you map)
- **Connections** — Linked to features and goals (from Trigger Map + additions)

### Your folder structure:

```
C-UX-Scenarios/
├── S01-Family-Setup/
│   └── scenario-overview.md
├── S02-Daily-Overview/
│   └── scenario-overview.md
├── S03-Task-Completion/
│   └── scenario-overview.md
└── ...
```

---

## What Happens Next

### Immediate:

- Each scenario is a roadmap for design
- Logical views become pages to sketch
- Linear flow guides the user experience

### Next Module:

- **Module 09: Conceptual Sketching** — Visualize the default state of each logical view
- Take one scenario and sketch what the user sees at each step

---

## Tips for Success

**DO:**

- Keep scenarios linear (no branches)
- Connect every scenario to the Trigger Map
- Include both user and business value
- Be specific about mental states

**DON'T:**

- Design pages in isolation
- Include edge cases in the scenario outline
- Create more scenarios than you need for MVP
- Skip the persona connection

---

## Common Questions

**Q: How many scenarios should I have?**
A: For MVP, typically 3-8. Each persona's primary goal = one scenario. Start core, expand later.

**Q: What if a scenario feels too long?**
A: Consider breaking it into two scenarios. If there's a natural "milestone" in the middle, that might be two journeys.

**Q: Where do error states go?**
A: In page specifications (Module 11), not scenario outlines. The scenario is the sunshine path.

**Q: Can one view appear in multiple scenarios?**
A: Absolutely. The Dashboard might be the end of S01 and the start of S02. That's expected.

---

## You've Completed Module 08!

**Your scenarios are outlined.** You know:
- The journeys you're designing
- Who is taking each journey
- What value each journey delivers

---

## Next Module

**[Module 09: Conceptual Sketching →](../module-09-conceptual-sketching/module-09-conceptual-sketching-overview.md)**

Time to visualize what the user sees at each step.

---

[← Back to Lesson 2](lesson-03-mapping-the-journey.md) | [Back to Module Overview](module-08-outline-scenarios-overview.md)

*Part of Module 08: Outline Scenarios*
