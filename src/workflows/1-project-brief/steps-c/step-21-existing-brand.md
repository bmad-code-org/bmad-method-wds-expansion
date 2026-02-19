# Step 2: Existing Brand Assets

## Purpose

Document any existing visual identity that must be respected or built upon.

## Context for Agent

Understanding existing brand assets prevents conflicts and ensures continuity. Even informal assets (a sign, business cards) establish visual expectations.

## Instructions

1. **Inventory existing assets**

   For each asset type, ask and document:

   **Logo:**
   - Does a logo exist?
   - File formats available? (vector, PNG, etc.)
   - Variations? (horizontal, stacked, icon only)
   - Quality? (professional, DIY, needs refresh)

   **Colors:**
   - Are there established brand colors?
   - Where are they used? (signage, vehicles, uniforms)
   - Are they documented? (hex codes, Pantone)
   - Do they need to be maintained?

   **Typography:**
   - Any fonts already in use?
   - On signage, business cards, etc.?

   **Imagery:**
   - Existing photos of business, team, work?
   - Quality level?
   - Usage rights?

2. **Assess partnership/affiliation requirements**

   Ask: "Are there any partner brands or affiliations that affect the visual identity?"

   Examples:
   - Franchise requirements
   - Certification badges (Autoexperten, Godkänd Bilverkstad)
   - Industry associations

   Document any visual constraints from partnerships.

3. **Determine what to keep vs. refresh**

   For each asset:
   - **Keep as-is** — Works well, established recognition
   - **Refresh** — Good foundation, needs polish
   - **Replace** — Doesn't work, starting fresh
   - **Create** — Doesn't exist yet

4. **Collect assets**

   If user has assets to share:
   - Request files be placed in `visual-references/existing/`
   - Or note locations where assets can be obtained

5. **Document in output**
   - Fill in Existing Brand Assets section
   - Note brand constraints from partnerships

## Example Output

```
| Asset | Status | Location |
|-------|--------|----------|
| Logo | Exists, keep | Signage, needs vector file |
| Colors | Informal, refresh | Blue from sign, document hex |
| Photos | Need new | Plan photoshoot of workshop |

Brand Constraints:
- Must include Autoexperten partner badge
- Godkänd Bilverkstad certification mark
```


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

After completing existing brand, proceed to step-22-references.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-existing-brand.md']
logo_status: '[exists/needs-creation/needs-refresh]'
colors_status: '[established/informal/none]'
```
