# Step 04: Document Findings

**Goal:** Create a structured architecture document that answers the original questions, includes diagrams, and provides actionable recommendations.

---

## Process

### 1. Create the Architecture Document

Create a document in the output folder that answers the questions defined in Step 01. Use this structure:

```markdown
# Architecture Analysis: [Project Name]

**Date:** [Date]
**Scope:** [What was analyzed]
**Questions:** [Original questions from Step 01]

## Summary

[2-3 sentence overview of key findings]

## Tech Stack

[Language, framework, database, infrastructure — from Step 02]

## Architecture Overview

[High-level description of how the system is structured]

### Architecture Diagram

[Mermaid diagram — see below]

## Component Map

[Module inventory with responsibilities — from Step 03]

## Data Flow

[End-to-end flow traces — from Step 03]

## Dependencies

[Key dependency relationships, high fan-in/fan-out modules]

## Patterns and Conventions

[Architectural and code patterns observed]

## Risks and Tech Debt

[Issues found during analysis]

## Recommendations

[Actionable next steps]
```

### 2. Include Diagrams

Use Mermaid syntax for diagrams that render in Markdown viewers.

**Architecture diagram example:**

```mermaid
graph TD
    Client[Browser] --> API[API Server]
    API --> Auth[Auth Service]
    API --> Users[User Service]
    API --> Payments[Payment Service]
    Users --> DB[(PostgreSQL)]
    Payments --> Stripe[Stripe API]
    Auth --> Redis[(Redis)]
```

**Dependency diagram example:**

```mermaid
graph LR
    A[Module A] --> C[Core]
    B[Module B] --> C
    B --> D[Module D]
    D --> C
```

**Data flow example:**

```mermaid
sequenceDiagram
    User->>Frontend: Click "Submit"
    Frontend->>API: POST /orders
    API->>Validation: Validate input
    API->>OrderService: Create order
    OrderService->>Database: INSERT order
    OrderService->>PaymentService: Charge card
    PaymentService->>Stripe: Create charge
    Stripe-->>PaymentService: Charge confirmed
    PaymentService-->>API: Payment success
    API-->>Frontend: 201 Created
    Frontend-->>User: Show confirmation
```

### 3. Document Risks and Tech Debt

For each risk or debt item found during analysis:

| Risk | Severity | Location | Impact |
|------|----------|----------|--------|
| No input validation on `/api/admin/` routes | High | `src/routes/admin.ts` | Security vulnerability |
| Circular dependency between User and Order modules | Medium | `src/services/` | Fragile, hard to test |
| No error handling in payment flow | High | `src/payments/stripe.ts` | Silent failures |
| Outdated dependencies (2 major versions behind) | Medium | `package.json` | Security + compatibility |

### 4. Write Recommendations

Each recommendation should be:

- **Specific** — Name the module, file, or pattern
- **Actionable** — Describe what to do, not just what is wrong
- **Prioritized** — Order by impact and effort

Example:

```markdown
## Recommendations

1. **Add input validation to admin routes** (High priority, low effort)
   - Add Zod schemas to all `/api/admin/` endpoints
   - Estimated: 2-3 hours

2. **Break circular dependency between User and Order** (Medium priority, medium effort)
   - Extract shared types to a common module
   - Use dependency injection for cross-service calls
   - Estimated: 4-6 hours

3. **Add error handling to payment flow** (High priority, medium effort)
   - Wrap Stripe calls in try-catch with structured error responses
   - Add retry logic for transient failures
   - Estimated: 3-4 hours
```

### 5. Save Output

Save the document to the project's output location. If no output location is defined, save to:

- `docs/architecture/` in the analyzed project, or
- The dialog output folder if using the agent dialog system

---

## Checklist

- [ ] Document answers the original questions from Step 01
- [ ] Summary is clear and concise (2-3 sentences)
- [ ] At least one Mermaid diagram included
- [ ] Risks and tech debt listed with severity
- [ ] Recommendations are specific, actionable, and prioritized
- [ ] Document saved to output folder

---

## Next Step

Return to activity menu
