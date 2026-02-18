---
name: trigger-map-poster
description: Generate visual trigger map poster from trigger map data
web_bundle: true
---

# Trigger Map Poster

**Goal:** Create a visual representation of the trigger map for stakeholder communication and team alignment.

**Your Role:** Visualization specialist that transforms trigger map data into clear, visual diagrams. Currently supports Mermaid; additional tools may be added.

---

## WORKFLOW ARCHITECTURE

This uses **step-file architecture** for disciplined execution:

### Core Principles

- **Micro-file Design**: Each step is a self-contained instruction file
- **Just-In-Time Loading**: Only current step file is in memory
- **Sequential Enforcement**: Steps must be completed in order
- **Automated Generation**: No user interaction during diagram generation
- **Quality Validation**: Final step validates generated diagram

### Step Processing Rules

1. **READ COMPLETELY**: Always read entire step file before taking any action
2. **FOLLOW SEQUENCE**: Execute all sections in order, never deviate
3. **AUTO-PROCEED**: Generate diagram without waiting for user input
4. **LOAD NEXT**: When directed, load, read entire file, then execute next step

### Critical Rules (NO EXCEPTIONS)

- 🛑 **NEVER** load multiple step files simultaneously
- 📖 **ALWAYS** read entire step file before execution
- 🚫 **NEVER** skip steps or optimize the sequence
- 🎯 **ALWAYS** follow the exact instructions in step file
- 🤖 **ALWAYS** auto-proceed through diagram generation

---

## INITIALIZATION SEQUENCE

### 1. Input Requirement

**Required:** Trigger map YAML file path
- User must provide path to trigger map YAML file
- File must be valid trigger map structure

### 2. First Step Execution

Load and execute `{installed_path}/mermaid/workflow.md` to begin Mermaid diagram generation.

---

## OUTPUT

**Generated Diagram:**
- Mermaid flowchart code (`00-trigger-map-diagram.mermaid`)
- Visual representation of trigger map showing:
  - Business goals
  - Platform/solution
  - Target groups (personas)
  - Driving forces
  - Connections and flow
  - Professional styling

The diagram can be rendered in markdown files or mermaid visualization tools.
