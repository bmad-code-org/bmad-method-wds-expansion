# Step 03: Create Test Scenario

**Goal:** Define how to validate Design Delivery after implementation

---

## Purpose

Create a Test Scenario file that guides validation testing.

This file documents:
- What to test (test objectives)
- Happy path flows
- Error states to verify
- Edge cases to handle
- Design system validation
- Accessibility testing
- Sign-off criteria

---

## Before You Start

**Ensure you have:**

- Completed step 02 (Design Delivery created)
- Design Delivery file: `deliveries/DD-XXX-name.yaml`
- Clear understanding of what needs testing

---

## Instructions

Work through each section in sequence to build the Test Scenario file.

### 1. Initialize Test Scenario File

- Choose test scenario ID using `TS-XXX` format (matching the DD-XXX number)
- Create file at `test-scenarios/TS-XXX-name.yaml`
- Fill out basic metadata:
  - `id`: TS-XXX
  - `delivery_id`: DD-XXX (link to delivery)
  - `name`: Descriptive test name
  - `status`: draft
  - `created`: Current date
- Define test objectives: what are we validating and why?

### 2. Define Happy Path Tests

For each main user flow in the delivery:
- **Test name**: Descriptive action being tested
- **Steps**: Numbered sequence of user actions
- **Expected result**: What should happen at each step
- **Design reference**: Link to scenario specification

### 3. Define Error State Tests

For each error scenario:
- **Trigger**: What causes the error (invalid input, network failure, etc.)
- **Expected error message**: Exact text or pattern
- **Recovery path**: How the user gets back on track
- **Graceful degradation**: What still works when this fails

### 4. Define Edge Case Tests

For boundary conditions and unusual scenarios:
- **Empty states**: No data, first-time user, cleared history
- **Boundary values**: Max lengths, zero values, special characters
- **Concurrent actions**: Multiple tabs, rapid clicks, interrupted flows
- **Expected behavior**: What should happen in each case

### 5. Define Design System Validation

- List components to validate against design system spec
- Define token verification:
  - Colors match design tokens
  - Typography follows type scale
  - Spacing follows spacing system
- Check component usage matches approved patterns

### 6. Define Accessibility Tests

- **Screen reader**: All content readable, logical order, ARIA labels present
- **Color contrast**: Meets WCAG AA (4.5:1 text, 3:1 large text)
- **Touch targets**: Minimum 44x44px interactive areas
- **Keyboard navigation**: All interactive elements reachable via Tab, operable via Enter/Space

### 7. Define Sign-Off Criteria

- **Pass threshold**: What percentage of tests must pass
- **Must-fix**: Issues that block sign-off (broken flows, accessibility failures)
- **Nice-to-fix**: Issues to track but not blocking (minor visual differences)
- **Approval process**: Who signs off and how

---

## Validation

Before proceeding, verify:

- [ ] Test scenario ID matches delivery ID
- [ ] All test types are defined
- [ ] Each test has clear expected results
- [ ] Design system validation is complete
- [ ] Accessibility tests are included
- [ ] Sign-off criteria are clear

---

## Next Step

After Test Scenario file is complete:

<output>Test Scenario file created: `test-scenarios/TS-XXX-name.yaml`</output>

<action>Load and execute: step-04-handoff-dialog.md</action>

Do NOT skip ahead.
