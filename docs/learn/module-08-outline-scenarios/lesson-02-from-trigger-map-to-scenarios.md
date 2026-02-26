# Module 08: Outline Scenarios

## Lesson 2: From Trigger Map to Scenarios

**How to identify which scenarios to create from your Trigger Map**

---

## The Missing Bridge

You've completed your Trigger Map (Module 06):
- Personas with driving forces
- Business goals prioritized
- Features connected to both

Now you're in Module 08: Outline Scenarios.

**But which scenarios should you create?**

This lesson bridges the gap. It shows you how to use your prioritized Trigger Map to identify the scenarios that matter most.

---

## Strategic Context from the Trigger Map

Every scenario needs **strategic context** — the thread connecting business goals to user motivations through specific transactions, selected from your Trigger Map.

```
Business Goal → User Group → Driving Forces → Transaction → Scenario
```

**Example:**

```
BG01: 5,000 active teams
    ↓
Remote Team Leads (Persona: Harriet)
    ↓
Fear of burnout, desire for team awareness
    ↓
Create first pulse check
    ↓
S01-First-Pulse-Check-Setup
```

**The strategic context answers:**
- What's the most valuable transaction for our business?
- What are we offering that's valuable for the end user?
- How can we create a marriage between business goals and user driving forces?
- What would make both the business and the user happy?

**The scenario is the shortest path to make everyone happy.**

---

## The Marriage Question

For each potential scenario, ask:

**"What transaction would satisfy both this business goal AND this user's driving forces?"**

This is the marriage between business value and user value.

| Business Wants | User Wants | Transaction (Scenario) |
|----------------|------------|----------------------|
| 5,000 active teams | Quick team health check | First pulse check setup |
| Reduce churn | Avoid burnout | Schedule automated check-ins |
| Increase engagement | Team feels heard | Share pulse results with team |
| Premium subscriptions | Advanced insights | Unlock trend analysis |

**Each row is a potential scenario.**

The ones at the top (aligned with your highest-priority business goals and persona driving forces) become your first scenarios to design.

---

## Identifying Your First Scenarios

Use your Trigger Map prioritization to identify scenarios:

### Step 1: Start with Top Business Goal

Look at your Product Brief. What's your #1 business goal?

Example: **BG01 - Get 5,000 active teams using the product**

### Step 2: Identify Most Important User Group

Which persona is most critical to achieving this goal?

Example: **Remote Team Leads (Harriet)**

### Step 3: Connect to Top Driving Forces

What are this persona's strongest driving forces from your Trigger Map?

Example:
- Fear of team burnout
- Desire for team awareness without micromanaging
- Need for quick, actionable insights

### Step 4: Find the Valuable Transaction

What can the user do in your product that:
- Advances the business goal?
- Satisfies the user's driving forces?

Example: **Create and send first pulse check to team**

This becomes: **S01-First-Pulse-Check**

### Step 5: Repeat for Secondary Priorities

Continue down your prioritized Trigger Map:
- Next business goal
- Next persona
- Next driving force

Each valuable transaction becomes a scenario.

---

## The Three Required Elements

Every scenario needs:

### 1. Strategic Context

The strategic thread from business goal through user psychology to specific transaction, selected from your Trigger Map.

```
## Strategic Context
- Business Goal: BG01 - 5,000 active teams
- Persona: Harriet (Remote Team Lead)
- Driving Forces: Fear of burnout, need for awareness
- Transaction: Create first pulse check
```

### 2. Usage Situation

**When and why would the user start this scenario?**

```
## Usage Situation
Harriet has just created her team account. She's exploring what the product can do. She's motivated to try something simple that will show value quickly.
```

