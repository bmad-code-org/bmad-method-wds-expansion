# Step 4: Determine Business Model

## Purpose

Help user identify and understand their business model (B2B, B2C, or both) through conversational exploration.

## Context for Agent

**Philosophy:** Don't just ask "Is it B2B or B2C?" - have a conversation about who pays for it, who uses it, and what that means for the product strategy.

**Your role:** Strategic guide helping user understand business model implications.

## Prerequisites

**Load project context from** `wds-project-outline.yaml`:
- `project_context.stakes` - Shapes explanation depth
- `working_relationship.involvement_level` - Shapes how much to explain

---

## Instructions

### 1. Open the Conversation

**Start naturally based on context:**

**If they've mentioned customers already:**
> "Let's clarify the business model. You mentioned [customers] - are they businesses buying this, or individual consumers? Or potentially both?"

**If unclear from context:**
> "Quick question about the business model: Who's paying for {product}? Businesses, individual consumers, or could it be both?"

**Adapt tone to stakes:**
- High stakes → "This is important for stakeholder alignment and go-to-market strategy"
- Low stakes → "Just want to make sure we design for the right buying process"

### 2. Listen and Explore

**If they say "B2B" (Business-to-Business):**
- **Ask:** "Who in the business makes the buying decision? Is it the same person who'll use it?"
- **Listen for:** Buyer vs user distinction, procurement process, budget cycles
- **Implications to discuss:**
  - Longer sales cycles
  - Multiple stakeholders
  - ROI/business case requirements
  - May need admin/reporting features

**If they say "B2C" (Business-to-Consumer):**
- **Ask:** "How do you see people discovering and buying this? Direct purchase, subscription, freemium?"
- **Listen for:** Monetization strategy, acquisition approach
- **Implications to discuss:**
  - Faster decision cycles
  - Focus on individual value
  - Consumer-friendly pricing
  - Self-service onboarding critical

**If they say "Both" or seem uncertain:**
- **Ask:** "Walk me through a typical scenario for each - who's buying it, how they're using it"
- **Listen for:** Primary vs secondary segments, different use cases
- **Implications to discuss:**
  - Need flexible pricing
  - May need different positioning for each segment
  - Product features may differ per segment
  - Marketing/sales split

### 3. Confirm Understanding

**Reflect back what you heard:**
> "So it sounds like this is primarily [B2B/B2C/Both], where [who pays] buys it for [who uses/what purpose]. Does that capture it?"

**If user corrects:** Update understanding and confirm again.

### 4. Document Decision

**Add to product brief:**

```markdown
## Business Model

**Model:** [B2B / B2C / Both]

**Rationale:**
[1-2 sentences explaining who pays, who uses, and why this model makes sense]

**Implications:**
- [Key implication 1 - e.g., "Requires ROI calculator for enterprise buyers"]
- [Key implication 2 - e.g., "Self-service onboarding critical"]
- [Key implication 3 - if applicable]
```

### 5. Update Agent Dialog

**In `dialog/decisions.md`, append:**

```markdown
### Business Model (Step 4)

**Opening question:** [what you asked]

**User response:** [their answer - B2B/B2C/Both and context]

**Key discussion points:**
- [What you explored - buyer vs user, monetization, implications]

**Final decision:** [B2B / B2C / Both]

**Rationale:** [Why this model makes sense for their product]

**Implications noted:**
- [Key implications discussed]
```

**Then:** Mark Step 4/5 complete in `dialog/progress-tracker.md` progress tracker

---

## Conditional Routing

**If B2B or Both:** → Load and execute `step-06-business-customers.md`

**If B2C only:** → Load and execute `step-07-target-users.md`

---

## State Update

Update frontmatter:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-vision.md', 'step-03-positioning.md', 'step-04-create-vtc.md', 'step-05-business-model.md']
business_model: '[b2b/b2c/both]'
business_model_rationale: '[brief explanation]'
```

---

## Example

**Agent:** "Quick question about the business model: Who's paying for Källa Fordonservice's website - businesses or individual vehicle owners?"

**User:** "Both, actually. Most customers are individuals with their own cars, but we also service businesses - like farms with tractors, tour companies with buses, rental companies. But the individuals are the majority."

**Agent:** "Got it - so primarily B2C with some B2B. When a business uses you, is it the business owner calling directly, or do they have fleet managers or something?"

**User:** "Usually the owner directly - we're talking small businesses mostly. Maybe a farm owner, a tour company owner. Not big corporate fleets."

**Agent:** "Makes sense. So the buying decision is pretty similar whether it's individual or small business owner - same person makes the decision and deals with the service?"

**User:** "Exactly - it's all pretty direct."

**Agent:** "Perfect. So this is **B2C with small B2B**, but the experience is similar for both - direct relationship, same person decides and experiences the service. That means we can design one primary experience rather than needing separate business/consumer flows."

**User:** "Yeah, that's right."

**[Documents decision, proceeds to next step]**
