# Step 03: Fix

**Goal:** Implement the minimal fix targeting the root cause.

---

## Process

### 1. Create Fix Branch

- Create a branch from the current working branch
- Use a descriptive name: `fix/<short-description>` or `bugfix/<issue-id>`
- Commit the branch before making changes

### 2. Write a Test That Catches the Bug

- Before writing the fix, write a test that reproduces the bug
- The test should fail in the current state (proving the bug exists)
- This ensures the fix is verifiable and the bug cannot silently return
- If automated testing is not set up, document the manual test steps clearly

### 3. Implement the Minimal Fix

- Target the root cause identified in Step 02
- Make the smallest change that resolves the issue
- Do NOT:
  - Refactor surrounding code
  - Add unrelated improvements
  - Change formatting or style in unrelated lines
  - "Fix" other issues you noticed nearby
- If the fix requires more than a few lines, pause and verify scope

### 4. Verify the Fix Resolves the Reproduction Case

- Run the reproduction steps from Step 01
- Confirm the bug no longer occurs
- Run the test from sub-step 2 — it should now pass
- If the fix does not resolve the bug, revisit Step 02

---

## Checklist

- [ ] Fix branch created
- [ ] Test written that catches the bug (fails before fix, passes after)
- [ ] Minimal fix implemented targeting root cause
- [ ] No unrelated changes included
- [ ] Reproduction case passes with the fix
- [ ] Dialog file updated with fix details

---

## Next Step

Continue to step-04-verify.md
