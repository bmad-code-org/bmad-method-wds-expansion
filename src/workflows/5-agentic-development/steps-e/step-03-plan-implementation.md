# Step 03: Plan Implementation

**Goal:** Create an ordered, incremental implementation plan with verification points.

---

## Process

### 1. Order Changes by Dependency

- Start with foundational changes (data models, utilities, shared logic)
- Then build upward: API endpoints, components, pages, integrations
- Each step should build on the previous one
- No step should depend on a later step

### 2. Determine If Feature Flags Are Needed

Use feature flags when:
- The change is large enough that partial deployment is risky
- The feature needs to be toggled per environment or per user
- Rollback needs to be instant (without redeploying)

If not needed, keep it simple — branches and PRs are sufficient.

### 3. Plan Incremental Commits

Each commit should:
- Be a complete, working unit (system stays functional after each commit)
- Be small enough to review and understand
- Have a clear purpose described in its message

Example plan structure:
```
Commit 1: Add new data model (no UI, no routes)
Commit 2: Add API endpoint for new feature (behind feature flag)
Commit 3: Add new component (rendered only in new context)
Commit 4: Integrate component into existing page
Commit 5: Enable feature, update tests
```

### 4. Define Verification Points

Between steps, define what to check:
- After commit 1: "Run migrations, verify existing queries still work"
- After commit 3: "Render component in isolation, verify it matches spec"
- After commit 4: "Full regression on existing page, verify new feature appears"

### 5. Estimate Effort

- Note which steps are straightforward vs which carry risk
- Identify steps that may need designer/stakeholder input
- Flag any steps that might require splitting into sub-steps

---

## Checklist

- [ ] Changes ordered by dependency
- [ ] Feature flag decision made and documented
- [ ] Incremental commits planned (each leaves system working)
- [ ] Verification points defined between steps
- [ ] Effort estimated, risks flagged
- [ ] Implementation plan written to dialog file

---

## Next Step

Continue to step-04-implement.md
