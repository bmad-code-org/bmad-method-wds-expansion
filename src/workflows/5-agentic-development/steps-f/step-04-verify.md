# Step 04: Verify

**Goal:** Confirm the fix works and has not introduced regressions.

---

## Process

### 1. Re-Run Reproduction Steps

- Follow the exact reproduction steps from Step 01
- Confirm the bug is fully resolved (not partially or intermittently)
- Test on the same environment used for reproduction

### 2. Run Full Regression Tests

- Run the project's test suite (unit tests, integration tests)
- If no automated test suite exists, manually test the core user flows
- Pay extra attention to features that share code with the fixed area

### 3. Check Edge Cases

- Test boundary conditions around the fix:
  - Empty/null/undefined inputs
  - Maximum/minimum values
  - Rapid repeated actions
  - Network errors or slow responses (if applicable)
- Test the exact scenario that was broken, but with slight variations

### 4. Verify No Side Effects

- Check features that are adjacent to or depend on the fixed code
- If the fix changed shared state, verify all consumers of that state
- If the fix changed a utility function, verify all callers
- Compare behavior with baseline (if captured)

### 5. Cross-Platform Check

- If the bug was platform-specific, verify the fix works on that platform
- Also verify the fix does not break other platforms
- Test on relevant viewport sizes if the bug was visual

---

## Checklist

- [ ] Reproduction steps pass — bug is fixed
- [ ] Test suite passes (all tests green)
- [ ] Edge cases tested around the fix
- [ ] No side effects on related features
- [ ] Cross-platform verification done (if applicable)
- [ ] Dialog file updated with verification results

---

## Next Step

Continue to step-05-document.md
