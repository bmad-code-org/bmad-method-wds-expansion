# Step 1: Initialize Content & Language

## Purpose

Welcome user and set context for defining content and language strategy.

## Context for Agent

You are helping capture how the brand speaks. This includes personality, tone, language requirements, and content guidelines. Reference the Product Brief for positioning and target user context.

## Instructions

1. **Create output file**
   - Create `content-language.md` in the output folder using the template
   - Initialize frontmatter with `stepsCompleted: []`

2. **Welcome and contextualize**
   - "Let's define how [project name] speaks. This will guide all content — from button labels to marketing copy."
   - Reference Product Brief positioning if available

3. **Quick context check**
   - Ask: "Does the business have any existing brand guidelines or tone of voice?"
   - If yes: "Great, let's document and refine them."
   - If no: "No problem, we'll create them together."

4. **Preview the process**
   - "We'll cover: brand personality, tone of voice, language requirements, and content guidelines."
   - "This usually takes 15-20 minutes."

## Agent Dialog Update

After completing this step, update the agent dialog:

```markdown
### Step 1: Initialization
**Q:** Does the business have existing brand guidelines or tone of voice?
**A:** [yes/no - brief context if yes]
**Documented in:** content-language.md (initialized)
**Key insights:** [Any initial observations about brand context]
**Status:** Complete
**Timestamp:** [HH:MM]
```

## Next Step

After completing initialization, proceed to step-14-personality.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md']
has_existing_guidelines: '[yes/no]'
```
