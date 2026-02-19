# Start Here

**WDS in 5 minutes — what it is, how it works, and how to set up.**

---

## The Problem

Vibecoding doesn't scale.

People prompt directly to code without giving agents a chance to set things up for success. Without proper guidance, agents guess, dream, and slop unhinged — and all your credits are spent fixing what already worked a few moments ago.

---

## The WDS Solution

**The design IS the specification. The specification IS the prompt.**

WDS builds on powerful design techniques proven to work, supercharged with AI agent technology. The agents help you design the software, and the design becomes the prompts that build the product.

With a digital twin of your product in specifications, you're future-proof. Any change or improvement is made in the design first — the code updates based on the specs.

```
Trigger Map → UX-Scenarios → Specifications → Code
     ↑              ↑              ↑
  WHY they act   WHAT they do   HOW it works
```
## What You Get from WDS

You work with AI agents to design your product step by step — from understanding why users act, through sketching interfaces and defining behaviors, to complete specifications that tell development agents exactly what to build. The result is a codebase that matches your intent, changes that don't break what works, and a design system you can evolve forever.

---

## Three Agents

| Agent | Domain | What They Do |
|-------|--------|--------------|
| **Saga** | Strategy | Project Brief, Trigger Map, Platform Requirements |
| **Freya** | Design & Assets | Scenarios, Sketches, Specifications, Components, Asset Generation, Handover |
| **Idunn** | Development & Evolution | 7-activity menu: Prototyping, Development, Bugfixing, Evolution, Analysis, Reverse Engineering, Testing |

You talk to agents. They guide you through each step.

---

## Key Concepts

| Concept | What It Is |
|---------|------------|
| **Trigger Map** | Maps user psychology → features. Every decision traces to a driving force. |
| **Scenario** | A linear user journey. No branches. Shortest path to desired state. |
| **Storyboard** | How elements transform within a view. Keyframe by keyframe. |
| **Specification** | Complete documentation of every element, state, and behavior. |

---

## Installation

WDS is a module for BMad Method. Install BMad first, then add WDS.

### 1. Install BMad Method

```bash
# In your project root
npx bmad-method init
```

### 2. Add WDS Module

```bash
npx bmad-method add wds
```

This copies the WDS agents and workflows to your project.

### 3. Initialize Workflow

In your AI IDE (Cursor, Windsurf, Claude Code):

```
*workflow-init
```

The agent guides you through project setup and phase selection.

---

## Output Structure

WDS creates this in your `docs/` folder:

| Folder | Phase | Contains |
|--------|-------|----------|
| `A-Product-Brief/` | 1 — Project Brief | Vision, goals, constraints |
| `B-Trigger-Map/` | 2 — Trigger Mapping | Personas, driving forces, features |
| `C-UX-Scenarios/` | 3-4 — Scenarios & UX Design | User journeys, page specs, sketches |
| `D-Design-System/` | 7 — Design System | Components, tokens, patterns |
| `E-Assets/` | 6 — Asset Generation | Generated images, icons, wireframes |
| `E-PRD/` | — | Technical requirements (optional) |
| `F-Agent-Dialogs/` | — | Conversation logs, decisions |

---

## Tutorials

### Strategy Phase (Saga)

| # | Tutorial | Time |
|---|----------|------|
| 00 | [Project Pitch](00-project-pitch.md) | 15 min *(optional)* |
| 01 | [Project Brief](01-project-brief.md) | 10 min |
| 02 | [Trigger Mapping](02-trigger-mapping.md) | 15 min |
| 03 | [Platform Requirements](03-platform-requirements.md) | 5 min |

### Design Phase (Freya)

| # | Tutorial | Time |
|---|----------|------|
| 04 | [Outline Scenarios](04-outline-scenarios.md) | 10 min |
| 05 | [Conceptual Sketching](05-conceptual-sketching.md) | 15 min |
| 06 | [Storyboarding](06-storyboarding.md) | 10 min |
| 07 | [Conceptual Specifications](07-conceptual-specifications.md) | 20 min |
| 08 | [Functional Components](08-functional-components.md) | 10 min |
| 09 | [Visual Design & Assets](09-visual-design.md) | 15 min |
| 10 | [Design Handover](10-design-delivery.md) | 10 min |

### Build & Evolve Phase (Idunn)

| # | Tutorial | Time |
|---|----------|------|
| 11 | [Agentic Development](11-agentic-development.md) | 15 min |
| 12 | [Testing](12-testing.md) | 10 min |
| 13 | [Product Evolution](13-product-evolution.md) | 10 min |

---

## Start Your First Dialog

```
You are Saga, a WDS strategic analyst.

I'm starting a new project called [name].
Help me create a Project Brief.

Ask me questions one at a time.
```

---

## Learn More

- [WDS Course](../learn/00-course-overview.md) — Deep dive into methodology
- [Workflow Guide](../wds-workflows-guide.md) — Full documentation

---

*Created by Mårten Angner and the Whiteport team*
*Free and open-source*
