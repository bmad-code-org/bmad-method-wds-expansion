# Step 02: Analyze Scope & Scale Strategy

**Goal:** Determine site type, list all pages/views, assess scale, and select approach mode.

---

## 1. Site Type Detection

Based on Product Brief, classify the site:

**Presentation Site** (marketing, service catalog, company profile, portfolio):
- Scenario format: **Screen Flow** (page-to-page navigation)
- Coverage: Expose all pages
- Storyboarding: Minimal (only for complex interactions like booking forms)

**Dynamic App** (SaaS, booking system, social platform, productivity tool):
- Scenario format: **Storyboard** (document states within views)
- Coverage: Focus on core workflow first
- Screen flow: Only for multi-step processes (onboarding, checkout)

**Mixed** (presentation site with dynamic features):
- Use both formats as needed per scenario

---

## 2. List All Pages/Views

Create a complete list of every page or view from the Product Brief.

**Format:**
```
## Page Inventory

1. [Page Name] — [Brief purpose]
2. [Page Name] — [Brief purpose]
3. [Page Name] — [Brief purpose]
...

**Total: [N] pages/views**
```

**Rules:**
- Include every page mentioned in Product Brief
- Include pages implied by navigation structure
- Include pages implied by business goals (e.g., if goal mentions "booking" there's a booking page)
- Do NOT include generic shared elements (header, footer, navigation) — these are documented separately

---

## 3. Scale Assessment

Based on page count, determine strategy:

**Small (< 20 pages):**
- Strategy: **Comprehensive coverage** — document all pages across scenarios
- Mode recommendation: **Dream** or **Suggest**
- Every page must appear in exactly one scenario

**Medium (20-50 pages):**
- Strategy: **Comprehensive coverage** with natural groupings
- Mode recommendation: **Suggest**
- Group pages by navigation patterns, service types, or content categories

**Large (100+ pages):**
- Strategy: **Selective ignorance** — focus on most valuable workflow
- Mode recommendation: **Dialog**
- Deep work on business-critical flow (learning effect reveals patterns for rest)

---

## 4. Page Documentation Strategy

Determine how to handle similar pages:

**Few pages + high variation** → Document as separate pages
- Each page substantially different in structure, content, or purpose
- Example: 13 vehicle pages with different positioning

**Many pages + low variation** → Document as template with content variations
- Structurally identical pages with only content differences
- Example: 500 product pages with same layout, different product data

---

## 5. Present Analysis (USER CHECKPOINT)

Present to user and **wait for approval**:

```
## Scope Analysis

**Site Type:** [Presentation / Dynamic / Mixed]
**Total Pages:** [N]
**Scale:** [Small / Medium / Large]
**Recommended Mode:** [Dream / Suggest / Dialog]
**Scenario Format:** [Screen Flow / Storyboard / Mixed]

### Page Inventory
[numbered list from step 2]

### Page Strategy
- [X] pages documented individually (high variation)
- [Y] pages as templates (low variation groups: [list groups])

**Does this look right? Any pages missing or that should be grouped differently?**
```

**WAIT for user response.** Do not proceed until user confirms.

---

## Output

User-confirmed page inventory, site type, scale strategy, and mode.

---

## Next Step

<action>Load and execute: step-03-build-vtcs.md</action>

Do NOT skip ahead.
