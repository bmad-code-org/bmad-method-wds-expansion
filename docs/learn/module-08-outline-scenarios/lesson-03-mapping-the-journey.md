# Module 08: Outline Scenarios

## Lesson 3: Mapping the Journey

**How to structure scenario outlines for clarity and action**

---

## The Scenario Structure

Every scenario outline follows the same pattern:

1. **Strategic Context** — Strategic foundation from Trigger Map
2. **Usage Situation** — When, why, and emotional context
3. **Natural Starting Point** — How they arrive at first screen
4. **Current State** — Where the user starts (location + mindset)
5. **Desired State** — Where they end up (outcome + feeling)
6. **Value Check** — Why this matters (user + business)
7. **Persona** — Who is doing this
8. **Linear Flow** — The steps in between
9. **Connections** — Links to features and goals

Let's walk through each section.

---

## Section 1: Strategic Context

**What connects this scenario to your strategic foundation?**

Freya fills this in automatically from your Trigger Map. This shows the strategic path from your Trigger Map:

```
## Strategic Context
- Business Goal: BG01 - 5,000 active teams (from Product Brief)
- Persona: Remote Team Leads (Priority #1 from Workshop 4)
- Driving Force: Fear of team burnout going unnoticed (Top driver)
- Transaction: Create and send first pulse check
```

**Why this matters:**
- Proves the scenario isn't designed in a vacuum
- Connects to measurable business objectives
- Addresses specific user psychology from research
- Traces back to your Trigger Map

**Freya provides this automatically** when she suggests scenarios (see Lesson 2).

---

## Section 2: Usage Situation

**When and why does the user start this journey?**

Goes beyond just "where" to capture the full context:

```
## Usage Situation
**When:** Monday morning, 15 minutes before weekly team meeting
**Why:** Wants quick temperature check before discussing issues
**Emotional State:** Anxious about blind spots in team morale
**Context:** Last month missed early warning signs of burnout
```

**The usage situation includes:**
- Timing (when does this typically happen?)
- Motivation (what triggered this need right now?)
- Emotional state (how do they feel?)
- Context (what happened before this?)

**This is different from Current State:**
- Usage Situation = broader context and triggers
- Current State = specific location and immediate mindset

---

## Section 3: Natural Starting Point

**How does the user arrive at the first screen?**

Every scenario must have an entry point:

```
## Natural Starting Point
Clicks "Create Pulse Check" from dashboard after logging in.
Previous action: Completed S03-Team-Setup yesterday.
```

**Common natural starting points:**
- From another scenario (S01 ends → S02 begins)
- From email link (notification, magic link, invite)
- From dashboard/main navigation
- From external source (ad click, search result, direct URL)

**Why this matters:**
- Prevents "floating" scenarios with no clear entry
- Helps identify scenario dependencies
- Guides navigation design
- Ensures complete user journey mapping

---

## Section 4: Current State

**Where does this journey begin?**

Be specific. Not "user wants to sign up" but "visitor on landing page, curious but uncommitted."

**Good current states:**

```
- Visitor on landing page, arrived from Google ad
- Registered user on dashboard, hasn't added any data yet
- Family member who received an invite link, has never seen the app
- Returning user who forgot their password, frustrated
```

**The current state includes:**
- Physical location (what page/screen)
- Mental state (how they feel)
- Context (how they got here)

---

## Section 5: Desired State

**Where does this journey end?**

Again, be specific. Include both outcome and feeling.

**Good desired states:**

```
- Registered user, welcomed, ready to explore
- User with complete profile, feeling accomplished
- Family member added to household, understanding their role
- User back in account, relieved and continuing their task
```

