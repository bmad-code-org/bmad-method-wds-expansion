# Step 02: Investigate

**Goal:** Identify the root cause of the bug, not just the symptom.

---

## Process

### 1. Read the Relevant Code

- Open the files related to the bug's location (component, module, route)
- Read the code around the symptom — understand what it is supposed to do
- Check recent commits for changes in the affected area (`git log --oneline -20 -- <file>`)

### 2. Trace the Execution Path

- Start from the user action that triggers the bug
- Follow the code path: event handler, state update, render, API call
- Identify where the actual behavior diverges from the expected behavior
- Use console logs, breakpoints, or Puppeteer to observe intermediate state

### 3. Identify Root Cause

- Distinguish symptom from cause — the visible bug is rarely the root issue
- Common root causes to check:
  - State not reset or updated correctly
  - Race condition or timing issue
  - Missing null/undefined check
  - Wrong data type or format
  - CSS specificity or inheritance conflict
  - API response changed or error not handled
- Pin down the exact line(s) or logic that cause the failure

### 4. Check Wider Impact

- Does this code path affect other features?
- Are there similar patterns elsewhere that might have the same bug?
- Could the root cause indicate a systemic issue (e.g., missing error handling pattern)?

### 5. Document the Root Cause

- Write a clear, concise explanation in the dialog file:
  - What causes the bug (root cause)
  - Why it manifests the way it does (symptom explanation)
  - What areas are affected
  - Proposed fix approach

---

## Checklist

- [ ] Relevant code read and understood
- [ ] Execution path traced from trigger to symptom
- [ ] Root cause identified (not just symptom)
- [ ] Wider impact assessed
- [ ] Root cause documented in dialog file

---

## Next Step

Continue to step-03-fix.md
