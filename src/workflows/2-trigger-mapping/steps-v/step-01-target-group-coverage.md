# Validation Step 01: Target Group Coverage

**Goal:** Verify all target groups have complete driving forces (positive and negative).

---

## Checks

### 1. Load Trigger Map Hub

Read `{output_folder}/B-Trigger-Map/00-trigger-map.md` (or trigger-map.md) and extract all target groups.

### 2. Load Persona Documents

Read all persona files from `{output_folder}/B-Trigger-Map/`.

### 3. Verify Per Group

For each target group/persona:
- [ ] Has at least 3 positive driving forces (wants)
- [ ] Has at least 3 negative driving forces (fears)
- [ ] Each driving force has a specific Product Promise
- [ ] Each driving force has a specific Product Answer
- [ ] Priority level assigned (Primary/Secondary/Tertiary)
- [ ] Description is behavioral, not just demographic

### 4. Report

```
## Target Group Coverage Report

| Persona | Priority | + Forces | - Forces | Promises | Answers | Status |
|---------|----------|----------|----------|----------|---------|--------|
| [Name] | P1 | [N] | [N] | [N]/[N] | [N]/[N] | ✅/⚠️/❌ |

**Coverage:** [X]/[Total] personas complete
**Gaps:** [list]
```

---

## Next Step

<action>Auto-proceed to: step-02-prioritization-integrity.md</action>
