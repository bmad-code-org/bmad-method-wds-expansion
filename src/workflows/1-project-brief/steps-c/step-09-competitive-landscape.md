# Step 8: Analyze Competitive Landscape

## Purpose

Help user explore alternatives and discover their unfair advantage through conversational analysis, not competitive feature lists.

## Context for Agent

**Philosophy:** Don't ask "who are your competitors?" - explore what people use TODAY, why they might stick with it, and what makes this product genuinely better (not just different).

**Your role:** Strategic interviewer helping user think honestly about alternatives and advantages.

## Prerequisites

**Load project context from** `wds-project-outline.yaml`:
- `project_context.stakes` - Shapes how thorough competitive analysis needs to be
- Positioning from earlier steps - informs what to compare against

---

## Instructions

### 1. Open with Alternatives (Not Competitors)

**Start broad:**
> "Let's talk about alternatives. If someone has [the problem you're solving], what do they do today? What are the real options?"

**Why "alternatives" not "competitors":**
- Includes manual solutions ("they use Excel")
- Includes "do nothing" option
- Includes different approaches (not just direct competitors)
- More honest conversation

### 2. Explore Each Alternative

**For each alternative mentioned, dig deeper:**

**Questions to ask:**
- "Why would someone stick with [alternative] instead of using yours?"
- "What does [alternative] do well?"
- "Where does it fall short?"
- "What type of person/company is [alternative] perfect for?"

**Listen for:**
- Real strengths (not just weaknesses)
- Why alternatives exist and persist
- User segments where alternatives win
- What alternatives can't do

**Key principle:** Understand alternatives fairly. If user only sees weaknesses, probe for strengths.

### 3. Explore the "Do Nothing" Alternative

**Don't skip this:**
> "What if someone just... doesn't solve this problem at all? What happens?"

**Why this matters:**
- Shows urgency (or lack of it)
- Reveals whether problem is "nice to have" or critical
- Informs go-to-market strategy

### 4. Find the Unfair Advantage

**After understanding alternatives, ask:**
> "So what do you have that they don't - or can't easily copy? What's your unfair advantage?"

**Types of unfair advantages:**
- **Network effects:** "Gets better with more users"
- **Data/insights:** "We know X that nobody else knows"
- **Team/expertise:** "We're the only ones who understand both X and Y"
- **Technology:** "We built X that's really hard to replicate"
- **Timing:** "Window of opportunity that won't last"
- **Relationships:** "Access to customers/partners others don't have"
- **Economics:** "Can operate at lower cost because..."

**Probe if they say "better UX" or vague claims:**
- "Better how, specifically?"
- "Why can't [competitor] just copy that?"
- "What makes you uniquely able to deliver that?"

### 5. Reality Check

**Ask the hard question:**
> "Devil's advocate: What if [main alternative] just adds your key feature? Do you still win?"

**Listen for:**
- Defensibility of advantage
- Deeper moats beyond features
- Whether advantage is temporary or sustainable

### 6. Synthesize & Document

