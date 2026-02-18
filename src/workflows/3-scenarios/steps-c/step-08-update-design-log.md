# Step 08: Update Design Log

**Goal:** Document Phase 3 completion in the project design log.

---

## Why This Step Exists

The design log is the project's memory. It lets any agent or human understand what happened, when, and why — without re-reading all artifacts. Do not skip this step.

---

## 1. Read the Current Log

Read `{output_folder}/_progress/00-progress.md` to understand existing entries and format.

---

## 2. Append Progress Entry

Add the following under the `## Progress` section (after the last entry):

```
### [date] — Phase 3: UX Scenarios Complete

**Agent:** Saga (Scenario Outline)
**Scenarios:** [N] scenarios covering [N] pages
**Quality:** [Excellent / Good]

**Artifacts Created:**
- `C-UX-Scenarios/00-ux-scenarios.md` — Scenario index
- `C-UX-Scenarios/01-[slug]/01-[slug].md` — [Scenario name]
- [list ALL scenario files created]

**Summary:** [2-3 sentences: what scenarios were created, key design decisions made during the process, page coverage status]

**Next:** Phase 4 — UX Design
```

**Rules:**
- List every artifact file — do not summarize with "etc."
- Summary must mention specific decisions, not generic statements
- Use the actual date, not a placeholder

---

## 3. Record Key Decisions

Add rows to the `## Key Decisions` table for any significant choices made during Phase 3:

```
| [date] | [decision] | Phase 3: Scenarios | Saga + [user_name] |
```

Examples of key decisions worth logging:
- Scenario count adjustments (user added/removed scenarios)
- Page assignment changes
- Priority reordering
- Scope decisions (selective ignorance applied)

If no significant decisions were made, skip this section.

---

## 4. Verify

- [ ] Progress entry appended (not overwriting existing entries)
- [ ] All artifact files listed
- [ ] Summary is specific, not generic
- [ ] Key decisions recorded (if any)

---

## Output

<output>Design log updated. Phase 3: UX Scenarios documented in _progress/00-progress.md</output>

---

## Next Step

<action>Load and execute: step-09-handover.md</action>

Do NOT skip ahead.
