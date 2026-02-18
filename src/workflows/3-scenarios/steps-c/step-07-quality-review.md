# Step 07: Quality Review

**Goal:** Self-review all scenarios against the quality rubric.

---

## Checklist

Load the full checklist: `{installed_path}/substeps/quality-checklist.md`

---

## Review Process

For **each scenario**, verify these four dimensions:

### 1. Completeness (7 components)

- [ ] Core Feature defined (aligned to business goal)
- [ ] Entry Point realistic (device + context + discovery)
- [ ] Mental State with Trigger/Hope/Worry (all three specific)
- [ ] Success Goals mutual (business + user, both measurable)
- [ ] Shortest Path linear (numbered steps, zero branches)
- [ ] Scenario Name includes persona name + ID assigned
- [ ] Trigger Map Connections explicit (persona, forces, goal)

**Score: [X]/7**

### 2. Quality Criteria (7 checks)

- [ ] Persona-specific (not generic "user")
- [ ] Mental state is visceral (not "interested" or "curious")
- [ ] Both successes are measurable (not "get more customers")
- [ ] Path has zero "if" statements
- [ ] Minimum viable steps (each step justifies existence)
- [ ] Entry point is realistic (not "user opens app")
- [ ] Business goal connection is explicit (not assumed)

**Score: [X]/7**

### 3. Mistakes Avoided (6 checks)

- [ ] No edge cases in sunshine path
- [ ] Goal-first, not feature-first naming
- [ ] Mental state present (not just actions)
- [ ] Page descriptions include purpose (not just page name)
- [ ] Uses Trigger Map persona (not invented user)
- [ ] Business value explicitly defined

**Score: [X]/6 avoided**

### 4. Best Practices (4 checks)

- [ ] Scenario named after persona
- [ ] Started with highest-value persona
- [ ] One job-to-be-done per scenario
- [ ] Driving forces explicitly linked

**Score: [X]/4**

---

## Thresholds

**Minimum (must meet to proceed):**
- Completeness: 6/7
- Quality: 5/7
- Mistakes avoided: 6/6 (all must be avoided)
- Best practices: 2/4

**Excellent:**
- All scores maxed

---

## If Failing

1. Identify which scenario(s) fail which checks
2. Go back to the scenario file and fix the specific gaps
3. Re-verify after fixing

**If still failing after corrections:** Note remaining gaps and present to user for guidance.

---

## Present Review Summary

```
## Quality Review Summary

**Scenarios Reviewed:** [N]

| Scenario | Complete | Quality | Mistakes | Practices | Status |
|----------|----------|---------|----------|-----------|--------|
| 01 | 7/7 | 7/7 | 6/6 | 4/4 | ✅ Excellent |
| 02 | 7/7 | 6/7 | 6/6 | 3/4 | ✅ Good |

**Overall:** [Excellent / Good / Needs Work]
**Gaps:** [list any, or "None"]
```

---

## Output

All scenarios verified against quality rubric.

---

## Next Step

<action>Load and execute: step-08-update-design-log.md</action>

Do NOT skip ahead.
