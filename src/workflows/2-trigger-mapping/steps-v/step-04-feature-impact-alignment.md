# Validation Step 04: Feature Impact Alignment

**Goal:** Verify feature impact scores reference actual priorities (if feature impact analysis was run).

---

## Prerequisites

Check if `{output_folder}/B-Trigger-Map/feature-impact-analysis.md` (or 06-Feature-Impact.md) exists. If not, note as "Feature Impact not run" and skip to next step.

---

## Checks

### 1. Feature-Persona Alignment

- [ ] All features scored against all personas
- [ ] Scoring uses consistent scale
- [ ] High-priority personas have higher weight in scoring
- [ ] Must Have features serve P1 persona

### 2. Priority Tier Consistency

- [ ] "Must Have" features align with P1 needs
- [ ] "Consider" features serve P2/P3 or secondary P1 needs
- [ ] "Defer" features are genuinely lower priority
- [ ] No P1-critical feature classified as "Defer"

### 3. Business Goal Traceability

- [ ] Each feature traces to at least one business goal
- [ ] High-impact features serve high-priority goals

---

## Report

```
## Feature Impact Alignment Report

**Feature Impact status:** [Present / Not run]
**Features scored:** [N]
**Alignment issues:** [N]

[List any misalignments between feature priority and persona/goal priority]
```

---

## Next Step

<action>Auto-proceed to: step-05-cross-document-coherence.md</action>
