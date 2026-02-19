# Step 01: Define Question

**Goal:** Articulate exactly what you need to understand about the codebase before reading a single file.

---

## Process

### 1. Articulate the Question

Write down what you need to understand. Common analysis questions:

| Category | Example Questions |
|----------|-------------------|
| **Architecture** | How is this application structured? What patterns does it use? |
| **Dependencies** | What does this module depend on? What would break if I change it? |
| **Patterns** | What conventions does the team follow? Where are they inconsistent? |
| **Performance** | Where are the bottlenecks? What queries are expensive? |
| **Data flow** | How does data move from user input to database and back? |
| **Integration** | What external services does this connect to? How? |
| **Security** | Where is authentication handled? Are there exposed endpoints? |

Write the question in plain language. If you have multiple questions, prioritize them.

### 2. Define Scope

Determine what is in and out of scope:

- **Entire codebase** — Full architecture review (use for onboarding or documentation)
- **Specific module** — One feature area, service, or package
- **Cross-cutting concern** — Authentication, error handling, logging across the codebase
- **Integration boundary** — How two systems communicate

Be explicit about what you will NOT analyze. Unbounded scope leads to analysis paralysis.

### 3. Define Expected Output

Decide what the analysis should produce:

- **Architecture map** — High-level component diagram with relationships
- **Dependency graph** — Module dependencies, import chains
- **Pattern catalog** — Design patterns used, where, and how consistently
- **API map** — Endpoints, request/response shapes, authentication
- **Data model** — Entity relationships, storage patterns
- **Risk assessment** — Tech debt, security concerns, fragile areas

### 4. Set Time Box

Decide how long the analysis should take. Recommended:

| Scope | Time Box |
|-------|----------|
| Single module | 15-30 min |
| Feature area | 30-60 min |
| Full codebase | 1-2 hours |

If the time box expires, document what you found and what remains unexplored.

---

## Checklist

- [ ] Question is written in plain language
- [ ] Scope boundaries are defined (what is in, what is out)
- [ ] Expected output format is chosen
- [ ] Time box is set

---

## Next Step

Continue to step-02-scan-codebase.md
