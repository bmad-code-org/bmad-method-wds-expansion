# Step 7: Define Success Criteria

## Purpose

Help user explore and define what success looks like through conversational questioning, then synthesize into clear, measurable criteria.

## Context for Agent

**Philosophy:** Don't ask "What are your success criteria?" - have a conversation about what good looks like, how they'll know it's working, and what they hope changes. YOU synthesize SMART criteria from that conversation.

**Your role:** Strategic interviewer helping user think through success from multiple angles.

## Prerequisites

**Load project context from** `wds-project-outline.yaml`:
- `project_context.stakes` - Shapes how rigorous metrics need to be
- `working_relationship.recommendation_style` - Shapes how directive to be
- `existing_materials` - Check if success criteria already defined

---

## Instructions

### 1. Open the Conversation

**Check for existing materials first:**

**WITHOUT existing materials** (`has_materials: false`):

> "Let's talk about success. When this launches and it's working well, what's different? What changes?"

**OR** (if business-focused):
> "How will you know this was worth building? What needs to happen for you to call this a win?"

**OR** (if user-focused):
> "Picture this live and successful - what are users doing differently? What problems have disappeared?"

---

**WITH existing materials** that mention success:

Read materials first, then adapt:

> "Your brief mentioned success means [quote]. Is that still the goal? Let's make sure we're measuring the right things."

**OR** (if criteria seem unclear):
> "You wrote that success looks like [reference]. Let's dig into that - how will you actually KNOW it's working?"

### 2. Explore Success from Multiple Angles

**Listen and follow up on what they mention. Explore these dimensions:**

**A) User Behavior Success**
- "What do you want to see users actually doing?"
- "How often? How many?"
- "What would tell you they're getting value?"

**B) Business Outcome Success**
- "What business result does this drive?"
- "Revenue? Efficiency? Growth? Retention?"
- "By how much? In what timeframe?"

**C) Experience Quality Success**
- "How should it *feel* to use this?"
- "What would users say about it?"
- "What complaints should disappear?"

**D) Timeline/Milestone Success**
- "When do you need to see results?"
- "Are there phases - like early wins vs long-term goals?"
- "Any hard deadlines or key dates?"

**Key principle:** Let them talk about outcomes first, then help translate to metrics.

### 3. Help Make Criteria SMART

**For each success area mentioned, ask:**

- **Specific:** "Can you be more specific about what that looks like?"
- **Measurable:** "How would you measure that?"
- **Achievable:** "Is that realistic given [constraints discussed earlier]?"
- **Relevant:** "How does that connect to [vision/positioning]?"
- **Time-bound:** "By when?"

**Guide, don't lecture:** Don't say "this needs to be SMART" - just ask the questions that naturally make it SMART.

### 4. Prioritize if Multiple Criteria

**If they have many success indicators:**
> "These are all good measures. If you had to pick the *most important* indicator of success - the one thing that matters most - what would it be?"

**Listen for:**
- Primary vs secondary metrics
- Leading vs lagging indicators
- Must-haves vs nice-to-haves

### 5. Confirm & Document

**Reflect back synthesized criteria:**
> "Here's what I'm hearing as your success criteria:
>
> **Primary Success:**
> - [Main metric/outcome - SMART format]
>
> **Secondary Success:**
> - [Supporting metric 1]
> - [Supporting metric 2]
>
> **Timeline:**
> - [When success will be measured]
>
> Does this capture what success looks like?"

**If user adjusts:** Update and confirm again.

**Document in product brief:**

```markdown
## Success Criteria

**Primary Success Metric:**
[Most important indicator - SMART format]

**Secondary Metrics:**
- [Supporting metric 1]
- [Supporting metric 2]
- [Supporting metric 3 - if applicable]

**Timeline:**
[When success will be measured / key milestones]

**How We'll Measure:**
[Brief explanation of measurement approach - analytics, surveys, business data, etc.]
```

### 6. Update Agent Dialog

**In `dialog/decisions.md`, append:**

```markdown
### Success Criteria (Step 7)

**Opening question:** [what you asked]

**User's initial response:** [how they described success - in their words]

**Key exploration:**
- User behavior discussed: [what users would do]
- Business outcomes discussed: [revenue/efficiency/growth goals]
- Experience quality discussed: [how it should feel]
- Timeline discussed: [when/phases]

**Synthesis & Confirmation:**
[Your SMART-formatted criteria + user confirmed/corrected]

**Final Success Criteria:**
- **Primary:** [main metric]
- **Secondary:** [supporting metrics]
- **Timeline:** [when]

**Measurement approach:** [how they'll track]
```

**Then:** Mark Step 7/8 complete in `dialog/progress-tracker.md` progress tracker

---

## State Update

Update frontmatter:

```yaml
stepsCompleted:
  [
    'step-01-init.md',
    'step-02-vision.md',
    'step-03-positioning.md',
    'step-04-create-vtc.md',
    'step-05-business-model.md',
    'step-06-business-customers.md',
    'step-07-target-users.md',
    'step-08-success-criteria.md',
  ]
success_criteria:
  primary: '[primary metric]'
  secondary: ['[metric 1]', '[metric 2]']
  timeline: '[when measured]'
```

---

## Next Step

Load and execute: `step-09-competitive-landscape.md`

---

## Example

**Agent:** "Let's talk about success. When Källa's website launches and it's working well, what's different? What changes?"

**User:** "Fewer calls asking 'do you service X type of vehicle?' - people can see right away we do everything."

**Agent:** "That's a great concrete outcome. How many of those calls do you get now, roughly?"

**User:** "Maybe 20-30% of calls? People asking if we do motorhomes, or tractors, or whatever. It's annoying because the answer is always yes."

**Agent:** "So success would be reducing those by...how much would feel like it's working?"

**User:** "If it cut them in half, that'd be huge. Save us time, less frustration."

**Agent:** "Got it - 50% reduction in basic inquiry calls. What about the business side - does this drive more customers, or is it more about efficiency?"

**User:** "Efficiency mainly. We're at capacity already. But maybe tourists find us easier in summer, that'd be good."

**Agent:** "How would you know if more tourists are finding you?"

**User:** "More summer calls I guess? Or just...people mentioning they found us online."

**Agent:** "Makes sense. What timeframe are we talking - when would you expect to see these results?"

**User:** "Summer's the big test - June through August. If it's not helping by then, it's not working."

**Agent:** "Perfect. So here's what I'm hearing as your success criteria:

**Primary Success:**
- 50% reduction in basic inquiry calls ('do you service X?') within first 3 months (April-June)

**Secondary Success:**
- Increased tourist discovery (measured by summer call volume from new customers June-August)
- Professional web presence that reflects 20+ years expertise and AutoExperten certification

**Timeline:**
- Primary metric measured by end of June
- Summer tourist impact measured by end of August

Does that capture what success looks like?"

**User:** "Yeah, that's exactly it."

**[Documents criteria, proceeds to next step]**