**The desired state includes:**
- Concrete outcome (what's now true)
- Emotional state (how they feel)
- Next action (what they can now do)

---

## Section 6: Value Check

**Why does this journey matter?**

Every scenario must satisfy both user and business:

```
## Value Check
- User: Has an account, feels confident to proceed
- Business: New user in activation funnel
```

**User value template:**
> "The user now [has/can/feels] [specific outcome]"

**Business value template:**
> "The business gains [specific measurable outcome]"

**If you can't fill in both, question whether this scenario should exist.**

---

## Section 7: Persona Connection

**Who is doing this?**

Link directly to your Trigger Map:

```
## Persona
Felix the Full-Stack
- Driving force: "Want to try before committing"
- Fear: Complex onboarding that wastes time
```

This connection matters because:
- It guides design decisions
- It reminds you of emotional context
- It ensures you're designing for real people, not abstractions

---

## Section 8: Linear Flow

**What's the path?**

List the logical views in order:

```
## Linear Flow
1. Landing Page → (CTA click)
2. Signup Form → (form submit)
3. Email Verification Prompt → (check email)
4. Email Link Clicked → (auto redirect)
5. Welcome Screen ✓
```

**For each step:**
- Name the logical view
- Note the trigger that moves to next step
- Mark the final step with ✓

**Keep it linear.** No branches. No "if this then that."

---

## Section 9: Connections

**How does this link to your strategic foundation?**

```
## Connections
- Feature: F03-Quick-Signup
- Business Goal: Increase trial conversions by 40%
- Trigger Map: Felix → Try-Before-Buy driving force
```

These connections ensure:
- Nothing floats in isolation
- Every scenario traces to business value
- Design decisions can reference the "why"

---

## Scenario vs. Storyboard Boundary

This is crucial to understand:

**Scenario = Journey between logical views**
```
Landing Page → Signup Form → Welcome Screen
```

**Storyboard = Transformations within a logical view**
```
Signup Form: Empty → Filled → Validating → Success Animation
```

| Question | Answer |
|----------|--------|
| User clicks button and new screen loads | Scenario |
| Button changes from "Submit" to "Loading..." | Storyboard |
| Modal opens on top of current page | Scenario (modal is new logical view) |
| Form field shows validation error | Storyboard |

---

## Edge Cases: Where Do They Go?

Edge cases are real. They need documentation. But not in the scenario outline.

**In scenario outline:**
```
## Linear Flow
1. Signup Form → (submit)
2. Welcome Screen ✓
```

**In page specification (Module 11):**
```
## Error States

### Email Already Exists
- Message: "This email is already registered. [Log in instead]"
- User action: Click link to login flow
- Alternate path: S05-Login-Existing-User

### Network Error
- Message: "Connection lost. Your data is saved. [Retry]"
- User action: Click retry to resubmit
```

The scenario outline is the sunshine path. Page specifications (Module 11) handle the shadows.

**Module progression:**
- **Module 08** (now): Outline scenarios - linear flow between screens
- **Module 09**: Conceptual sketching - visualize each screen's default state
- **Module 10**: Storyboarding - document state transformations within each screen
- **Module 11**: Detailed specifications - document edge cases, error states, business rules

---

## The Complete Template

Here's what a finished scenario outline looks like:

```markdown
# S01-User-Registration

## Strategic Context
- Business Goal: BG01 - Increase trial signups by 40%
- Persona: Felix the Full-Stack (Priority #1 from Trigger Map)
- Driving Force: "Want to try before committing" (Top driver)
- Transaction: Create account with minimal friction

## Usage Situation
**When:** Felix visits after seeing Google ad, late evening after kids are asleep
**Why:** Motivated to find solution but skeptical of time investment
**Emotional State:** Cautiously optimistic, won't tolerate complicated process
**Context:** Has tried 2 other apps that were too complex

## Natural Starting Point
Arrives at landing page from Google ad click.
Previous action: Searched "family dog care app" on Google.

## Current State
Visitor on landing page, curious but uncommitted.
Arrived from Google search for "family dog care app."

## Desired State
Registered user, welcomed, ready to add their first dog profile.
Feeling confident this app will help their family.

## Value Check
- User: Has an account, feels confident to proceed
- Business: New user in activation funnel, one step closer to subscription

## Persona
Felix the Full-Stack
- Driving force: "Want to try before committing"
- Fear: Complex onboarding that wastes time

## Linear Flow
1. Landing Page → (Click "Start Free" CTA)
2. Signup Form → (Submit email and password)
3. Email Verification Prompt → (Check email, click link)
4. Verification Complete → (Auto-redirect)
5. Welcome Screen ✓

## Connections
- Feature: F03-Quick-Signup
- Business Goal: BG01 - Increase trial signups
- Platform: Web PWA (mobile-first)
```

---

## Folder Structure

Each scenario gets its own folder:

```
C-UX-Scenarios/
├── S01-User-Registration/
│   ├── scenario-overview.md
│   ├── 01-landing-page/
│   ├── 02-signup-form/
│   └── 03-welcome-screen/
├── S02-First-Dog-Profile/
│   ├── scenario-overview.md
│   └── ...
```

The scenario-overview.md contains what we've discussed.
Subfolders will contain detailed page specifications (Module 11).

---

## The Freya Method

Freya helps you outline scenarios from your Trigger Map:

> "Looking at your personas, what's the first thing Harriet needs to accomplish?"

> "What triggers would bring Felix to this point?"

> "What does success look like for this scenario — for Felix AND for the business?"

She keeps asking "why" until every scenario connects to strategy.

---

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Starting with pages | Start with user goals |
| Including branches | Keep it linear |
| Mixing scenario and storyboard | Scenario = between views |
| Skipping value check | Both user and business value |
| Vague current/desired states | Be specific about location and emotion |

---

## How to Start

From your Trigger Map:

1. **List your personas**
2. **For each persona, identify their primary goal**
3. **That goal becomes a scenario**
4. **Map the logical views they'll pass through**
5. **Fill in the template**

---

## What's Next

In the tutorial, you'll create scenario outlines for your own project. Freya will guide you through each section, asking the right questions to surface the information you need.

---

**[Continue to Tutorial: Create Scenario Outlines →](tutorial-08.md)**

---

[← Back to Lesson 2](lesson-02-from-trigger-map-to-scenarios.md) | [Back to Module Overview](module-08-outline-scenarios-overview.md)

*Part of Module 08: Outline Scenarios*
