# Step 05: Outline Scenario (One at a Time)

**Goal:** Create a detailed outline for ONE scenario. Repeat this step for each scenario in the approved plan.

---

## Which Scenario?

Process scenarios in priority order (Priority 1 first, then 2, then 3).

If this is your first time at this step, start with scenario 01.
If returning from a loop, continue with the next unfinished scenario.

---

## Template

Load the full template: `{installed_path}/substeps/scenario-outline-template.md`

---

## 7 Required Components

Every scenario outline MUST have all 7 components:

### 1. Scenario Name & ID

- **Name:** Uses persona name + purpose (e.g., "Hasse's Emergency Search")
- **ID:** 01, 02, etc.
- **Slug:** `01-hasses-emergency-search`

### 2. Core Feature

What this scenario covers, stated as user purpose (not feature name).

- **Bad:** "Homepage and service pages"
- **Good:** "Verify service availability before booking"

Must align with a specific business goal from the Trigger Map.

### 3. Entry Point (Realistic)

How the user ACTUALLY arrives. Be specific about:
- **Device:** Mobile, desktop, tablet
- **Context:** Where they are, what they're doing
- **Discovery:** How they found the site (Google search, link, ad, bookmark)

- **Bad:** "User opens app"
- **Good:** "Googles 'car repair Öland' on mobile while parked at gas station, clicks top organic result"

### 4. Mental State (Trigger / Hope / Worry)

Three components — all required, all specific:

- **Trigger:** What just happened that brought them here NOW
- **Hope:** What they're hoping to find or achieve
- **Worry:** What they're afraid of or want to avoid

- **Bad:** "User is interested in the product"
- **Good:** "Trigger: Motorhome broke down in Byxelkrok, family vacation at risk. Hope: Find trustworthy mechanic nearby, get back on road today. Worry: Being stranded for days, getting ripped off by unknown mechanic"

### 5. Success Goals (Mutual Value)

Both required, both specific and measurable:

- **User Success:** Tangible outcome the user achieves
- **Business Success:** Measurable result for the business

- **Bad:** User: "Successfully use the site" / Business: "Get more customers"
- **Good:** User: "Confirmed mechanic fixes motorhomes, has location and hours, feels confident calling" / Business: "High-intent tourist call captured, positioned as emergency-capable, info call avoided"

### 6. Shortest Path (Linear Sunshine Path)

Numbered steps. Each step has page name + what user accomplishes there.

**Rules:**
- Completely linear — ZERO "if" statements, ZERO branches
- Minimum viable steps — can you remove any step without breaking the flow?
- Each step moves meaningfully toward success
- This is the happiest path when everything works perfectly

**Format:**
```
1. **[Page Name]** — [What user sees/does/achieves here]
2. **[Page Name]** — [What user sees/does/achieves here]
3. **[Page Name]** — [What user sees/does/achieves here] ✓
```

### 7. Trigger Map Connections

Explicitly link to Trigger Map data:
- **Persona:** [Name] ([Priority level])
- **Driving Forces Addressed:**
  - Positive: [specific want from Trigger Map]
  - Negative: [specific fear from Trigger Map]
- **Business Goal:** [specific goal + objective number]

---

## Quality Gates (Check Before Moving On)

Before proceeding to the next scenario, verify:

- [ ] Mental state is visceral and specific (not generic "interested")
- [ ] Entry point is realistic with device + context + discovery method
- [ ] Path is truly linear (zero "if" statements)
- [ ] Both successes are specific and measurable (not vague)
- [ ] Scenario name includes persona name
- [ ] All 7 components present

**If any gate fails:** Fix before proceeding.

---

## Create the File

1. Create folder: `{output_folder}/C-UX-Scenarios/[NN-slug]/`
2. Create file: `{output_folder}/C-UX-Scenarios/[NN-slug]/[NN-slug].md`
3. Use the template from substeps to structure the content

---

## Loop Check

**Are there more scenarios in the approved plan?**

- **Yes** → Loop back to the top of this step for the next scenario
- **No** → Proceed to next step

---

## Next Step (When All Scenarios Done)

<action>Load and execute: step-06-generate-overview.md</action>

Do NOT skip ahead.
