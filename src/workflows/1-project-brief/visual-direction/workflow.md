---
name: Visual Direction Workflow
description: Establish visual style, brand aesthetics, and design direction
---

# Visual Direction Workflow

**Goal:** Capture visual direction that will guide all design decisions — from color choices to layout approaches to photographic style.

**Your Role:** Help the user articulate visual preferences, gather references, and synthesize into actionable design direction using the [Design Nomenclature Reference](../../../docs/models/design-nomenclature/index.md).

---

## WORKFLOW ARCHITECTURE

This uses **step-file architecture** for disciplined execution:

### Core Principles

- **Micro-file Design**: Each step is a self contained instruction file
- **Just-In-Time Loading**: Only current step file is in memory
- **Sequential Enforcement**: Complete steps in order
- **State Tracking**: Document progress in output file frontmatter
- **Append-Only Building**: Build documents by appending content

### Step Processing Rules

1. **READ COMPLETELY**: Always read entire step file before taking any action
2. **FOLLOW SEQUENCE**: Execute all numbered sections in order
3. **WAIT FOR INPUT**: Halt at menus and wait for user selection
4. **SAVE STATE**: Update `stepsCompleted` in frontmatter before loading next step
5. **LOAD NEXT**: When directed, load and execute next step file

### Critical Rules (NO EXCEPTIONS)

- 🛑 **NEVER** load multiple step files simultaneously
- 📖 **ALWAYS** read entire step file before execution
- 🚫 **NEVER** skip steps or optimize the sequence
- 💾 **ALWAYS** update frontmatter of output files

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
Location: {output_folder}/progress/agent-dialogs/{date}-visual-direction.md
Template: {project-root}/_bmad/wds/templates/agent-dialog.template.md
```

**2. Initialize with:**
- **Workflow:** Phase 1 - Visual Direction
- **Project:** {project_name}
- **Status:** in_progress
- **Context:** "Defining visual style, brand aesthetics, and design direction"
- **Plan:** List the 7 steps to be completed

**3. Inform user:**
> "I'm creating an agent dialog to track our conversation. This helps us resume if interrupted and documents decisions."

### During Each Step

After completing each step's work and before loading the next step, update the agent dialog with:

```markdown
### [Step Name]
**Q:** [Key questions asked]
**A:** [User responses - summarized]
**Documented in:** visual-direction.md ([section name])
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
- "Ready for UX Design (Phase 4)" or "Ready for Design System (Phase 5)"

---

## PREREQUISITES

This workflow works best:
- **After** Product Brief (positioning informs visual choices)
- **After** Content & Language (tone informs visual mood)
- **In parallel with** Platform Requirements

---

## DESIGN NOMENCLATURE

This workflow references the Design Nomenclature Reference for precise vocabulary:

- [UI Visual Styles](../../../docs/models/design-nomenclature/ui-visual-styles.md)
- [Color Terminology](../../../docs/models/design-nomenclature/color-terminology.md)
- [Typography Classification](../../../docs/models/design-nomenclature/typography-classification.md)
- [Design Aesthetics](../../../docs/models/design-nomenclature/design-aesthetics.md)
- [Layout Terminology](../../../docs/models/design-nomenclature/layout-terminology.md)
- [Visual Effects](../../../docs/models/design-nomenclature/visual-effects.md)

Use this vocabulary to describe visual direction precisely.

---

## INITIALIZATION SEQUENCE

### 1. Configuration Loading

Load and read full config from {project-root}/_bmad/wds/config.yaml and resolve:

- `project_name`, `output_folder`, `user_name`

### 2. Agent Dialog Creation

Create agent dialog file following the AGENT DIALOG INTEGRATION instructions above.

### 3. First Step EXECUTION

Load, read full file and then execute `{project-root}/_bmad/wds/workflows/1-project-brief/visual-direction/steps-c/step-01-init.md` to begin workflow.

---

## OUTPUT

This workflow produces:
- `visual-direction.md` — Visual direction document
- `visual-references/` — Folder for reference images and URLs

This document feeds into:
- **Phase 4 (UX Design)** — Visual constraints for design
- **Phase 5 (Design System)** — Foundation for design tokens
