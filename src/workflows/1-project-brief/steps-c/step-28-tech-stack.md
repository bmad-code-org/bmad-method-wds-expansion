# Step 2: Technology Stack

## Purpose

Capture core technology decisions for the project.

## Context for Agent

Guide the user through technology choices, explaining trade-offs at their level of understanding. Document decisions with clear rationale.

## Key Elements

This step captures:
- CMS/Framework choice
- Frontend technologies
- Styling approach
- Backend/database if applicable
- Hosting decisions

## Instructions

1. **CMS/Framework Selection**

   If not already decided, ask:
   - "What type of site are we building?" (reference Product Brief)
   - Present options appropriate to project:
     - **WordPress** — Content-focused, client can update, huge ecosystem
     - **Next.js/React** — Dynamic, app-like, developer-maintained
     - **Static (HTML/11ty)** — Simple, fast, minimal maintenance
     - **Other** — Based on specific requirements

2. **Theme/Styling Approach**

   For WordPress:
   - **Block Theme (Gutenberg)** — Modern, visual editing, limited flexibility
   - **Classic Theme + Tailwind** — Developer control, Tailwind utility classes
   - **Classic Theme + Custom CSS** — Full control, more maintenance
   - **Existing Theme** — Faster start, less unique

   For React/Next:
   - **Tailwind CSS** — Utility-first, rapid development
   - **CSS Modules** — Component-scoped styles
   - **Styled Components** — CSS-in-JS approach

3. **Document rationale**
   - Why this choice fits the project
   - Trade-offs acknowledged
   - Client maintenance implications

4. **Capture in template**
   - Fill in Technology Stack section of output document


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

After completing tech stack, proceed to step-29-integrations.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-tech-stack.md']
cms_framework: '[chosen technology]'
styling_approach: '[chosen approach]'
```
