---
name: Platform Requirements Workflow
description: Define technical boundaries and platform decisions that constrain UX and development
---

# Platform Requirements Workflow

**Goal:** Capture technical decisions and constraints that define boundaries for UX design and development handoff.

**Your Role:** Guide the user through technical decisions, asking clarifying questions and documenting choices that will inform both design constraints and development specifications.

---

## WORKFLOW ARCHITECTURE

This uses **step-file architecture** for disciplined execution:

### Core Principles

- **Micro-file Design**: Each step is a self contained instruction file that is a part of an overall workflow that must be followed exactly
- **Just-In-Time Loading**: Only current step file is in memory - never load future step files until told to do so
- **Sequential Enforcement**: Sequence within step files must be completed in order, no skipping or optimization allowed
- **State Tracking**: Document progress in output file frontmatter using `stepsCompleted` array
- **Append-Only Building**: Build documents by appending content as directed to output file

### Step Processing Rules

1. **READ COMPLETELY**: Always read entire step file before taking any action
2. **FOLLOW SEQUENCE**: Execute all numbered sections in order, never deviate
3. **WAIT FOR INPUT**: If a menu is presented, halt and wait for user selection
4. **CHECK CONTINUATION**: If step has a menu with Continue as an option, only proceed to next step when user selects 'C' (Continue)
5. **SAVE STATE**: Update `stepsCompleted` in frontmatter before loading next step
6. **LOAD NEXT**: When directed, load, read entire file, then execute next step file

### Critical Rules (NO EXCEPTIONS)

- 🛑 **NEVER** load multiple step files simultaneously
- 📖 **ALWAYS** read entire step file before execution
- 🚫 **NEVER** skip steps or optimize the sequence
- 💾 **ALWAYS** update frontmatter of output files when writing final output for a specific step
- 🎯 **ALWAYS** follow the exact instructions in step file
- ⏸️ **ALWAYS** halt at menus and wait for user input

---

## AGENT DIALOG INTEGRATION

This workflow creates and maintains an **agent dialog** to track the conversation and decisions.

### Purpose

Agent dialogs provide:
- Full conversation history (questions asked, answers given)
- Context for resuming if interrupted
- Documentation of "why" behind decisions
- Audit trail for future reference
- Handoff context for next workflow phases

### On Workflow Start (Before Step 1)

**1. Create agent dialog file:**
```
Location: {output_folder}/progress/agent-dialogs/{date}-platform-requirements.md
Template: {project-root}/_bmad/wds/templates/agent-dialog.template.md
```

**2. Initialize with:**
- **Workflow:** Phase 1 - Platform Requirements
- **Project:** {project_name}
- **Status:** in_progress
- **Context:** "Defining technical boundaries, platform decisions, and constraints"
- **Plan:** List the 6 steps to be completed

**3. Inform user:**
> "I'm creating an agent dialog to track our conversation. This helps us resume if interrupted and documents decisions."

### During Each Step

After completing each step's work and before loading the next step, update the agent dialog with:

```markdown
### [Step Name]
**Q:** [Key questions asked]
**A:** [User responses - summarized]
**Documented in:** platform-requirements.md ([section name])
**Key insights:** [Any important revelations or decisions]
**Status:** Complete
**Timestamp:** [HH:MM]
```

### On Workflow Complete

**1. Update agent dialog:**
- Status: `complete`
- Last Updated: timestamp
- Mark all sections complete in Progress Status
- List final artifact in Generated Artifacts

**2. Note what's next:**
- "Ready for Visual Direction workflow" or "Ready for UX Design (Phase 4)"

---

## PREREQUISITES

This workflow should be run **after** the Product Brief is complete. It uses information from the Product Brief to inform platform decisions.

---

## INITIALIZATION SEQUENCE

### 1. Configuration Loading

Load and read full config from {project-root}/_bmad/wds/config.yaml and resolve:

- `project_name`, `output_folder`, `user_name`, `communication_language`, `document_output_language`, `user_skill_level`

### 2. Agent Dialog Creation

Create agent dialog file following the AGENT DIALOG INTEGRATION instructions above.

### 3. First Step EXECUTION

Load, read full file and then execute `{project-root}/_bmad/wds/workflows/1-project-brief/platform-requirements/steps-c/step-01-init.md` to begin workflow.

---

## OUTPUT

This workflow produces:
- `platform-requirements.md` — Technical boundaries document

This document feeds into:
- **Phase 4 (UX Design)** — Constraints for what's possible
- **Phase 6 (Deliveries)** — Development handoff specifications
