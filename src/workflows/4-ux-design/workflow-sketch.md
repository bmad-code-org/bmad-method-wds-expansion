# [K] Share Sketches — Interpret User Sketches

**Goal:** Analyze user-provided sketches (photos, screenshots, wireframes) and translate them into structured page specifications.

**When to use:** When the user has sketched something on paper, in a tool, or wants to share visual references for the agent to interpret.

---

## Entry

User provides sketch (image file, photo, or description of sketch).

## Steps

Execute steps in `{installed_path}/steps-k/`:

| Step | File | Purpose |
|------|------|---------|
| 01 | step-01-sketch-analysis.md | Analyze and interpret the sketch |

**Reference data:**
- `{installed_path}/data/guides/SKETCH-TEXT-ANALYSIS-GUIDE.md` — sketch analysis methodology
- `{installed_path}/data/guides/SKETCH-TEXT-QUICK-REFERENCE.md` — quick reference
- `{installed_path}/data/object-types/` — component identification

---

## After Completion

Sketch interpretation creates a preliminary page structure. Proceed to:
- **[P] Specify** — to detail the interpreted page into a full specification
- **[S] Suggest** — to build out more pages in the scenario
