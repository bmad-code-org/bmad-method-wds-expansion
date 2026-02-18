# Step 01: Load Context & Detect Project State

**Goal:** Read all prerequisite artifacts and detect whether this is a fresh start or resume.

---

## 1. Read Configuration

Read `{project-root}/_bmad/wds/config.yaml` and extract:
- `project_name`
- `output_folder`
- `user_name`
- `communication_language`
- `document_output_language`

---

## 2. Read Product Brief

Read `{output_folder}/A-Product-Brief/product-brief.md`

**Extract and note:**
- Site/app type (marketing site, SaaS, booking system, portfolio, etc.)
- Business context and constraints
- Technical platform (WordPress, custom, etc.)
- Number of pages/views mentioned
- Any navigation structure described

---

## 3. Read Trigger Map

Read `{output_folder}/B-Trigger-Map/trigger-map.md` (the hub document)

**Extract and note:**
- **Business Goals:** Vision statement, all objectives with priority tiers (Primary/Secondary/Tertiary)
- **Personas:** For each persona:
  - Name and role
  - Priority level (Primary/Secondary/Tertiary)
  - Top 3 positive drivers (wants)
  - Top 3 negative drivers (fears)
  - Role in flywheel

**Also read persona documents** if they exist:
- `{output_folder}/B-Trigger-Map/02-*.md` (Primary persona)
- `{output_folder}/B-Trigger-Map/03-*.md` (Secondary persona)
- `{output_folder}/B-Trigger-Map/04-*.md` (Tertiary persona, if exists)

---

## 4. Check for Existing Work

**Check for resume situation:**
- Does `{output_folder}/C-UX-Scenarios/` exist?
- Are there any scenario files already?
- Are there unfinished agent dialogs in `{output_folder}/_progress/agent-dialogs/`?

**If existing work found:**
```
"I see we have existing scenario work:
- [list what exists]

Should I:
1. Continue where we left off
2. Review and adjust existing scenarios
3. Start fresh"
```
Wait for user response before proceeding.

**If starting fresh:** Continue to next step.

---

## 5. Present Context Summary

Present to user:
```
"Here's what I'm working with:

**Project:** [project_name]
**Site Type:** [type from Product Brief]
**Business Goals:** [count] objectives across [tier count] tiers
**Personas:** [list names with priority levels]
**Primary Persona:** [name] — [top driving force]

Ready to analyze the scope."
```

---

## Output

Context loaded and summarized.

---

## Next Step

<action>Load and execute: step-02-analyze-scope.md</action>

Do NOT skip ahead.
