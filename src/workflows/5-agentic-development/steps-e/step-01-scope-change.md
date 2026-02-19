# Step 01: Scope Change

**Goal:** Define exactly what is new, what is modified, and what must remain untouched.

---

## Process

### 1. Load Feature Spec

- Read the feature specification or change request
- Understand the desired outcome from the user's perspective
- Clarify any ambiguities before proceeding

### 2. List All New Functionality

- Enumerate every new capability being added
- For each item: what it does, where it lives, how the user interacts with it
- Note any new UI components, API endpoints, data models, or routes

### 3. List All Existing Functionality That Must Stay Unchanged

- Identify every existing feature that is in scope or adjacent
- Explicitly state: "This must continue to work exactly as it does now"
- Include both direct features and indirect dependencies (e.g., shared components)

### 4. Create Boundary Map

Categorize all affected areas:

| Category | Description | Examples |
|----------|-------------|----------|
| **New** | Does not exist yet, being added | New page, new API endpoint, new component |
| **Modified** | Exists and will be changed | Updated component to accept new props, extended API response |
| **Untouched** | Exists and must not change | Existing pages, unrelated features, shared utilities |

### 5. Identify Integration Points

- Where does new code connect to existing code?
- What interfaces, APIs, or data structures are shared?
- Are there shared components that need to support both old and new behavior?
- Document each integration point and its risk level

---

## Checklist

- [ ] Feature spec loaded and understood
- [ ] New functionality listed
- [ ] Existing functionality that must stay unchanged listed
- [ ] Boundary map created (new / modified / untouched)
- [ ] Integration points identified
- [ ] Dialog file updated with scope definition

---

## Next Step

Continue to step-02-analyze-impact.md
