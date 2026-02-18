# Step 03: Build Value Trigger Chains

**Goal:** Extract Value Trigger Chains (VTCs) from the Trigger Map to identify which scenarios to create.

---

## What is a Value Trigger Chain?

A VTC traces the path from business strategy to user action:

```
Business Goal → Persona → Driving Force → Transaction → Scenario
```

**Example:**
```
BG01: Reduce info calls by 40%
  → Hasse (Primary - stressed tourist)
    → Fear: Being stranded with broken RV
      → Transaction: Confirm mechanic capability + get directions
        → 01: "Hasse's Emergency Search"
```

---

## 1. Build VTCs

For **each business goal** from the Trigger Map:

1. Identify which persona(s) most directly drive this goal
2. Identify which driving forces (wants AND fears) connect to this goal
3. Determine the specific transaction/action that fulfills it
4. Name a candidate scenario using the persona's name

**For each VTC, answer the Decision Matrix (all 7 required):**

| # | Question | Answer |
|---|----------|--------|
| 1 | Which business goal? | [Specific goal from Trigger Map] |
| 2 | Which persona? | [Name + priority level] |
| 3 | Which driving force? | [Specific want or fear] |
| 4 | What's the transaction? | [Concrete action user takes] |
| 5 | Where does user come from? | [Natural starting point - be specific] |
| 6 | What value does user get? | [Tangible outcome] |
| 7 | What value does business get? | [Measurable result] |

---

## 2. Assign Pages to VTCs

For each VTC, list which pages from the inventory (Step 02) the user visits.

**Rules:**
- Each page appears in exactly ONE VTC/scenario (no repetition)
- If a page could fit multiple scenarios, assign it to the highest-priority one
- Shared elements (navigation, footer) are excluded from page assignment

---

## 3. Prioritize

Rank the VTCs:

**Priority 1 — Critical Path:**
- Top business goal + primary persona + core product value
- These scenarios are created first and in most detail

**Priority 2 — Supporting:**
- Secondary persona scenarios, alternative entry paths
- Important but not the strategic core

**Priority 3 — Edge Cases:**
- Admin tasks, rare user segments, error recovery
- May be deferred to later phases

---

## 4. Coverage Check

After building all VTCs, verify:

- [ ] Every page from inventory is assigned to exactly one VTC
- [ ] Primary persona has at least one Priority 1 scenario
- [ ] Top business goal is addressed by at least one scenario
- [ ] No page appears in multiple scenarios

**If pages are unassigned:** Create additional VTCs or expand existing ones to cover them.

---

## Output

Present the complete VTC list:

```
## Value Trigger Chains

### Priority 1
**VTC-01:** [Business Goal] → [Persona] → [Force] → [Transaction]
- Scenario: 01-[slug]
- Pages: [list]

### Priority 2
**VTC-02:** [Business Goal] → [Persona] → [Force] → [Transaction]
- Scenario: 02-[slug]
- Pages: [list]

### Coverage: [X/Y] pages assigned
```

---

## Next Step

<action>Load and execute: step-04-suggest-scenarios.md</action>

Do NOT skip ahead.
