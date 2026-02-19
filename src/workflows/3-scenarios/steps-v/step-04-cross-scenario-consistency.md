# Validation Step 04: Cross-Scenario Consistency

**Goal:** Verify scenarios are consistent with each other — no contradictions, proper page sharing, balanced coverage.

---

## Checks

### 1. Shared Page Consistency

For pages that appear in multiple scenarios:
- [ ] Same page name = same page purpose everywhere
- [ ] Page descriptions are compatible (not contradictory)
- [ ] If a page serves different personas, it should handle both needs

### 2. Persona Balance

- [ ] Priority 1 personas have the most scenarios
- [ ] No persona is over-represented relative to their priority
- [ ] Each primary persona has at least one dedicated scenario

### 3. Business Goal Coverage

- [ ] Each business goal is addressed by at least one scenario
- [ ] High-priority goals have more scenario coverage
- [ ] No business goal is orphaned (referenced but no scenario)

### 4. Scenario Overlap

Check for:
- [ ] No two scenarios are essentially duplicates (same path, different name)
- [ ] Overlapping scenarios have distinct user intents
- [ ] Shared pages are intentional, not accidental

### 5. Scenario Index (00-ux-scenarios.md)

- [ ] Index lists all scenarios
- [ ] Priority assignments are consistent with Trigger Map priorities
- [ ] Coverage matrix is accurate
- [ ] Page count matches actual pages in scenarios

---

## Report

```
## Cross-Scenario Consistency Report

**Scenarios analyzed:** [N]
**Shared pages:** [N]
**Contradictions found:** [N]
**Duplicate concerns:** [N]

**Persona coverage:**
| Persona | Priority | Scenarios | Status |
|---------|----------|-----------|--------|
| [Name] | P1 | 01, 03 | ✅ |

**Business goal coverage:**
| Goal | Scenarios | Status |
|------|-----------|--------|
| [Goal] | 01, 02 | ✅ |
```

---

## Next Step

<action>Auto-proceed to: step-05-seo-keyword-alignment.md</action>
