# Step 2: Capture Vision

## Purpose

Help user explore and articulate their vision through natural conversation, then synthesize it into a clear vision statement.

## Context for Agent

**Philosophy:** Don't ask the user to produce a vision statement. Have an exploratory conversation where they dump their ideas, and YOU synthesize the substance into a vision statement.

**Your role:** Curious listener + strategic synthesizer.

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
**File:** `../data/vision-open-conversation.md`
**Task:** Adapt opening question to context, invite user to think out loud

### Substep 2: Explore Vision
**File:** `../data/vision-explore.md`
**Task:** Listen for signals, ask follow-ups until essence is captured

### Substep 3: Reflect & Confirm
**File:** `../data/vision-reflect-confirm.md`
**Task:** Synthesize understanding, get confirmation before proceeding

### Substep 4: Synthesize & Document
**File:** `../data/vision-synthesize.md`
**Task:** Create vision statement, document with context

---

## Execution

Execute substeps in order. Each substep completes before moving to next.

**Start:** Load and execute `../data/vision-open-conversation.md`

---

## State Update

After completing all substeps, update frontmatter:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-vision.md']
vision: '[synthesized vision statement]'
```
