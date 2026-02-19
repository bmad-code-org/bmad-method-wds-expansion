# Step 02: Create Design Delivery

**Goal:** Package complete testable flow into Design Delivery YAML file

---

## Purpose

Create a Design Delivery file that serves as the contract between design and development.

This file documents:
- What's being delivered
- Why it matters (user value)
- What's included (scenarios, components)
- How to implement (technical requirements)
- How to validate (acceptance criteria)

---

## Before You Start

**Ensure you have:**

- Completed step 01 (flow is complete)
- All scenario specifications ready
- All component definitions ready
- Clear understanding of user value

---

## Instructions

Work through each section in sequence to build the Design Delivery file.

### 1. Initialize Delivery File

- Choose delivery ID using `DD-XXX` format (e.g., DD-001, DD-002)
- Create file at `deliveries/DD-XXX-name.yaml`
- Fill out basic metadata:
  - `id`: DD-XXX
  - `name`: Descriptive flow name
  - `status`: draft
  - `created`: Current date
  - `designer`: User name from config

### 2. Define User Value

- **Problem**: What user problem does this flow solve?
- **Solution**: How does this design solve it?
- **Success criteria**: How do we know it worked? (measurable outcomes)

### 3. List Design Artifacts

- List all scenarios included (reference `C-UX-Scenarios/` files)
- List user flows covered
- List design system components used (reference `D-Design-System/` if applicable)

### 4. Define Technical Requirements

- Specify platform and tech stack constraints
- List integrations needed (APIs, third-party services)
- Define data models (what data is created, read, updated, deleted)
- Set performance requirements (load times, responsiveness)

### 5. Define Acceptance Criteria

- List functional requirements (what must work)
- List non-functional requirements (how it must perform)
- Define edge cases to handle (empty states, errors, boundaries)

### 6. Add Testing Guidance

- Define user testing approach (what to observe, who to test with)
- Define QA testing scope (browsers, devices, screen sizes)
- Define design validation checks (does implementation match spec?)

### 7. Estimate Complexity

- Estimate size and effort (T-shirt sizing or hours)
- Identify dependencies (other deliveries, external services)
- Document assumptions (what we're taking for granted)
- Assess risk level (low / medium / high) with rationale

---

## Validation

Before proceeding, verify:

- [ ] Delivery ID is unique and follows format
- [ ] All required fields are filled
- [ ] All scenarios are referenced
- [ ] All components are listed
- [ ] Technical requirements are clear
- [ ] Acceptance criteria are testable
- [ ] Complexity estimate is realistic

---

## Next Step

After Design Delivery file is complete:

<output>Design Delivery file created: `deliveries/DD-XXX-name.yaml`</output>

<action>Load and execute: step-03-create-test-scenario.md</action>

Do NOT skip ahead.