The usage situation includes:
- Temporal context (when in their journey)
- Motivational state (why they're here)
- Emotional state (how they feel)

### 3. Natural Starting Point

**How does the user arrive at the first screen in this scenario?**

```
## Natural Starting Point
From: S01-Team-Setup (previous scenario completion)
Entry: Automatically redirected to "Create Your First Pulse Check" wizard
Alternative: Dashboard → "New Pulse Check" button (if returning later)
```

**Starting points can be:**
- From previous scenario (most common in onboarding)
- From email link (marketing, notifications)
- From dashboard/main navigation (returning users)
- From external link (invitations, sharing)
- From search results (landing pages)

---

## Complete Example: From Trigger Map to Scenario

### Trigger Map (Module 06)

**Business Goal:** BG01 - 5,000 active teams (Priority: High)

**Persona:** Harriet the Hybrid Manager
- Role: Remote team lead, 8-person team
- Driving Forces:
  - Fear: Team burnout goes unnoticed
  - Desire: Team awareness without micromanaging
  - Need: Quick actionable insights
- Priority: High (critical user group)

**Feature:** F05-Pulse-Checks
- Connected to: BG01
- Connected to: Harriet (fear of burnout)

### Strategic Context (from Trigger Map)

```
BG01: 5,000 active teams
    ↓
Harriet (Remote Team Lead)
    ↓
Fear: Team burnout goes unnoticed
Desire: Awareness without micromanaging
    ↓
Transaction: Create and send first pulse check
    ↓
S01-First-Pulse-Check
```

### The Marriage

**Business wants:** 5,000 teams actively using the product

**Harriet wants:** Quick way to check team health without being intrusive

**Transaction that satisfies both:** Create simple pulse check, send to team, see results

**This becomes:** S01-First-Pulse-Check

### Scenario Outline (Abbreviated)

```markdown
# S01-First-Pulse-Check

## Strategic Context
- Business Goal: BG01 - 5,000 active teams
- Persona: Harriet (Remote Team Lead)
- Driving Forces: Fear of burnout, awareness without micromanaging
- Transaction: Create and send first pulse check

## Usage Situation
Harriet has just set up her team account. She's motivated to try something simple that will show value quickly. She wants to check in with her team without seeming like she's micromanaging.

## Natural Starting Point
From: S01-Team-Setup (previous scenario)
Entry: Auto-redirect after team creation → "Create Your First Pulse Check" wizard

## Current State
On welcome screen after team setup, motivated but slightly uncertain about next steps

## Desired State
First pulse check sent to team, Harriet feels productive and confident this will help

## Value Check
- User: Checked in with team, feels proactive about team health
- Business: User activated core feature, team members will receive first touchpoint

## Linear Flow
1. Welcome Screen → (Click "Create First Pulse Check")
2. Pulse Check Builder → (Choose template)
3. Customize Questions → (Review/edit)
4. Select Recipients → (Choose team members)
5. Schedule Send → (Send now / schedule)
6. Confirmation Screen ✓
```

---

## Prioritizing Multiple Scenarios

You'll identify many potential scenarios. Prioritize using this hierarchy:

### Priority 1: Critical Path Scenarios

Scenarios directly connected to:
- Highest-priority business goal
- Most important persona
- Core product value

**Example:**
- S01-First-Pulse-Check (activation)
- S02-View-Results (value delivery)
- S03-Team-Setup (prerequisite)

Design these first. Everything else waits.

### Priority 2: Supporting Scenarios

Scenarios that support Priority 1:
- Secondary personas using same features
- Alternative paths to same goal
- Enhancement scenarios

**Example:**
- S04-Recurring-Pulse (power user scenario)
- S05-Export-Results (advanced usage)

Design these after Priority 1 is validated.

### Priority 3: Edge Case Scenarios

Scenarios for less common situations:
- Error recovery paths
- Administrative tasks
- Rare user segments

**Example:**
- S12-Password-Recovery
- S15-Delete-Team

Design these last, or defer to later iterations.

---

## The Shortest Path Principle

> **"The scenario is the shortest path to make everyone happy."**

When identifying scenarios from your Trigger Map:

**Don't design everything.**

Design the **shortest path** from:
- User's current state → User's desired state (user happy)
- Business's current state → Business's desired state (business happy)

**Ask:**
- What's the minimum number of steps?
- What's the fastest path to mutual value?
- What can we skip or defer?

**Example:**

**Bad (too long):**
```
Landing → Signup → Email Verify → Profile Setup → Team Creation →
Invite Members → Wait for Accepts → Tutorial → Feature Tour → Dashboard →
Finally Create Pulse Check
```

**Good (shortest path):**
```
Signup → Team Setup → First Pulse Check ✓
```

Everything else is optional or deferred to later scenarios.

---

## Multiple Entry Points

Some scenarios have multiple natural starting points:

**Example: S05-Add-Team-Member**

```
## Natural Starting Points

1. From Dashboard → "Add Member" button (most common)
2. From Team Settings → "Manage Members" → "Add"
3. From Email → "You were added as admin" → "Invite your team"
4. From Pulse Results → "Only 3/8 members responded" → "Invite missing members"
```

**Document all entry points**, but design for the most common one first.

Alternative entry points get documented in specifications, not designed separately.

---

## From Features to Scenarios

Your Trigger Map includes features. Scenarios implement those features.

**Relationship:**

| Trigger Map Feature | Scenarios That Implement It |
|-------------------|---------------------------|
| F05-Pulse-Checks | S01-First-Pulse-Check<br>S04-Recurring-Pulse<br>S07-Customize-Questions |
| F08-Results-Dashboard | S02-View-Results<br>S05-Export-Results<br>S09-Share-With-Team |
| F02-Team-Management | S03-Team-Setup<br>S06-Add-Member<br>S10-Remove-Member |

**One feature → Multiple scenarios**

Each scenario is a specific user journey through that feature.

---

## The Scenario Decision Matrix

Use this to decide if a potential scenario should be designed:

| Question | Must Answer |
|----------|-------------|
| **Does it connect to a business goal?** | Which one? |
| **Does it serve a persona from your Trigger Map?** | Which persona? |
| **Does it satisfy a driving force?** | Which force? |
| **What's the valuable transaction?** | Be specific. |
| **Where does the user come from?** | Natural starting point? |
| **What value does the user get?** | Concrete outcome? |
| **What value does the business get?** | Measurable result? |

**If you can't answer all seven questions, it's not ready to be a scenario.**

Go back to your Trigger Map and clarify.

---

## Common Patterns

### Pattern 1: Onboarding Sequence

Connected scenarios that form activation flow:

```
S01-Signup → S02-Team-Setup → S03-First-Pulse-Check → S04-View-Results
```

Each scenario hands off to the next. Natural starting point is previous scenario's end state.

### Pattern 2: Core Feature Variations

Same feature, different personas or situations:

```
F05-Pulse-Checks implemented as:
- S03-First-Pulse-Check (new user, guided)
- S08-Quick-Pulse (power user, shortcuts)
- S12-Recurring-Pulse-Setup (advanced, automation)
```

Each serves different driving forces for different personas.

### Pattern 3: Administrative Tasks

Supporting scenarios that enable core scenarios:

```
Core: S03-First-Pulse-Check
Supporting: S05-Add-Team-Member (so they have someone to send to)
Supporting: S11-Update-Questions (so they can customize)
```

Design core first. Add supporting scenarios as needed.

---

## How Freya Suggests Scenarios

Freya doesn't just help you create scenarios - she **proactively suggests them** by analyzing your Product Brief and Trigger Map.

### What Freya Analyzes

**From your Product Brief:**
- Top business goals (ranked by priority)
- Success metrics
- Critical constraints

**From your Trigger Map:**
- Persona rankings (from Workshop 4)
- Ranked driving forces per persona (top 5-7)
- Feature-to-driver connections
- Business goal alignments

**Freya combines these to identify strategic context for scenarios automatically.**

### Freya's Suggestion Process

**Phase 1: Identify High-Value Chains**

Freya looks for the strongest connections:

```
Priority #1 Business Goal
    ↓ (which persona drives this?)
Priority #1 Persona
    ↓ (what's their top driver?)
Top-Ranked Driving Force
    ↓ (what transaction satisfies both?)
Suggested Scenario
```

**Example:**

```
BG01: 5,000 active teams (Priority #1 from Brief)
    ↓
Remote Team Leads (Priority #1 from Workshop 4)
    ↓
Fear: Team burnout goes unnoticed (Top driver from Workshop 4)
    ↓
Transaction: Create first pulse check
    ↓
Freya suggests: S01-First-Pulse-Check
```

**Phase 2: Present Ranked Scenario Suggestions**

Freya presents scenarios in priority order with strategic reasoning:

> **Freya:** "Based on your Trigger Map, I've identified 8 potential scenarios. Here are the top 3 by strategic value:
>
> **S01-First-Pulse-Check** (Priority #1)
> - Business Goal: BG01 - 5,000 active teams
> - Persona: Remote Team Leads (your #1 priority group)
> - Driver: Fear of team burnout (their #1 driver)
> - Why this matters: Each team lead brings 5-10 team members. Solving their top fear drives activation and retention.
> - Estimated impact: High (multiplier effect + urgent pain)
>
> **S02-View-Results** (Priority #2)
> - Business Goal: BG01 - 5,000 active teams
> - Persona: Remote Team Leads
> - Driver: Desire for actionable insights (their #2 driver)
> - Why this matters: Completes the value loop from S01. Without seeing results, pulse check has no value.
> - Estimated impact: High (required for S01 to deliver value)
>
> **S03-Team-Setup** (Priority #3)
> - Business Goal: BG01 - 5,000 active teams
> - Persona: Remote Team Leads
> - Driver: Want simple onboarding (their #4 driver)
> - Why this matters: Prerequisite for S01. Must exist but isn't where the core value lives.
> - Estimated impact: Medium (enabler, not value driver)
>
> Should we start with S01?"

**Phase 3: Build Scenario Outlines Together**

Once you select a scenario, Freya guides you through the outline:

> **Freya:** "Let's outline S01-First-Pulse-Check together. I'll start with what I know from your Trigger Map, and you fill in the details.
>
> **Strategic Context** ✓ (I have this from your Trigger Map)
> - Business Goal: BG01 - 5,000 active teams
> - Persona: Remote Team Leads
> - Driver: Fear of team burnout without noticing
> - Transaction: Create and send first pulse check
>
> **Usage Situation** - Where would Harriet be when she starts this journey? What's her motivation?"

You provide context, Freya documents it.

> **You:** "She just finished setting up her team. She's motivated to try something that shows value quickly."
>
> **Freya:** "Got it. And what's her emotional state?"
>
> **You:** "Cautiously optimistic. She wants this to work but doesn't want to waste time if it's complicated."
>
> **Freya:** ✓ "Usage Situation documented. Now, what's the natural starting point? How does she arrive at the first screen in this scenario?"

### How Freya Ranks Scenario Suggestions

Freya scores potential scenarios using:

**1. Strategic Alignment (40%)**
- Connection to top business goal: 20%
- Connection to priority persona: 10%
- Connection to top-ranked driver: 10%

**2. Impact Potential (30%)**
- Multiplier effect (does it bring more users?)
- Urgency of pain being solved
- Measurable business outcome

**3. Dependencies (20%)**
- Is this a prerequisite for other scenarios?
- Does it complete a value chain?
- What's the activation sequence?

**4. Scope Clarity (10%)**
- Can we define clear start/end states?
- Is the transaction well-bounded?
- Linear path possible?

**Freya shows her work:**

> **Freya:** "I ranked S01-First-Pulse-Check as #1 because:
> - ✓ Connects to your top business goal (BG01)
> - ✓ Serves your priority #1 persona (Team Leads)
> - ✓ Addresses their #1 driver (fear of burnout)
> - ✓ High multiplier (each lead brings a team)
> - ✓ Urgent pain (happening now)
> - ✓ Clear transaction (create → send → done)
>
> S02 ranked #2 because it completes the value chain but doesn't initiate it. S03 ranked #3 because it's an enabler, not core value."

### What Freya Needs From You

Freya can suggest scenarios automatically, but she needs your input for:

**1. Usage Situation**
- When/why does the user start this journey?
- What's their emotional state?
- What's the context?

**2. Natural Starting Point**
- How do they arrive at the first screen?
- From another scenario? Email link? Dashboard?
- What happened just before this?

**3. Linear Flow Details**
- What are the specific logical views?
- What triggers each transition?
- What's the final success state?

**Freya knows the "why" from your Trigger Map. You provide the "how" from your product knowledge.**

### Collaborative Flow

**Freya suggests → You validate → Together you detail**

```
Freya: "Your top 3 scenarios based on Trigger Map analysis..."
You: "Yes, S01 makes sense. But S03 should come before S01 - they need a team first."
Freya: "Good catch. Revising sequence: S03-Team-Setup, then S01-First-Pulse-Check."
You: "Exactly."
Freya: "Let's start with S03. How does a new user arrive at team setup?..."
```

**This is collaborative scenario identification**, not Freya dictating or you guessing.

### Freya's Questions (After Suggestions)

After suggesting scenarios, Freya asks clarifying questions:

> "I suggested S01-First-Pulse-Check as priority #1. Does this align with your product vision?"

> "Should S03-Team-Setup come before S01, or can they happen in parallel?"

> "I see a gap: How does the user get from signup to team setup? Is that a separate scenario?"

> "Looking at your top 3 suggested scenarios - do they form a complete activation flow, or are we missing steps?"

> "Your Trigger Map has 3 priority personas. Should we create parallel scenarios for each, or focus on Remote Team Leads first?"

**These questions refine the suggestions into a complete scenario roadmap.**

---

---

## Red Flags

Watch out for these signs that a scenario isn't ready:

❌ **"Users might want to..."** — Too vague, not connected to driving forces

❌ **Can't identify which persona** — Scenario isn't grounded in strategy

❌ **No clear business value** — Won't be sustainable

❌ **No clear user value** — Won't be used

❌ **Too many steps** — Not the shortest path

❌ **Branches everywhere** — This is multiple scenarios, not one

---

## Practical Exercise

**From your Trigger Map, identify your first scenario:**

1. What's your #1 business goal?
2. Which persona is critical to that goal?
3. What's their strongest driving force?
4. What transaction would satisfy both?
5. Where would they start this journey?
6. What would success look like?

**Write it down:**

```
## Strategic Context
- Business Goal: [Your top goal]
- Persona: [Critical persona]
- Driving Forces: [Top 2-3]
- Transaction: [Specific action]

## This becomes scenario: S01-[Name]
```

---

## What's Next

Now you know:
- ✓ What scenarios are (Lesson 1)
- ✓ How to identify which scenarios to create (Lesson 2)

Next lesson: **How to structure scenario outlines** — the template and format for documenting each scenario.

---

**[Continue to Lesson 3: Mapping the Journey →](lesson-03-mapping-the-journey.md)**

---

[← Back to Lesson 1](lesson-01-design-experiences-not-screens.md) | [Back to Module Overview](module-08-outline-scenarios-overview.md)

*Part of Module 08: Outline Scenarios*
