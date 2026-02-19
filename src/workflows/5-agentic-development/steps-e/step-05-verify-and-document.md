# Step 05: Verify and Document

**Goal:** Comprehensive verification of all new and existing functionality, then document and PR.

---

## Process

### 1. Test All New Functionality

- Walk through every new feature end-to-end
- Verify against the feature spec — does it do what was requested?
- Test happy paths, error paths, and edge cases
- Use Puppeteer for measurable UI criteria (text, colors, layout, interactions)

### 2. Run Regression Suite

- Run the full test suite (unit, integration, end-to-end)
- If no automated suite exists, manually test all core user flows
- Pay special attention to areas identified as "modified" or "integration points" in Step 01
- Any failure here must be fixed before proceeding

### 3. Verify Backward Compatibility

- Test every feature listed as "untouched" in the boundary map
- Confirm that existing users see no change in behavior (unless intended)
- If feature flags were used, test with flag OFF — behavior must match pre-change baseline
- Test with flag ON — new behavior works correctly alongside existing features

### 4. Performance Check

- Does the new feature load within acceptable time?
- Did the changes increase bundle size significantly?
- Are there new network requests that could slow down existing pages?
- Check for obvious performance regressions (slow renders, unnecessary re-renders)

### 5. Document Changes

- Update the dialog file with final status
- Document what was added, what was changed, what was left untouched
- Note any deviations from the original plan and why

### 6. Create PR

- Write a PR title that summarizes the evolution: `feat: <what was added>`
- PR body should include:
  - **What:** New functionality added
  - **Why:** Business reason or user need
  - **How:** Implementation approach (incremental steps, feature flags)
  - **Testing:** How it was verified, including backward compatibility
  - **Risks:** Any known risks or areas to watch
- Link to the feature spec or dialog file

---

## Checklist

- [ ] All new functionality tested and working
- [ ] Regression suite passes
- [ ] Backward compatibility verified
- [ ] Performance acceptable
- [ ] Changes documented in dialog file
- [ ] PR created with clear description
- [ ] Feature flags documented (if used)
- [ ] Dialog file finalized

---

## Next Step

Return to activity menu
