# Step 02: Analyze Impact

**Goal:** Understand how the proposed changes affect existing code, and identify risks.

---

## Process

### 1. Read Code for All Affected Areas

- Open and read every file identified as "modified" in the boundary map
- Read files adjacent to integration points
- Understand the current behavior before planning changes

### 2. Map Dependencies

- For each modified file, identify:
  - What imports it / calls it / depends on it
  - What it imports / calls / depends on
- Build a dependency graph (mental or documented) of the affected area
- Flag shared utilities, components, or state that multiple features rely on

### 3. Identify Breaking Change Risks

- Will any existing interface signatures change?
- Will any existing data shapes change?
- Could new code paths affect timing or ordering of existing operations?
- Are there implicit assumptions in existing code that the new feature violates?

### 4. Assess Database/API Impacts

- Are database schema changes needed? (migrations, new tables, altered columns)
- Are API contract changes needed? (new endpoints, changed response shapes)
- Can changes be additive (non-breaking) or do they require migration?
- Will existing clients (other services, mobile apps) be affected?

### 5. Document What Could Go Wrong

Write a risk assessment in the dialog file:

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|------------|
| Shared component breaks for existing use | Medium | High | Test all existing consumers |
| API change breaks mobile client | Low | High | Make change additive, not breaking |
| State management conflict | Medium | Medium | Isolate new state, feature flag |

---

## Checklist

- [ ] All affected code read and understood
- [ ] Dependencies mapped
- [ ] Breaking change risks identified
- [ ] Database/API impacts assessed
- [ ] Risk assessment documented in dialog file

---

## Next Step

Continue to step-03-plan-implementation.md
