# Step 09: Handover

**Goal:** Complete Phase 3 and prepare for Phase 4: UX Design.

---

## 1. Present Completion Summary

```
## Phase 3: UX Scenarios Complete ✓

**Project:** [project_name]
**Scenarios Created:** [N]

### Scenario List
| ID | Name | Persona | Pages | Priority |
|----|------|---------|-------|----------|
| 01 | [Name] | [Persona] | [N] | P1 |
| 02 | [Name] | [Persona] | [N] | P1 |
| ... | ... | ... | ... | ... |

### Coverage
- **Total pages:** [N]
- **Pages in scenarios:** [N]
- **Coverage:** [100% / X%]

### Quality
- **All scenarios pass quality review:** [Yes/No]
- **Overall quality:** [Excellent / Good]

### Files Created
- `C-UX-Scenarios/00-ux-scenarios.md` — Scenario index
- `C-UX-Scenarios/01-[slug]/01-[slug].md` — [Scenario name]
- `C-UX-Scenarios/02-[slug]/02-[slug].md` — [Scenario name]
[list all...]
```

---

## 2. Design Intent Selection

Before handing over to Phase 4, help the user choose a design approach for each scenario.

Present:

```
Your scenarios are ready for design. How would you like to approach each?

| # | Scenario | Approach |
|---|----------|----------|
| 01 | [Name] | [K] [C] [S] [D] [L] |
| 02 | [Name] | [K] [C] [S] [D] [L] |
| ... | ... | ... |

**Approaches:**
[K] Sketch — I'll draw it myself, agent interprets later
[C] Conceptualize — Let's explore what the design needs together
[S] Suggest — Agent proposes step by step, I confirm each
[D] Dream Up — Agent creates the whole flow, I review the result
[L] Later — Decide when I start Phase 4
```

For each scenario, save the chosen approach as `design_intent` in the scenario output file:
- Add `design_intent: [K|C|S|D|L]` to the scenario frontmatter
- Add `design_status: not-started` to track progress

---

## 3. What Comes Next

Explain to user:

```
**Next Steps:**

**Phase 4: UX Design** takes each scenario outline and designs it using your chosen approach:
- **Sketch** scenarios wait for your drawings
- **Conceptualize** scenarios start with collaborative exploration
- **Suggest** scenarios let the agent propose step by step
- **Dream Up** scenarios let the agent create autonomously

You can always change approach in Phase 4.

Would you like to continue to Phase 4, or take a break?
```

---

## 4. Update Agent Dialog (If Exists)

If tracking via agent dialog:
- Mark Phase 3 as complete
- Log scenario count and quality scores
- Note any user adjustments made during the process

---

## Output

<output>Phase 3: UX Scenarios complete. [N] scenarios created covering [N] pages.</output>

---

_End of Phase 3: UX Scenarios workflow._
