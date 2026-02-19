# Step 02: Scan Codebase

**Goal:** Build a mental model of the codebase through systematic exploration of structure, tech stack, and entry points.

---

## Process

### 1. Read Project Structure

Start with a directory listing of the root and first two levels:

- Note the top-level folders and what they suggest (e.g., `src/`, `lib/`, `tests/`, `docs/`)
- Identify organizational patterns: by feature, by layer, by module, flat
- Note any unusual or project-specific folders

Record observations:

```
Root structure:
- src/ — Application source code
- tests/ — Test suites
- scripts/ — Build and utility scripts
- docs/ — Documentation
- ...
```

### 2. Identify Tech Stack and Frameworks

Read key configuration files:

| File | Reveals |
|------|---------|
| `package.json` / `requirements.txt` / `Cargo.toml` | Dependencies, scripts, project metadata |
| `tsconfig.json` / `pyproject.toml` | Language configuration |
| `.env.example` / `.env.template` | Environment variables needed |
| `docker-compose.yml` / `Dockerfile` | Container setup, services |
| `Makefile` / `justfile` | Build commands |

Document the stack:

```
Tech stack:
- Language: TypeScript 5.x
- Framework: Next.js 14
- Database: PostgreSQL via Prisma
- Testing: Vitest + Playwright
- Deployment: Docker → AWS ECS
```

### 3. Map Entry Points

Find where execution starts:

- **Web app:** Main page/route, layout files, app entry
- **API:** Server entry, route definitions, middleware chain
- **CLI:** Main command file, argument parsing
- **Library:** Exported modules, public API surface

### 4. Read Configuration Files

Scan for configuration that shapes behavior:

- Environment configuration (dev/staging/prod differences)
- Feature flags or toggles
- Routing configuration
- Database connection setup
- Third-party service configuration (auth, payments, email)

### 5. Identify Build and Deploy Pipeline

Look for:

- CI/CD configuration (`.github/workflows/`, `.gitlab-ci.yml`, `Jenkinsfile`)
- Build scripts and what they produce
- Deployment targets and process
- Environment-specific builds

### 6. Note Patterns Observed

As you scan, note initial observations about:

- Code organization style (monolith, monorepo, microservices)
- Naming conventions (files, folders, variables)
- Test organization (co-located, separate folder, both)
- Documentation level (thorough, sparse, outdated)
- Apparent code quality signals (linting config, formatting config, type strictness)

---

## Checklist

- [ ] Directory structure mapped (top 2 levels)
- [ ] Tech stack and versions identified
- [ ] Entry points located
- [ ] Configuration files read
- [ ] Build/deploy pipeline identified
- [ ] Initial patterns and conventions noted

---

## Next Step

Continue to step-03-map-architecture.md
