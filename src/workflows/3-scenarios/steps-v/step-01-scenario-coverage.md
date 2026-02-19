# Validation Step 01: Scenario Coverage

**Goal:** Verify that all Value Trigger Chains (VTCs) from the Trigger Map are covered by at least one scenario.

---

## Checks

### 1. Load Trigger Map Data

Read `{output_folder}/B-Trigger-Map/trigger-map.md` and extract all VTCs (Business Goal → Persona → Driving Force chains).

### 2. Load All Scenario Files

Read all scenario outlines from `{output_folder}/C-UX-Scenarios/`.

### 3. Cross-Reference

For each VTC, verify:
- [ ] At least one scenario addresses this VTC
- [ ] The scenario's "Trigger Map Connections" section explicitly references the VTC components
- [ ] Priority 1 VTCs have dedicated scenarios (not just secondary coverage)

### 4. Report

```
## Coverage Report

| VTC | Persona | Driving Force | Scenario(s) | Status |
|-----|---------|---------------|-------------|--------|
| [Goal] | [Name] | [Force] | [Scenario ID] | ✅/⚠️/❌ |

**Coverage:** [X]/[Total] VTCs covered ([X]%)
**Gaps:** [list uncovered VTCs]
```

**Severity:**
- ❌ Critical: Priority 1 VTC with no scenario
- ⚠️ Warning: Priority 2-3 VTC with no scenario
- ✅ Pass: VTC covered by at least one scenario

---

## Next Step

<action>Auto-proceed to: step-02-navigation-patterns.md</action>
