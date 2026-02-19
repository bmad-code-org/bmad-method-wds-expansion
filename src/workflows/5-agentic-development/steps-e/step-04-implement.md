# Step 04: Implement

**Goal:** Implement changes incrementally, verifying at each step.

---

## Process

### 1. Create Feature Branch

- Branch from the current working branch
- Use a descriptive name: `feature/<short-description>` or `evolve/<feature-name>`
- Commit the branch before making changes

### 2. Implement Incrementally Per Plan

For each planned commit:

1. **Read the plan** — What does this step require?
2. **Implement** — Write the code for this step only
3. **Self-check** — Does this change stay within its planned scope?
4. **Test** — Run relevant tests, verify the step works
5. **Commit** — Clean commit with descriptive message

### 3. Test After Each Step

- Run the verification point defined in Step 03
- If automated tests exist, run them after each commit
- If modifying existing features, verify they still work (baseline comparison)
- Do not proceed to the next step if the current one is broken

### 4. Ensure Backward Compatibility at Each Commit

At every commit, ask:
- Does the existing functionality still work?
- Can an existing user do everything they could before?
- Are any existing API consumers affected?
- If a commit breaks backward compatibility, either fix it or add a feature flag

### 5. Use Feature Flags if Needed

When the plan calls for feature flags:
- Implement the flag check early (before building the feature behind it)
- Default to "off" — new feature is hidden until explicitly enabled
- Ensure the "off" path is identical to the pre-change behavior
- Test both flag states: on (new behavior) and off (old behavior)

---

## Checklist

- [ ] Feature branch created
- [ ] Each planned step implemented and committed separately
- [ ] Tests pass after each commit
- [ ] Backward compatibility verified at each commit
- [ ] Feature flags implemented correctly (if applicable)
- [ ] Dialog file updated with implementation progress

---

## Next Step

Continue to step-05-verify-and-document.md
