# Validation Step 03: Outline Completeness

**Goal:** Verify every scenario outline has all 7 required components with sufficient quality.

---

## Checks

For **each scenario**, validate all 7 components:

### 1. Scenario Name & ID
- [ ] Name includes persona name
- [ ] ID assigned (01, 02, etc.)
- [ ] Slug follows format: `NN-descriptive-name`

### 2. Core Feature
- [ ] Stated as user purpose (not feature name)
- [ ] Aligned to a specific business goal from Trigger Map

### 3. Entry Point
- [ ] Device specified (mobile/desktop/tablet)
- [ ] Context described (where user is, what they're doing)
- [ ] Discovery method specified (search, link, ad, bookmark, etc.)
- [ ] Realistic — not "user opens app"

### 4. Mental State
- [ ] Trigger present and specific (what just happened)
- [ ] Hope present and specific (what they want)
- [ ] Worry present and specific (what they fear)
- [ ] All three are visceral, not generic

### 5. Success Goals
- [ ] User success defined and measurable
- [ ] Business success defined and measurable
- [ ] Both are specific — not "get more customers"

### 6. Shortest Path
- [ ] Linear — zero "if" statements
- [ ] Each step has page name + purpose
- [ ] Minimum viable steps (each justifies existence)
- [ ] Final step marked with ✓

### 7. Trigger Map Connections
- [ ] Persona referenced (with priority level)
- [ ] Positive driving force(s) linked
- [ ] Negative driving force(s) linked
- [ ] Business goal referenced (with objective number)

---

## Report

```
## Outline Completeness Report

| Scenario | Name | Feature | Entry | Mental | Success | Path | TM Links | Score |
|----------|------|---------|-------|--------|---------|------|----------|-------|
| 01 | ✅ | ✅ | ✅ | ⚠️ | ✅ | ✅ | ✅ | 6.5/7 |

**All scenarios complete:** [Yes/No]
**Issues found:** [list specific gaps]
```

---

## Next Step

<action>Auto-proceed to: step-04-cross-scenario-consistency.md</action>
