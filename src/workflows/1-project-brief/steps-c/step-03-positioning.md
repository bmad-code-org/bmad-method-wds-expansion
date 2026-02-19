# Step 3: Define Positioning

## Purpose

Help user explore and articulate their positioning through natural conversation, then synthesize it into a clear positioning statement.

## Context for Agent

**Philosophy:** Don't ask the user to produce a positioning statement. Have an exploratory conversation about who it's for, what makes it different, and what alternatives exist - then YOU synthesize this into a positioning statement.

**Your role:** Strategic interviewer + positioning synthesizer.

## Prerequisites

**Load agent guides:**
- `src/data/agent-guides/saga/conversational-followups.md` - Follow-up patterns
- `src/data/agent-guides/saga/discovery-conversation.md` - General principles

**Load project context from** `wds-project-outline.yaml`:
- `project_context.stakes` - Shapes tone and documentation depth
- `working_relationship.involvement_level` - Shapes explanation level
- `working_relationship.recommendation_style` - Shapes directness

---

## Workflow Steps

This step executes 4 micro substeps sequentially:

### Substep 1: Open Conversation
**File:** `../data/positioning-open-conversation.md`
**Task:** Introduce positioning naturally, invite user to think about market fit

### Substep 2: Explore Positioning
**File:** `../data/positioning-explore.md`
**Task:** Listen for signals, capture all positioning components (target, need, category, benefit, alternatives, differentiator)

### Substep 3: Reflect & Confirm
**File:** `../data/positioning-reflect-confirm.md`
**Task:** Synthesize positioning components, get user confirmation before creating final statement

### Substep 4: Synthesize & Document
**File:** `../data/positioning-synthesize.md`
**Task:** Create positioning statement, document with components and rationale

---

## Execution

Execute substeps in order. Each substep completes before moving to next.

**Start:** Load and execute `../data/positioning-open-conversation.md`

---

## Agent Dialog Update

**Mandatory:** Update `dialog/07-positioning.md` before marking this step complete.

**Substep 4 handles this.**

The dialog should capture:
- Opening question + user's initial response
- Key exchanges exploring target customer, need, alternatives, differentiation
- Reflection checkpoint (synthesis + user confirmation/correction)
- Final positioning statement (with all components)
- Strategic rationale

**Then:** Mark Step 3 complete in `dialog/progress-tracker.md` progress tracker

---

## State Update

After completing all substeps, update frontmatter:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-vision.md', 'step-03-positioning.md']
positioning: '[synthesized positioning statement]'
```

---

## Next Step

Load, read full file, and execute: `step-04-create-vtc.md`
