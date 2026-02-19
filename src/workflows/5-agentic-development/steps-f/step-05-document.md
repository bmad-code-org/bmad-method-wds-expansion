# Step 05: Document

**Goal:** Document the bug, the fix, and create a clean PR.

---

## Process

### 1. Document What Caused the Bug

- Write a clear root cause summary in the dialog file
- Explain why the bug existed (design oversight, edge case, regression from another change)
- Include the relevant code context — what was wrong and why

### 2. Document the Fix Approach

- Explain what was changed and why this approach was chosen
- If alternative approaches were considered, note why they were rejected
- Reference the specific files and lines changed

### 3. Update Tests

- Ensure the regression test from Step 03 is complete and well-named
- Add any additional test cases discovered during verification
- Verify all tests pass with the final fix

### 4. Create PR with Clear Description

- Write a PR title that summarizes the fix: `fix: <what was fixed>`
- PR body should include:
  - **Bug:** What the user experienced
  - **Root cause:** Why it happened
  - **Fix:** What was changed
  - **Testing:** How it was verified
- Link to the bug report or issue if one exists

### 5. Flag Similar Risks

- If the root cause suggests similar bugs may exist elsewhere, note this
- Examples: "This pattern of unchecked null access also exists in X and Y"
- Create follow-up issues or add notes to the dialog for future investigation

---

## Checklist

- [ ] Root cause documented
- [ ] Fix approach documented
- [ ] Tests updated and passing
- [ ] PR created with clear description
- [ ] Similar risks flagged (if any)
- [ ] Dialog file finalized with complete bugfix record

---

## Next Step

Return to activity menu
