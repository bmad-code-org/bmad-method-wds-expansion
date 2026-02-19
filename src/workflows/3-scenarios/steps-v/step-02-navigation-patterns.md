# Validation Step 02: Navigation Patterns

**Goal:** Verify that all scenario shortest paths follow WDS navigation conventions.

---

## Checks

### 1. Page Naming Consistency

For each scenario's shortest path:
- [ ] Page names are consistent across scenarios (same page = same name everywhere)
- [ ] Page names are descriptive and user-facing (not technical identifiers)
- [ ] No duplicate page names with different meanings

### 2. Navigation Flow Rules

For each scenario:
- [ ] Path is truly linear — zero "if" statements, zero branches
- [ ] First step is a landing/entry page (not an internal page)
- [ ] Last step ends with a success state (marked with ✓)
- [ ] Each step transitions naturally to the next (no impossible jumps)
- [ ] No dead ends — every page has a clear next action

### 3. Cross-Scenario Page Registry

Build a page registry from all scenarios:

```
## Page Registry

| Page Name | Used In Scenarios | Role |
|-----------|-------------------|------|
| [Name] | 01, 03 | Landing |
| [Name] | 01, 02, 03 | Service Detail |

**Total unique pages:** [N]
**Shared pages:** [N] (appear in 2+ scenarios)
```

### 4. Navigation Conflicts

Check for conflicts:
- [ ] No scenario routes FROM the same page TO different pages without clear context
- [ ] Shared pages serve consistent purposes across scenarios
- [ ] Entry points are reachable from the described discovery method

---

## Report

```
## Navigation Pattern Report

**Scenarios checked:** [N]
**Unique pages:** [N]
**Shared pages:** [N]
**Conflicts found:** [N]

[List any issues with severity]
```

---

## Next Step

<action>Auto-proceed to: step-03-outline-completeness.md</action>
