# Whiteport Design Studio (WDS) — BMAD Expansion Module

[![Version](https://img.shields.io/npm/v/bmad-wds?color=blue&label=version)](https://www.npmjs.com/package/bmad-wds)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Python Version](https://img.shields.io/badge/python-%3E%3D3.10-blue?logo=python&logoColor=white)](https://www.python.org)
[![uv](https://img.shields.io/badge/uv-package%20manager-blueviolet?logo=uv)](https://docs.astral.sh/uv/)
[![Discord](https://img.shields.io/badge/Discord-Join%20Community-7289da?logo=discord&logoColor=white)](https://discord.gg/gk8jAdXWmj)

**Strategic design methodology for creating products users love, powered by AI agents.**

This is the BMAD expansion module version of WDS. For the standalone installer, see [whiteport-design-studio](https://github.com/whiteport-collective/whiteport-design-studio).

---

## What is WDS?

WDS is a structured design methodology that uses AI agents to guide you through product design, from initial strategy to developer-ready specifications.

- **Strategic foundation** - Connect every design decision to business goals and user psychology
- **Complete specifications** - Generate developer-ready page specs with all details defined
- **AI-powered workflow** - Two specialized agents guide you through each phase
- **IDE-native** - Works inside your AI coding tool (Claude Code, Cursor, Windsurf, and 16 more)

---

## Agents

WDS uses two specialized AI agents (the Norse Pantheon):

| Agent | Role | What they do |
|-------|------|-------------|
| **Saga** (Analyst) | Business & Product Analyst | Product Brief (Phase 1), Trigger Mapping (Phase 2). Start here. |
| **Freya** (Designer) | UX/UI Designer & Developer | UX Scenarios (Phase 3), UX Design (Phase 4), Agentic Development (Phase 5), Asset Generation (Phase 6), Design System (Phase 7), Product Evolution (Phase 8) |

### Activating an agent

Tell your AI IDE:

```
Read and activate _bmad/wds/agents/saga-analyst.md
```

Saga will greet you by name and guide you through creating your Product Brief.

---

## Design Phases

| Phase | Focus | Agent | Output folder |
|-------|-------|-------|--------------|
| 0. Alignment & Signoff | Stakeholder alignment before starting | Saga | — |
| 1. Product Brief | Vision, positioning, success criteria | Saga | `A-Product-Brief/` |
| 2. Trigger Mapping | User psychology, business goals | Saga | `B-Trigger-Map/` |
| 3. UX Scenarios | Scenario outlines via 8-question dialog | Freya | `C-UX-Scenarios/` |
| 4. UX Design | Page specifications, interactions | Freya | `D-UX-Design/` |
| 5. Agentic Development | AI-assisted development & testing | Freya | `G-Product-Development/` |
| 6. Asset Generation | Visual and text assets from specs | Freya | — |
| 7. Design System | Component library, design tokens | Freya | `D-Design-System/` |
| 8. Product Evolution | Brownfield improvements | Freya | — |

Output folders are created inside your configured design artifacts directory (default: `design-artifacts/`).

---

## Supported Design Tools

WDS offers agentic design capabilities with several visual design and prototyping services:

| Tool | What it does | MCP |
|------|-------------|-----|
| **Figma** | Professional UI design, design system management | Figma MCP |
| **Pencil (Penpot)** | Open-source design tool, AI-assisted layout | Pencil MCP |
| **Stitch** | AI screen generation from text descriptions | Stitch MCP |
| **Excalidraw** | Wireframing and sketch analysis | — |
| **html.to.design** | Import HTML prototypes into Figma | Figma plugin |
| **NanoBanana** | AI image generation for brand exploration | — |

The design loop works with any combination: wireframe in Excalidraw, generate screens with Stitch or Pencil, refine in Figma, pull back via MCP.

---

## Module Structure

```
wds/
├── src/
│   ├── agents/              # Agent YAML definitions
│   ├── workflows/           # Phase workflows
│   ├── data/                # Standards, frameworks, agent guides
│   ├── gems/                # Reusable prompt components
│   ├── skills/              # Agent activation skills
│   ├── templates/           # Document templates
│   ├── module.yaml          # Module definition
│   └── module-help.csv      # Workflow registry
├── docs/
│   ├── getting-started/     # Quick onboarding guides
│   ├── learn/               # 12-module training course
│   ├── method/              # Phase deep-dives
│   ├── models/              # Strategic frameworks
│   └── tools/               # Integration guides
└── test/                    # Schema validation tests
```

---

## Installation via BMAD

This module is installed as part of the BMad Method ecosystem. The BMAD installer handles placement at `_bmad/wds/`.

For standalone installation (without BMAD), use the npm package instead:

```bash
npx whiteport-design-studio install
```

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## Community

- [Discord](https://discord.gg/gk8jAdXWmj) — Get help, share ideas, collaborate
- [YouTube](https://youtube.com/@BMadCode) — Tutorials, master class, and more
- [X / Twitter](https://x.com/BMadCode)
- [Website](https://bmadcode.com)

## Support BMad

BMad is free for everyone and always will be. Star this repo, [buy me a coffee](https://buymeacoffee.com/bmad), or email contact@bmadcode.com for corporate sponsorship.

## License

MIT - see [LICENSE](LICENSE) for details.

---

Built by [Whiteport Collective](https://github.com/whiteport-collective) | Part of the [BMad ecosystem](https://github.com/bmad-code-org)
