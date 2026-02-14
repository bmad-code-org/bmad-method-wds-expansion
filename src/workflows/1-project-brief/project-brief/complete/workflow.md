---
name: Product Brief Workflow
description: Create comprehensive product briefs through collaborative step-by-step discovery
---

# Product Brief Workflow

**Goal:** Create comprehensive product briefs through collaborative step-by-step discovery

**Your Role:** Work as equals with the user - you bring structured thinking and facilitation skills, they bring domain expertise and product vision.

---

## WORKFLOW ARCHITECTURE

This uses **step-file architecture** for disciplined execution:

### Core Principles

- **Micro-file Design**: Each step is a self contained instruction file that is a part of an overall workflow that must be followed exactly
- **Just-In-Time Loading**: Only current step file is in memory - never load future step files until told to do so
- **Sequential Enforcement**: Sequence within step files must be completed in order, no skipping or optimization allowed
- **State Tracking**: Document progress in output file frontmatter using `stepsCompleted` array when a workflow produces a document
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
- 📋 **NEVER** create mental todo lists from future steps

---

## AGENT DIALOG INTEGRATION

This workflow creates and maintains **agent dialogs** using a micro-file structure to track conversations and decisions.

### Purpose

Agent dialogs provide:
- Full conversation history (questions asked, answers given, reflection checkpoints)
- Context for resuming if interrupted
- Documentation of "why" behind decisions (not just what)
- Quality tracking (reflection checkpoints show agent understanding accuracy)
- Audit trail for future reference
- Handoff context for next workflow phases

### Dialog Structure (Micro-File Architecture)

The Product Brief uses **8 separate dialog files** (not one monolithic file):

```
{root_folder}/progress/dialog/
├── README.md              - Progress tracker & overview
├── 00-context.md          - Working relationship context
├── 02-vision.md           - Vision conversation & reflection
├── 03-users.md            - User definition & reflection
├── 04-concept.md          - Product concept & reflection
├── 06-inspiration.md      - Visual preferences & references
├── 07-positioning.md      - Positioning & reflection
├── decisions.md           - Append-only decision log
└── USAGE.md               - How agents use these files
```

**Why micro-files?**
- BMad V6 compliance (250-line maximum per file)
- Focused, easy to navigate
- Update only relevant sections
- Scales without bloat

### On Workflow Start (Before Step 1)

**MANDATORY: Create dialog folder structure**

**1. Create folder:**
```
Location: {root_folder}/progress/dialog/
```

**2. Copy template files from:**
```
Source: {project-root}/_bmad/wds/templates/project-brief-dialog/
Files:
  - README.md (progress tracker)
  - 00-context.md
  - 02-vision.md
  - 03-users.md
  - 04-concept.md
  - 06-inspiration.md
  - 07-positioning.md
  - decisions.md
  - USAGE.md
```

**3. Inform user:**
> "I'm creating a dialog folder to track our conversations. This uses micro-files (one per topic) and helps us resume if interrupted while documenting why decisions were made."

**THIS IS NOT OPTIONAL.** Dialog tracking is mandatory for all Product Brief processes.

### During Each Step

Each step file has an **"Agent Dialog Update"** section specifying which dialog file to update.

**Steps with specific dialog files:**
- Step 1 (Init) → `dialog/00-context.md`
- Step 2 (Vision) → `dialog/02-vision.md`
- Step 3 (Positioning) → `dialog/07-positioning.md`
- Step 7 (Target Users) → `dialog/03-users.md`

**Steps using decision log:**
- Steps 4-6, 8-12 → append to `dialog/decisions.md`

**Every dialog update must include:**
- Opening question + user's initial response
- Key exchanges that revealed insights
- **Reflection checkpoint:** Agent synthesis + user confirmation/correction
- Final artifact documented
- Key insights captured

**Then:** Mark step complete in `dialog/progress-tracker.md` progress tracker

### On Workflow Complete

**1. Update `dialog/progress-tracker.md`:**
- Mark all steps complete
- Update status to `complete`
- List final artifacts generated

**2. Note what's next:**
> "Product Brief complete! Dialog files in `progress/dialog/` document our full conversation. Ready for Phase 2: Trigger Mapping."

---

## INITIALIZATION SEQUENCE

### 1. Configuration Loading

Load and read full config from {project-root}/_bmad/wds/config.yaml and resolve:

- `project_name`, `output_folder`, `user_name`, `communication_language`, `document_output_language`, `user_skill_level`

### 2. Agent Dialog Folder Creation (MANDATORY)

**BEFORE executing Step 1, create dialog folder structure:**

1. Create folder: `{root_folder}/progress/dialog/`
2. Copy ALL template files from `{project-root}/_bmad/wds/templates/project-brief-dialog/`:
   - progress-tracker.md (progress tracker)
   - 00-context.md
   - 02-vision.md
   - 03-users.md
   - 04-concept.md
   - 06-inspiration.md
   - 07-positioning.md
   - decisions.md
   - USAGE.md

3. Inform user about dialog tracking (see AGENT DIALOG INTEGRATION section above)

**This step CANNOT be skipped.** All workflow steps depend on dialog files existing.

### 3. First Step EXECUTION

Load, read full file and then execute `{project-root}/_bmad/wds/workflows/1-project-brief/project-brief/complete/steps-c/step-01-init.md` to begin workflow.

**Note:** Alignment & Signoff is now a separate, optional workflow. If you need stakeholder approval before starting, use the alignment & signoff workflow first: `{project-root}/_bmad/wds/workflows/1-project-brief/alignment-signoff/workflow.md`
