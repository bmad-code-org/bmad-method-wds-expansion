# Step 12: Synthesize and Create Brief

## Purpose

Present a cohesive synthesis of everything captured, get final confirmation, and generate the complete Product Brief document.

## Context for Agent

**Philosophy:** This isn't a template-fill exercise - tell the story of what you've learned. Present the strategic narrative, invite reflection, make it feel complete and purposeful.

**Your role:** Strategic synthesizer helping user see the whole picture.

---

## Instructions

### 1. Present the Strategic Narrative

**Check context first:**
- If `existing_materials.has_materials = true`: Frame as "Here's the refined strategic foundation..." (acknowledging we built on existing work)
- If `existing_materials.has_materials = false`: Frame as "Here's the strategic foundation we've built..." (fresh creation)

**Tell the story you've heard across all steps:**

> "We've covered a lot of ground. Let me share back the strategic foundation we've built for {product name}:
>
> **The Vision**
> [Vision statement - what this is and why it matters]
>
> **Who It's For**
> [Target users and their context]
>
> **The Problem & Opportunity**
> [What problem exists, what opportunity you're pursuing]
>
> **Positioning**
> [Who it's for, what it is, what makes it different]
>
> **Success Looks Like**
> [Primary success metric + timeline]
>
> **The Reality**
> [Key constraints that shape the solution]
>
> **What Makes You Win**
> [Unfair advantage in competitive landscape]
>
> Does this capture the strategic foundation? Anything that feels off or missing?"

**Key principle:** Present it as a coherent story, not a checklist.

### 2. Handle Reflection & Adjustments

**If user confirms:** Great! Proceed to generate document.

**If user wants adjustments:**
- Listen carefully to what feels off
- Ask clarifying questions: "What would you change about [that element]?"
- Update the affected section
- Re-present the adjusted narrative
- Get confirmation before proceeding

**If user sees gaps:**
- "Good catch - let's address that. Tell me more about [gap]"
- Capture the additional context
- Integrate it into the narrative
- Confirm the updated version

### 3. Generate the Product Brief Document

**Use the template, but make it readable:**

- Write it in clear, natural language (not robotic template-speak)
- Include the strategic narrative from Step 1
- Add all detailed elements in organized sections
- Make it useful for the team (not just documentation for documentation's sake)

**Structure:**
```markdown
# Product Brief: {Product Name}

## Strategic Summary

[2-3 paragraph narrative capturing the essence]

## Vision

[Vision statement + context]

## Positioning

[Full positioning with components]

## Target Users

[Primary user profile(s)]

## Business Model

[B2B/B2C/Both + rationale]

## Success Criteria

[Primary + secondary metrics, timeline]

## Competitive Landscape

[Alternatives, unfair advantage, why you win]

## Constraints & Context

[Timeline, budget, technical, etc.]

## Tone of Voice

[Attributes + examples]

---

**Status:** Product Brief Complete
**Next Phase:** Trigger Mapping (Phase 2)
**Last Updated:** [Date]
```

### 4. Present Completion

**Show the completed brief and celebrate:**

> "✅ **Product Brief complete!**
>
> I've documented everything in `[output_location]/product-brief.md`
>
> This gives you:
> - Strategic foundation for all design decisions
> - Clear picture of who this is for and why it matters
> - Success metrics to guide prioritization
> - Context for the team to understand the 'why' behind choices
>
> **What's next:**
> - Phase 2: Trigger Mapping (identify key user scenarios)
> - Use this brief to ground all future decisions
>
> Questions about anything in the brief?"

### 5. Update All Dialog Files

**Finalize agent dialogs:**

**In `dialog/progress-tracker.md`:**
- Mark ALL steps complete
- Update status to `complete`
- Add completion timestamp
- List final artifact location

**In `dialog/decisions.md`, append:**
```markdown
### Product Brief Synthesis (Step 12)

**Final narrative presented:** [Yes/adjustments made]

**Adjustments during synthesis:**
- [Any changes made during final review]

**User confirmation:** [Confirmed / Refined and confirmed]

**Brief generated:** [Location]

**Completion:** [Timestamp]
```

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
    'step-11-tone-of-voice.md',
    'step-12-synthesize.md',
  ]
status: 'complete'
completed_date: '[YYYY-MM-DD]'
```

---

## Workflow Complete

**The user now has:**
- ✅ Complete Product Brief document
- ✅ Full agent dialog history documenting the conversation
- ✅ Strategic foundation for Phase 2 (Trigger Mapping)

**Next Phase:** Phase 2 - Trigger Mapping

---

## Example

**Agent:** "We've covered a lot of ground! Let me share back the strategic foundation we've built for Källa Fordonservice:

**The Vision**
A professional website that showcases comprehensive vehicle service capability (lawnmowers to tour buses) and establishes credibility for northern Öland's trusted auto service expert.

**Who It's For**
- **Primary:** Year-round local vehicle owners needing reliable full-service garage
- **Secondary:** Summer tourists with breakdown needs, uncertain if garages can handle their vehicle type

**The Problem & Opportunity**
Vehicle owners on northern Öland waste time calling around asking 'do you service X?'Källa handles all vehicles but has no web presence to communicate this breadth + expertise.

**Positioning**
For vehicle owners in northern Öland who need reliable service for any type of vehicle, Källa Fordonservice is a full-spectrum certified garage that provides peace of mind with 20+ years of trusted expertise. Unlike garages that specialize or can't handle certain vehicles, we service everything from lawnmowers to tour buses as the region's only AutoExperten-certified comprehensive option.

**Success Looks Like**
50% reduction in basic inquiry calls ('do you service X?') by end of June, measured against current 20-30% of calls. Summer tourist discovery increase measured by new customer calls June-August.

**The Reality**
- Launch by May (before summer season)
- Budget: 20-30k SEK
- Simple build (standalone, contact form)
- Design through Whiteport

**What Makes You Win**
20+ years comprehensive expertise + equipment for all vehicle types + northern Öland geographic monopoly. Hard to replicate all three.

Does this capture the strategic foundation?"

**User:** "Yeah, that's perfect - that's exactly it."

**Agent:** "Excellent! I'll generate the complete Product Brief document now."

**[Generates document, presents completion]**

**Agent:** "✅ **Product Brief complete!**

I've documented everything in `design-process/A-Product-Brief/product-brief.md`

This gives you the strategic foundation for all design decisions - who it's for, why it matters, and what success looks like.

**What's next:** Phase 2: Trigger Mapping to identify key user scenarios (like stressed tourist breakdown vs year-round local annual service).

Ready to move forward?"
