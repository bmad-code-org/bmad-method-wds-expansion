# Step 03: Map Architecture

**Goal:** Build a detailed map of components, data flow, dependencies, and patterns. This is the analytical core of the workflow.

---

## Process

### 1. Map Component and Module Structure

For each major module or component area:

- What is its responsibility?
- What does it expose (public API, exports)?
- What does it encapsulate (internal details)?
- How large is it (files, lines, complexity)?

Create a component inventory:

```
Components:
- AuthModule — Handles login, registration, session management
- UserService — CRUD operations for user profiles
- PaymentGateway — Stripe integration, invoice generation
- NotificationService — Email + push notifications
- ...
```

### 2. Trace Data Flow

Pick 2-3 key user actions and trace data from start to finish:

1. **User action** (click, form submit, page load)
2. **Frontend handling** (event handler, state update, API call)
3. **API layer** (route, middleware, validation)
4. **Business logic** (service, domain logic, transformations)
5. **Data layer** (database query, cache, external API)
6. **Response path** (back through layers to UI)

Document at least one complete flow end-to-end.

### 3. Identify Layers

Determine the architectural layers and their boundaries:

| Layer | Purpose | Location |
|-------|---------|----------|
| **Presentation** | UI rendering, user interaction | `src/components/`, `src/pages/` |
| **Application** | Use cases, orchestration | `src/services/`, `src/hooks/` |
| **Domain** | Business rules, entities | `src/models/`, `src/domain/` |
| **Infrastructure** | Database, external APIs, file system | `src/db/`, `src/integrations/` |

Note: Not all codebases have clean layers. Document what you actually find, including layer violations.

### 4. Map External Integrations

List every external system the codebase talks to:

| Integration | Purpose | Protocol | Location in Code |
|-------------|---------|----------|-----------------|
| PostgreSQL | Primary data store | SQL via ORM | `src/db/` |
| Stripe | Payment processing | REST API | `src/payments/` |
| SendGrid | Email delivery | REST API | `src/notifications/` |
| Redis | Caching, sessions | Redis protocol | `src/cache/` |

### 5. Document State Management

How does the application manage state?

- **Frontend:** Global store (Redux, Zustand), context, local state, URL state
- **Backend:** Session storage, database, cache, in-memory
- **Shared:** How does state sync between client and server?

### 6. Create Dependency Graph

Map which modules depend on which:

- Identify core modules that many things depend on (high fan-in)
- Identify modules that depend on many things (high fan-out)
- Look for circular dependencies
- Note tightly coupled vs loosely coupled areas

### 7. Identify Architectural Patterns

Document patterns you observe:

- **Structural:** MVC, MVVM, Clean Architecture, Hexagonal, Monolith, Microservices
- **Data:** Repository pattern, Active Record, Data Mapper, CQRS
- **Communication:** REST, GraphQL, WebSocket, Event-driven, Message queue
- **Error handling:** Centralized, per-module, try-catch patterns, error boundaries
- **Testing:** Unit/integration/e2e split, mocking approach, test data strategy

---

## Checklist

- [ ] Component/module inventory created
- [ ] At least one data flow traced end-to-end
- [ ] Architectural layers identified
- [ ] External integrations mapped
- [ ] State management approach documented
- [ ] Key dependencies mapped (especially high fan-in/fan-out)
- [ ] Architectural patterns identified

---

## Next Step

Continue to step-04-document-findings.md
