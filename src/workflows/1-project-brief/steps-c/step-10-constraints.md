# Step 9: Capture Constraints and Context

## Purpose

Help user identify and explore constraints that ground the vision in reality, without turning it into a limitations session.

## Context for Agent

**Philosophy:** Don't treat constraints as limitations to apologize for - treat them as design parameters that focus creativity. Good constraints make better products.

**Your role:** Curious interviewer helping user surface what's fixed vs flexible.

## Prerequisites

**Load project context from** `wds-project-outline.yaml`:
- `project_context.stakes` - Shapes how detailed constraints need to be
- Vision/positioning from earlier - informs what constraints matter most

---

## Instructions

### 1. Frame Constraints Positively

**Opening that sets the right tone:**
> "Let's talk about constraints - the things that are fixed or have to work within. These aren't limitations, they're design parameters that help focus the solution."

**OR** (more casual):
> "What's locked in? Timeline, budget, technical stuff you have to work with - let's get those out on the table."

**Avoid:** "What are your limitations?" or "What can't you do?"

### 2. Explore Key Constraint Categories

**Ask about what matters, skip what doesn't:**

**A) Timeline Constraints**
- "When does this need to be live? Any hard deadlines?"
- "Are there phases, or does it all need to launch together?"
- Listen for: Launch dates, seasonal factors, event-driven deadlines

**B) Budget/Resource Constraints**
- "What's the budget range we're working with?"
- "Who's building this - internal team, agency, freelancers?"
- Listen for: Realistic scope, need for MVP vs full vision

**C) Technical Constraints**
- "Any technical requirements you have to work with? Existing systems, platforms, languages?"
- "What tech do you already have/know?"
- Listen for: Integration needs, platform locks, team capabilities

**D) Brand/Design Constraints**
- "Any brand guidelines, colors, logos that have to be used?"
- "Visual style that's required or off-limits?"
- Listen for: Corporate mandates, brand consistency needs

**E) Regulatory/Compliance Constraints**
- "Any regulatory requirements? Privacy, accessibility, industry standards?"
- Listen for: GDPR, WCAG, industry-specific rules

**F) Integration Constraints**
- "Need to integrate with existing systems? What has to talk to what?"
- Listen for: APIs, data flows, legacy system dependencies

### 3. Explore Additional Context

**Beyond constraints, ask about context:**

**Company/Team Context:**
- "Where are you as a company - startup, established, enterprise?"
- "What's the team's capability - design, dev, both?"

**Market Context:**
- "Any market conditions affecting this? Competitive pressure, window of opportunity?"

**Historical Context:**
- "Has this been tried before? What happened?"
- "What did you learn from past attempts?"

### 4. Identify What's Flexible

**After capturing constraints, flip it:**
> "So that's what's locked in. What *is* flexible? Where do you have room to maneuver?"

**This reveals:**
- Where you can be creative
- What trade-offs are possible
- Where to focus design energy

### 5. Document Constraints & Context

**Document in product brief:**

```markdown
## Constraints & Context

**Timeline:**
[Deadline, phases, seasonal factors]

**Budget/Resources:**
[Budget range, team composition, build approach]

**Technical:**
[Platform requirements, integrations, existing tech]

**Brand/Design:**
[Guidelines, required elements, style constraints]

**Regulatory/Compliance:**
[Privacy, accessibility, industry standards]

**Integration:**
[Systems to connect, APIs, data flows]

**Additional Context:**

**Company Stage:** [Startup/established/enterprise]
**Team Capability:** [Design/dev strength, gaps]
**Market Conditions:** [Pressure, timing, opportunities]
**Past Attempts:** [What's been tried, what was learned]

**What's Flexible:**
[Areas where there's room for creative solutions]
```

### 6. Update Agent Dialog

**In `dialog/decisions.md`, append:**

```markdown
### Constraints & Context (Step 10)

**How constraints were framed:** [positive framing used]

**Constraints identified:**
- Timeline: [deadlines, phases]
- Budget/Resources: [range, team]
- Technical: [platforms, integrations]
- Brand: [guidelines, requirements]
- Regulatory: [compliance needs]

**Additional context captured:**
- Company stage: [context]
- Team capability: [strengths/gaps]
- Market conditions: [timing factors]
- Past attempts: [lessons learned]

**What's flexible:**
[Areas identified where creativity is possible]

**Scope implications:**
[How constraints shape realistic scope]
```

**Then:** Mark Step 9/10 complete in `dialog/progress-tracker.md` progress tracker

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
    'step-09-competitive-landscape.md',
    'step-10-constraints.md',
  ]
constraints:
  timeline: '[deadlines]'
  budget: '[range]'
  technical: '[requirements]'
  brand: '[guidelines]'
  regulatory: '[compliance]'
  flexible_areas: '[what's flexible]'
```

---

## Next Step

Load and execute: `step-10a-platform-strategy.md`

---

## Example

**Agent:** "Let's talk about constraints - the things that are fixed. Timeline, budget, technical stuff. What do we need to work within?"

**User:** "Budget is tight - maybe 20-30k SEK for the whole thing. I'm doing it through Whiteport, so design is handled, but build needs to be simple."

**Agent:** "Got it - so that shapes it toward a simple static site or basic CMS. Any timeline pressure?"

**User:** "Would be nice to have it before summer - like by May. Summer is when tourists start coming."

**Agent:** "Makes sense - seasonal deadline. Any technical requirements? Like, does it have to integrate with anything, or can it be standalone?"

**User:** "Standalone is fine. Maybe a contact form that goes to email. That's it."

**Agent:** "Brand guidelines? Do you have to use Auto Experten colors or logos, or can it be your own thing?"

**User:** "Can show the AutoExperten certification, but it's our site - our brand."

**Agent:** "Any regulations - like accessibility requirements for a business site?"

**User:** "Not that I know of. Just needs to work, be professional."

**Agent:** "What about past attempts - have you tried to get a website before?"

**User:** "AutoExperten offers website packages, but they're too expensive - like 50k+ per year. That's why I'm doing this."

**Agent:** "So here's what I'm hearing:

**Constraints:**
- **Timeline:** Launch by May (before summer season)
- **Budget:** 20-30k SEK total
- **Technical:** Simple build, standalone, contact form to email
- **Brand:** Can use own branding, show AutoExperten certification
- **Regulatory:** Standard business site requirements

**Context:**
- Past attempt: AutoExperten packages too expensive (50k+/year)
- Seasonal business - summer is critical test period
- Design through Whiteport, simple build needed

**What's Flexible:**
- Platform choice (static site, simple CMS)
- Visual style (your brand)
- Content structure (long as it shows vehicle breadth)

That sound right?"

**User:** "Perfect - that's the reality."

**[Documents constraints, proceeds]**
