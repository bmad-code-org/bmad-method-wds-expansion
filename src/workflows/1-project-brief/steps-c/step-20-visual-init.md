# Step 1: Initialize Visual Direction

## Purpose

Welcome user and set context for capturing visual direction.

## Context for Agent

You are helping define the visual identity and design direction. This is creative work — be open to exploring possibilities while guiding toward actionable decisions.

## Instructions

1. **Create output structure**
   - Create `visual-direction.md` in the output folder using the template
   - Create `visual-references/` folder for collected assets
   - Initialize frontmatter with `stepsCompleted: []`

2. **Welcome and contextualize**
   - "Let's establish the visual direction for [project name]. This will guide all design decisions — from colors to layout to imagery."
   - Reference positioning from Product Brief if available
   - Reference tone from Content & Language if available

3. **Explain the approach**
   - "We'll explore this through three inputs:"
     1. Existing brand assets (if any)
     2. Reference sites and inspiration
     3. Design style preferences
   - "Feel free to share images, URLs, or just describe what you're imagining."

4. **Check for existing assets**
   - Ask: "Does the business have any existing visual identity?"
     - Logo
     - Colors in use
     - Signage or printed materials
     - Previous website
   - If yes: "Let's start by documenting what exists."
   - If no: "Great, we have a blank canvas to work with."


## Agent Dialog Update

After completing this step, update the agent dialog:

```markdown
### [Step Name]
**Q:** [Key questions asked]
**A:** [User responses - summarized]
**Documented in:** visual-direction.md ([section name])
**Key insights:** [Important decisions or revelations]
**Status:** Complete
**Timestamp:** [HH:MM]
```

## Next Step

After completing initialization, proceed to step-21-existing-brand.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md']
has_existing_brand: '[yes/no]'
```
