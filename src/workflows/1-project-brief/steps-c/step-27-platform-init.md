# Step 1: Initialize Platform Requirements

## Purpose

Welcome user and set context for capturing platform decisions.

## Context for Agent

You are documenting technical decisions that will constrain both UX design and development. These decisions should be made collaboratively, considering the user's technical knowledge and project constraints.

## Instructions

1. **Create output file**
   - Create `platform-requirements.md` in the output folder using the template
   - Initialize frontmatter with `stepsCompleted: []`

2. **Welcome and contextualize**
   - "Now let's document the technical platform decisions. These will define what's possible in UX design and what developers need to know."
   - Reference the Product Brief if available for context

3. **Assess technical knowledge**
   - Ask: "How familiar are you with the technical aspects? This helps me know how much to explain."
   - Options: [A] Very technical, [B] Some knowledge, [C] Not technical at all
   - Adjust language accordingly in subsequent steps

4. **Confirm existing decisions**
   - Ask: "Are there any technical decisions already made? (hosting provider, CMS, framework, etc.)"
   - If yes, capture these first
   - If no, proceed to exploration


## Agent Dialog Update

After completing this step, update the agent dialog:

```markdown
### [Step Name]
**Q:** [Key questions asked]
**A:** [User responses - summarized]
**Documented in:** platform-requirements.md ([section name])
**Key insights:** [Important decisions or revelations]
**Status:** Complete
**Timestamp:** [HH:MM]
```

## Next Step

After completing initialization, proceed to step-28-tech-stack.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md']
technical_level: '[user response]'
existing_decisions: '[captured decisions or null]'
```
