# Step 01: Reproduce

**Goal:** Confirm the bug exists and document exact reproduction steps.

---

## Process

### 1. Gather Bug Report Details

- Read the bug report or user description
- Extract: what happened, what was expected, when it started
- Note the reporter's environment (browser, device, OS, screen size)
- Identify any relevant user actions leading up to the bug

### 2. Set Up Reproduction Environment

- Match the reporter's environment as closely as possible
- Use the same browser, viewport, and device settings
- Ensure you are on the same version/branch of the code
- Load any required test data or user state

### 3. Reproduce the Bug

- Follow the reported steps exactly, in order
- Document each action and its result
- Capture screenshots or logs at each step
- Record the exact error messages, console output, or visual artifacts

### 4. Confirm Reproducibility

- Reproduce at least twice to confirm consistency
- Note if the bug is intermittent (and under what conditions)
- Test slight variations to understand the trigger boundaries

### 5. Handle Non-Reproducible Bugs

If the bug cannot be reproduced:
- Request more details from the reporter (exact steps, screenshots, browser version)
- Check if the bug is environment-specific (browser, OS, network)
- Check if recent changes resolved it inadvertently
- Document what was tried and what remains unknown
- Do NOT proceed to investigation without reproduction or a clear theory

---

## Checklist

- [ ] Bug report details gathered and understood
- [ ] Reproduction environment matches reporter's setup
- [ ] Bug reproduced at least twice
- [ ] Reproduction steps documented precisely
- [ ] Screenshots/logs captured
- [ ] Dialog file updated with reproduction details

---

## Next Step

Continue to step-02-investigate.md