**Reflect back competitive landscape:**
> "Here's what I'm hearing about the competitive landscape:
>
> **Main Alternatives:**
> - [Alternative 1] - strong at [X], weak at [Y], good for [who]
> - [Alternative 2] - strong at [X], weak at [Y], good for [who]
> - Do nothing - [what happens]
>
> **Your Unfair Advantage:**
> [The thing you have/can do that's hard to replicate]
>
> **Why You Win:**
> [When/why users would choose you over alternatives]
>
> Does that capture the competitive reality?"

**If user adjusts:** Update and confirm.

**Document in product brief:**

```markdown
## Competitive Landscape

**Alternatives Users Have Today:**

1. **[Alternative 1]**
   - **Strengths:** [What it does well]
   - **Weaknesses:** [Where it falls short]
   - **Best for:** [What type of user/use case]

2. **[Alternative 2]**
   - **Strengths:** [What it does well]
   - **Weaknesses:** [Where it falls short]
   - **Best for:** [What type of user/use case]

3. **Do Nothing**
   - **What happens:** [Consequence of not solving problem]
   - **Why some choose this:** [Reasons to not adopt any solution]

**Our Unfair Advantage:**
[What you have/can do that's genuinely hard for others to replicate]

**Why We Win:**
[Specific situations/users where you're clearly the best choice]

**Competitive Positioning:**
[How you position against alternatives - not just "better", but specifically where you compete and where you don't]
```

### 7. Update Agent Dialog

**In `dialog/decisions.md`, append:**

```markdown
### Competitive Landscape (Step 9)

**Opening question:** [how you framed alternatives]

**Alternatives explored:**
- [Alternative 1]: [strengths/weaknesses/best for]
- [Alternative 2]: [strengths/weaknesses/best for]
- Do nothing: [what happens]

**Unfair advantage discussion:**
- Initial claim: [what user first said]
- Probing questions: [how you challenged/explored it]
- Refined advantage: [more defensible statement]

**Competitive positioning:**
[Where you compete, where you don't, why you win in specific scenarios]

**Reality check:**
[Hard questions asked + user's response about defensibility]
```

**Then:** Mark Step 8/9 complete in `dialog/progress-tracker.md` progress tracker

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
  ]
competitive_landscape:
  alternatives: ['[alt 1]', '[alt 2]', 'do nothing']
  unfair_advantage: '[defensible advantage]'
  positioning: '[where you compete vs don't]'
```

---

## Next Step

Load and execute: `step-10-constraints.md`

---

## Example

**Agent:** "Let's talk about alternatives. If someone in northern Öland needs vehicle service, what are their real options today?"

**User:** "There's garages in Borgholm - maybe 2-3 of them. Some specialize in certain things. Then people can drive to Kalmar, but that's far."

**Agent:** "Why would someone go to Borgholm instead of you?"

**User:** "Closer if they're in southern Öland. Or if it's something specific like they only do Volvos or whatever."

**Agent:** "What do those Borgholm garages do well?"

**User:** "They're good! Some are specialists, so if you have a classic car or something, maybe they're better. They're closer to more people."

**Agent:** "What about the 'do nothing' option - what if someone's car breaks and they just... leave it?"

**User:** "Can't really do that here. If your car doesn't work on Öland, you're stuck. No public transport really."

**Agent:** "So the problem is pretty urgent. Got it. What's your unfair advantage over these Borgholm places?"

**User:** "We do EVERYTHING. They might be better at one thing, but we handle all vehicles - lawn mowers to tour buses. And in summer, we're basically the only option in northern Öland. Geography helps."

**Agent:** "Let's test that. What if one of the Borgholm garages decides to expand their vehicle types - can they do what you do?"

**User:** "They could, but it's hard. You need the equipment, the expertise, the space. We've built that over 20 years. Plus Björn knows every vehicle type - that's rare."

**Agent:** "So your unfair advantage is... what, exactly?"

**User:** "20+ years of broad expertise, all the equipment for every vehicle type, and northern Öland location. Not easy to replicate all three."

**Agent:** "Perfect. So here's the competitive landscape:

**Alternatives:**
1. **Borgholm garages** - closer for south Öland, some specialized (good for classic cars etc), but limited vehicle type range
2. **Kalmar garages** - full service options but far away (1+ hour drive)
3. **Do nothing** - not really viable on Öland (no public transport)

**Your Unfair Advantage:**
20+ years comprehensive expertise + equipment for all vehicle types + northern Öland monopoly

**Why You Win:**
- Summer tourists in northern Öland: You're the only accessible option
- Anyone with non-standard vehicles (motorhomes, tractors, equipment): You're one of few who can handle it
- Year-round locals: Trusted relationship + convenience

Does that capture it?"

**User:** "Yeah, exactly."

**[Documents competitive landscape, proceeds]**
