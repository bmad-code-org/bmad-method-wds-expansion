# Step 05: Finalize

**Goal:** Clean up, run the full test suite, document deviations, and prepare the work for review.

---

## Process

### 1. Clean Up Code

Go through all files you created or modified:

- Remove `console.log`, `debugger`, and other debug statements
- Remove commented-out code (if it was kept for reference, it belongs in a comment on the PR, not in the code)
- Remove unused imports and variables
- Verify file naming follows project conventions
- Check for any TODO comments you left — resolve them or convert to tracked issues

### 2. Run the Full Test Suite

Run the complete test suite, not just the tests for your changes:

```
npm test   # or the project's equivalent
```

- **All pass:** Proceed.
- **New failures:** Determine if they are regressions from your changes or pre-existing. Fix regressions. Pre-existing failures should match the baseline from Step 02.
- **Flaky tests:** Note them but do not ignore them. If your changes made a test flaky, fix it.

If the project has linting or type checking, run those too:

```
npm run lint
npm run typecheck   # if applicable
```

Fix any issues your code introduced.

### 3. Document Deviations from Spec

If you deviated from the spec during implementation (discovered in Step 03 or Step 04), document each deviation:

```markdown
## Spec Deviations

### [Component/Feature Name]
- **Spec said:** [what the spec required]
- **Implementation does:** [what you built instead]
- **Reason:** [why the deviation was necessary]
```

Record this in the dialog file. These deviations become discussion points during review.

### 4. Update Affected Documentation

Check if your changes require documentation updates:

- Component API documentation (new props, changed behavior)
- Route documentation (new pages, changed URLs)
- Environment setup docs (new dependencies, new env vars)
- Storybook stories (if the project uses Storybook)

Update only what your changes affect. Do not create new documentation that was not asked for.

### 5. Prepare PR Description

Write a pull request description that helps the reviewer:

- **Summary:** What was built and why (reference the spec)
- **Changes:** Key files and what changed in each
- **Testing:** How to test the changes (steps to reproduce each feature)
- **Deviations:** Any departures from the spec, with rationale
- **Screenshots:** Before/after if visual changes were made
- **Acceptance criteria:** Copy the checklist from Step 01 with all items checked

### 6. Suggest Acceptance Testing

Based on what was built, recommend next steps:

- If the project uses formal acceptance testing, suggest triggering the [T] Acceptance Testing workflow
- If a designer needs to review visual fidelity, flag that
- If stakeholder demo is needed, note what to demonstrate
- If the feature has user-facing copy, suggest copy review

---

## Checklist

- [ ] Debug statements removed
- [ ] Unused code and imports removed
- [ ] TODOs resolved or converted to tracked issues
- [ ] Full test suite passes (or pre-existing failures match baseline)
- [ ] Linting and type checking pass
- [ ] Spec deviations documented with rationale
- [ ] Affected documentation updated
- [ ] PR description written with summary, changes, testing steps, and deviations
- [ ] Next steps recommended (acceptance testing, design review, etc.)

---

## Next Step

Return to **activity menu**
