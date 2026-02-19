# Step 7a: Capture Product Concept

## Purpose

Capture the designer's STRUCTURAL vision - the founding idea, key concept, or core principle that defines how the product works and feels.

## Context for Agent

**Philosophy:** Don't ask the user to define "the product concept." Have a conversation about what makes this product different, what the core idea is, what structural principle drives it - then YOU articulate the concept from what you hear.

**Your role:** Curious design interviewer helping surface the founding vision.

**Important:** Product Concept is the STRUCTURAL IDEA (how it works, what makes it distinct), not just features or requirements. Examples:
- Källa Fordonservice: "Vehicle-type navigation that immediately answers 'do you service my vehicle?'"
- Airbnb: "Two-sided marketplace connecting travelers with homeowners"
- Slack: "Channel-based communication replacing email threads"

## Prerequisites

**Load project context from** `wds-project-outline.yaml`:
- `project_context.stakes` - Shapes how detailed concept needs to be
- `existing_materials` - Check if previous brief or notes mention concept
- Vision from Step 2 - Informs what kind of concept makes sense
- Positioning from Step 3 - Informs what makes this distinct

---

## Instructions

### 1. Open the Concept Conversation

**Check for existing materials first:**

**WITHOUT existing materials** (`has_materials: false`):

> "Let's talk about the core concept - the structural idea that makes this product work. What's the KEY PRINCIPLE or founding feature that everything builds from?"

**OR** (more casual):
> "What's the BIG IDEA here? Not all the features, but the CORE CONCEPT that defines how this works?"

---

**WITH existing materials** that mention concept:

Read materials first, then adapt opening:

> "I see you're thinking about [concept from materials]. That sounds like the founding principle. Tell me more about that structural idea - why THIS approach?"

**OR** (if concept is mentioned but unclear):
> "You mentioned [concept reference] in your brief. I'm curious - is that the CORE CONCEPT, the organizing principle everything builds from?"

**Listen for signals:**
- They already described something structural ("I'm thinking it has a navigation bar showing vehicle types...")
- They reference a mental model ("It's like X but for Y...")
- They describe how it works vs what it does

### 2. Explore the Founding Idea

**Ask follow-ups that surface the concept:**

**If they describe features first:**
> "That makes sense - but zoom out: what's the CORE PRINCIPLE those features serve? What's the organizing idea?"

**If they reference an example:**
> "So it's inspired by [example] - what specific STRUCTURAL element are you taking from that?"

**If they're unclear:**
> "Let me ask differently: When someone uses this, what's the FIRST THING they see/do? What's the entry point or organizing principle?"

**Listen and probe:**
- **Structural elements:** Navigation concepts, information architecture, interaction models
- **Core features:** The founding feature everything radiates from
- **Mental models:** How users think about the product ("It's organized by...")
- **Differentiators:** What structural choice makes this distinct from alternatives

### 3. Surface Why This Concept

**Once you understand the concept, explore the rationale:**

> "Why THIS structural approach? What problem does organizing it this way solve?"

**OR:**
> "What does this concept ENABLE that alternatives don't?"

**Listen for:**
- User pain it addresses
- Mental model it matches
- Efficiency it creates
- Experience it enables

### 4. Reflection Checkpoint

**Synthesize what you've heard and confirm understanding:**

> "Let me share back what I'm hearing as the core concept:
>
> **Core Structural Idea:** [Your synthesis of the founding principle]
>
> **Why This Approach:** [The rationale for this concept]
>
> **Concrete Example:** [How this shows up in the actual product]
>
> Does that capture the core concept you're envisioning?"

**If user corrects:**
- Document what was misunderstood
- Ask clarifying questions
- Re-synthesize with corrections
- Confirm again before proceeding

**If user confirms:**
- Great! Proceed to documentation

### 5. Document the Concept

**Record in working notes:**

```markdown
## Product Concept

**Core Structural Idea:**
[The founding principle or key concept that defines the product]

**Implementation Principle:**
[How this concept shapes design decisions]

**Rationale:**
[Why this approach solves the problem/serves the users]

**Concrete Example:**
[Specific instance of the concept in action]

**Features That Stem From Concept:**
1. [Feature that implements concept]
2. [Feature that implements concept]
3. [Feature that implements concept]
```

### 6. Update Agent Dialog

**Mandatory:** Update `dialog/04-concept.md` before marking this step complete.

**Fill in:**
- Opening question used to surface concept
- User's initial description of their idea
- Key exchanges exploring the structural principle
- Rationale discussion (why this concept works)
- Reflection checkpoint (synthesis + user confirmation/correction)
- Final concept documentation with concrete example

**Then:** Mark Step 7a complete in `dialog/progress-tracker.md` progress tracker

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
    'step-07a-product-concept.md',
  ]
product_concept:
  core_idea: '[structural principle]'
  rationale: '[why this approach]'
  example: '[concrete instance]'
```

---

## Next Step

Load and execute: `step-08-success-criteria.md`

---

## Example

**Agent:** "Let's talk about the core concept - the BIG STRUCTURAL IDEA that defines how Källa's website works. What's the organizing principle you're envisioning?"

**User:** "I've been thinking about a navigation bar that shows different vehicle types - like cars, trucks, tractors, motorhomes. That way people immediately see we handle everything."

**Agent:** "Interesting - so vehicle-type navigation is the entry point. Why organize it that way instead of, say, by service type (repair, maintenance, inspection)?"

**User:** "Because the first question everyone asks is 'do you service MY vehicle?' - especially for tractors, lawnmowers, motorhomes. If they see their vehicle type right away, they know we handle it."

**Agent:** "That makes sense - it directly answers the primary user question. So the navigation becomes both the organizing principle AND the key message. Would you show services WITHIN each vehicle type, or is the navigation more about answering the capability question?"

**User:** "The navigation is about showing capability - 'yes, we service X.' Then inside it's just 'call us, here's what we do.' The vehicle types are the main thing."

**Agent:** "Got it. So the concept is: **Vehicle-type-first architecture that immediately answers 'do you service my vehicle?'** Does that capture it?"

**User:** "Exactly - that's the core idea."

**Agent:** "Perfect. Let me capture that:

**Core Structural Idea:**
Vehicle-type navigation bar as the primary organizing principle (cars, trucks, tractors, motorhomes, etc.)

**Implementation Principle:**
Navigation answers capability question first, then guides to services/contact

**Rationale:**
Directly addresses #1 user question ('do you service X?') and differentiates from competitors who don't show vehicle breadth upfront

**Concrete Example:**
Tourist with motorhome lands on site → sees 'Motorhomes' in nav → immediately knows Källa can help → clicks through to learn more/contact

**Features That Stem From Concept:**
1. Vehicle-type navigation bar (primary)
2. Vehicle-specific landing pages showing service breadth
3. Visual cues (icons/images) for each vehicle category

Does that capture the founding concept?"

**User:** "Perfect - that's exactly what I'm envisioning."

**[Documents concept, proceeds to success criteria]**
