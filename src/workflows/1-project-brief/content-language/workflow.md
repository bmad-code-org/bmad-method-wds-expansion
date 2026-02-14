---
name: Content & Language Workflow
description: Define tone of voice, language strategy, and content guidelines
---

# Content & Language Workflow

**Goal:** Establish how the product speaks — tone of voice, language requirements, and content guidelines that inform all copywriting and UX writing.

**Your Role:** Guide the user through articulating their brand voice, language needs, and content strategy in a way that's practical and actionable.

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
Location: {output_folder}/progress/agent-dialogs/{date}-content-language.md
Template: {project-root}/_bmad/wds/templates/agent-dialog.template.md
```

**2. Initialize with:**
- **Workflow:** Phase 1 - Content & Language
- **Project:** {project_name}
- **Status:** in_progress
- **Context:** "Defining brand voice, tone, language requirements, and content guidelines"
- **Plan:** List the 6 steps to be completed

**3. Inform user:**
> "I'm creating an agent dialog to track our conversation. This helps us resume if interrupted and documents decisions."

### During Each Step

After completing each step's work and before loading the next step, update the agent dialog with:

```markdown
### [Step Name]
**Q:** [Key questions asked]
**A:** [User responses - summarized]
**Documented in:** content-language.md ([section name])
**Key insights:** [Any important revelations or decisions]
**Status:** Complete
**Timestamp:** [HH:MM]
```

**Example:**
```markdown
### Brand Personality
**Q:** "If [business] were a person, how would you describe them?"
**A:** Identified 4 attributes: Trustworthy, Straightforward, Local, Competent
**Documented in:** content-language.md (Brand Personality section)
**Key insights:** Not fancy dealership tone - competent craftsman approach
**Status:** Complete
**Timestamp:** 10:45
```

### On Workflow Complete

**1. Update agent dialog:**
- Status: `complete`
- Last Updated: timestamp
- Mark all sections complete in Progress Status
- List final artifact in Generated Artifacts

**2. Note what's next:**
- "Ready for Platform Requirements workflow" or "Ready for Visual Direction workflow"

---

## PREREQUISITES

This workflow can run:
- **After** Product Brief (uses positioning and target user info)
- **In parallel with** Platform Requirements and Visual Direction

---

## INITIALIZATION SEQUENCE

### 1. Configuration Loading

Load and read full config from {project-root}/_bmad/wds/config.yaml and resolve:

- `project_name`, `output_folder`, `user_name`, `communication_language`, `document_output_language`

### 2. Agent Dialog Creation

Create agent dialog file following the AGENT DIALOG INTEGRATION instructions above.

### 3. First Step EXECUTION

Load, read full file and then execute `{project-root}/_bmad/wds/workflows/1-project-brief/content-language/steps-c/step-01-init.md` to begin workflow.

---

## STEP SEQUENCE

1. `step-01-init.md` — Initialize and load context
2. `step-02-personality.md` — Brand personality attributes
3. `step-03-tone.md` — Tone of voice guidelines
4. `step-04-languages.md` — Language strategy
5. `step-05-seo-keywords.md` — SEO keyword research
6. `step-05.5-content-structure.md` — Content structure principles (product vision, pages, navigation)
7. `step-06-synthesize.md` — Synthesize, review, and finalize

---

## COMPANION WORKFLOWS

After completing Content & Language, consider running:

**[Inspiration Analysis](../inspiration-analysis/workflow.md)**
- Analyze reference sites with the client
- Document visual/UX preferences as concrete design principles
- Output: `inspiration-analysis.md` — feeds into Scenario Outlining and Visual Design

---

## OUTPUT

This workflow produces:
- `content-language.md` — Content and language guidelines (including content structure principles)

This document feeds into:
- **Copywriting** — Tone and style guidance
- **UX Writing** — Microcopy guidelines
- **Translation** — Language and localization strategy
- **SEO** — Keyword strategy per language
- **Scenario Outlining** — Content structure informs page flows and user journeys
