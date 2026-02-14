---
name: Inspiration Analysis Workflow
description: Analyze reference sites to document visual/UX preferences for Dream Up
---

# Inspiration Analysis Workflow

**Goal:** Analyze reference sites with the client to document concrete visual/UX preferences, creating a reference document that guides all future Dream Up generation and design work.

**Your Role:** Facilitate a natural exploration of reference sites, asking the client about specific elements they like or dislike, and synthesizing findings into actionable design principles.

**Load agent guide:** `src/data/agent-guides/saga/inspiration-analysis.md` for full strategic context on WHY this matters and WHAT to surface.

---

## PREREQUISITES

This workflow runs:
- **After** Visual Direction (uses established visual context)
- **Optionally after** Content & Language (uses content structure principles if available)
- **As final step** of Product Brief phase

---

## PROCESS

This is a **conversational workshop**, not a step-file workflow. The agent guide provides strategic context. The process is:

### 1. Collect Reference URLs

Ask client for 2-4 sites they find inspiring. Can be competitors, sites with appealing style, or sites with UX patterns they like.

If client has no references, offer to find examples in their industry.

### 2. Analyze Each Site Together

For each site:
- Load/screenshot the site using browser tools or WebFetch
- Ask open-ended first: "What drew you to this site?"
- Probe specific elements visible on the site
- Capture reactions with the WHY (not just like/dislike)
- Extract principles as patterns emerge

### 3. Synthesize Design Principles

After all sites:
- Organize findings by category (layout, content, visual, UX)
- Identify patterns across sites
- Confirm synthesis with client

### 4. Document

Create `inspiration-analysis.md` in the Product Brief output folder using the template at `src/templates/inspiration-analysis.template.md`.

---

## AGENT DIALOG INTEGRATION

Follow the same agent dialog pattern as other PB workflows:
- Create/update dialog entry for this workshop
- Document key questions, answers, and insights
- Note which elements were liked/disliked and why

---

## OUTPUT

This workflow produces:
- `inspiration-analysis.md` — Reference site analysis with design principles

This document feeds into:
- **Phase 4: Scenario Outlining** — Layout patterns for user flows
- **Phase 5: Page Design** — Visual direction from concrete examples
- **Dream Up self-review** — Documented preferences for quality checks
- **Visual Design** — Concrete style references
