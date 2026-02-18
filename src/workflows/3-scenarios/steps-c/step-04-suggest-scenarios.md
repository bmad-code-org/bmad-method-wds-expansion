# Step 04: Suggest Scenarios (USER CHECKPOINT)

**Goal:** Present the scenario plan to the user for approval before creating outlines.

---

## 1. Format the Scenario Plan

Present to user in this exact format:

```
## Scenario Plan for [Project Name]

### Site Analysis
- **Type:** [Presentation / Dynamic / Mixed]
- **Total Pages:** [N]
- **Format:** [Screen Flow / Storyboard / Mixed]
- **Scenarios:** [N] total

---

### Suggested Scenarios

**01: [Persona Name]'s [Purpose]** ⭐ Priority 1
- **Pages:** [comma-separated list]
- **Persona:** [Name] — [Primary driving force]
- **User Value:** [What user gets — be specific]
- **Business Value:** [What business gets — be measurable]
- **Format:** [Screen Flow / Storyboard]

**02: [Persona Name]'s [Purpose]** ⭐ Priority 1
- **Pages:** [comma-separated list]
- **Persona:** [Name] — [Primary driving force]
- **User Value:** [specific]
- **Business Value:** [measurable]
- **Format:** [Screen Flow / Storyboard]

[Continue for all scenarios...]

---

### Coverage Check
✅ All pages assigned: [Yes/No — if No, list unassigned pages]
✅ No page repetition: [Yes/No]
✅ Primary persona covered: [Yes/No]
✅ Top business goal addressed: [Yes/No]
```

---

## 2. Naming Rules

Scenario names MUST use persona names:

**Good:**
- "Hasse's Emergency Search"
- "Lars Checks Workshop Hours"
- "Åke Coordinates Fleet Service"

**Bad:**
- "Emergency Booking Flow"
- "Hours Lookup"
- "Service Scheduling"

**Why:** Keeps persona psychology front-of-mind throughout design.

---

## 3. Scenario ID Convention

- Format: `01`, `02`, `03`, etc.
- Folder slug: `01-hasses-emergency-search` (lowercase, hyphenated)
- File: `01-hasses-emergency-search.md`

---

## 4. Wait for Approval

**CHECKPOINT — Wait for user response.**

User may:
- **"Looks good, proceed"** → Continue to Step 05
- **"Combine X and Y"** → Adjust and re-present
- **"Add a scenario for [purpose]"** → Add VTC and re-present
- **"Focus on just [one flow]"** → Apply selective ignorance, re-present
- **"Missing page [X]"** → Add to inventory and assign

**Do NOT proceed to Step 05 until user explicitly approves the scenario plan.**

---

## 5. Record Approved Plan

After user approval, record:
- Final scenario count
- Final page assignments
- Any user adjustments and reasoning

---

## Output

User-approved scenario plan with IDs, pages, personas, and priorities.

---

## Next Step

<action>Load and execute: step-05-outline-scenario.md</action>

Do NOT skip ahead.
