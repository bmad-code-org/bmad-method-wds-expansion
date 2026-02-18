# Step 06: Generate Scenario Overview

**Goal:** Create the 00-ux-scenarios.md index file linking all scenarios.

---

## 1. Create Overview File

Create `{output_folder}/C-UX-Scenarios/00-ux-scenarios.md`

---

## 2. Document Structure

```markdown
# UX Scenarios: [Project Name]

> Scenario outlines connecting Trigger Map personas to concrete user journeys

**Created:** [Date]
**Author:** [user_name] with [Agent Name]
**Method:** Whiteport Design Studio (WDS)

---

## Scenario Summary

| ID | Scenario | Persona | Pages | Priority | Status |
|----|----------|---------|-------|----------|--------|
| 01 | [Name] | [Persona] | [count] | ⭐ P1 | ✅ Outlined |
| 02 | [Name] | [Persona] | [count] | ⭐ P1 | ✅ Outlined |
| 03 | [Name] | [Persona] | [count] | P2 | ✅ Outlined |

---

## Scenarios

### [01: Scenario Name](01-slug/01-slug.md)
**Persona:** [Name] — [Driving Force]
**Pages:** [comma-separated list]
**User Value:** [one line]
**Business Value:** [one line]

---

### [02: Scenario Name](02-slug/02-slug.md)
[Same format...]

---

## Page Coverage Matrix

| Page | Scenario | Purpose in Flow |
|------|----------|----------------|
| [Page 1] | 01 | [What user does here] |
| [Page 2] | 01 | [What user does here] |
| [Page 3] | 02 | [What user does here] |
| ... | ... | ... |

**Coverage:** [X/Y] pages assigned to scenarios

---

## Next Phase

These scenario outlines feed into **Phase 4: UX Design** where each page gets:
- Detailed page specifications
- Wireframe sketches
- Component definitions
- Interaction details

---

_Generated with Whiteport Design Studio framework_
```

---

## 3. Verify Links

- [ ] Each scenario link points to correct folder/file
- [ ] All scenarios from approved plan are listed
- [ ] Page coverage matrix is complete
- [ ] No pages missing from matrix

---

## Output

<output>Scenario overview created at {output_folder}/C-UX-Scenarios/00-ux-scenarios.md</output>

---

## Next Step

<action>Load and execute: step-07-quality-review.md</action>

Do NOT skip ahead.
