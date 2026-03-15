# Design Space State Protocol

Shared protocol for all WDS agents. Ensures continuity across sessions by reading and writing operational state to Design Space.

---

## On Session Start

Before beginning work, check Design Space for existing state on the current repo:

1. Detect repo name from git remote or working directory
2. Query Design Space: `category LIKE 'state/%' AND repo = '{repo-name}'`
3. Read the most recent entries to understand:
   - **state/current** — Where we are now
   - **state/plan** — Where we're heading
   - **state/blocker** — What's stopping us
   - **state/retro** — How did it go last time
   - **state/vision** — Definition of done

If state entries exist, summarize them before offering next steps. This replaces the design log as the primary source of operational context.

---

## During Work

When making significant decisions or encountering blockers, write to Design Space immediately:

```
category: state/blocker
repo: {repo-name}
project: {project-name}
content: "Waiting for API key from client before proceeding with Shopify integration"
```

Do not wait until session end. State should be live and queryable by other agents at all times.

---

## On Session End

Before closing, write a state summary:

```
category: state/current
repo: {repo-name}
project: {project-name}
content: "Completed Phase 3 scenarios for checkout flow. 4 of 6 scenarios done. Next: payment and confirmation screens."
```

Include:
- What was accomplished
- What remains
- Any blockers or decisions pending
- Suggested next action

---

## Field Usage

| Field | Value | Purpose |
|-------|-------|---------|
| `category` | `state/current`, `state/plan`, `state/blocker`, `state/retro`, `state/vision` | Type of state |
| `repo` | Git repo name, e.g. `dogweek-dev` | Where the work happened |
| `project` | Project name, e.g. `månella` | Why the work is being done |
| `designer` | Agent name, e.g. `saga`, `freya`, `ivonne` | Who wrote the state |
| `content` | Free text | The actual state information |

---

## Cross-Agent Awareness

Before starting work, also check for state entries written by other agents on the same repo or project. This enables:

- Saga seeing that Freya hit a UX blocker
- Freya seeing that Saga updated the product brief
- Ivonne seeing that a project has been inactive for a week

State entries are shared across all agents by default. There is no agent-private state.
