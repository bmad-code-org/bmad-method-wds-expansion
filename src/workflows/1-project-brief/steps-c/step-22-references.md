# Step 3: Visual References

## Purpose

Gather inspiration and reference sites that represent the desired visual direction.

## Context for Agent

Reference sites communicate visual preferences more effectively than words alone. Help the user articulate WHAT they like about each reference.

## Instructions

1. **Request reference sites**

   Ask: "Are there any websites you like the look of? They don't have to be in the same industry."

   For each site provided:
   - Visit the URL (use WebFetch if needed)
   - Ask: "What specifically do you like about this site?"
   - Document the specific elements they're drawn to

2. **Probe for specifics**

   For each reference, identify:
   - **Layout:** How content is organized
   - **Colors:** Palette, mood, contrast
   - **Typography:** Font styles, sizes, weight
   - **Imagery:** Photo style, illustrations
   - **Effects:** Animations, shadows, interactions
   - **Overall feel:** Modern, classic, bold, subtle

3. **Industry-specific references**

   Ask: "Have you seen any [industry] websites that stood out?"

   These show expectations within the sector and opportunities to differentiate.

4. **Negative references**

   Ask: "Are there any sites or styles you definitely DON'T want?"

   Knowing what to avoid is as valuable as knowing what to pursue.

5. **Synthesize mood keywords**

   Based on references, identify 3-5 mood keywords:
   - Example: "Professional, modern, warm, trustworthy, local"

   Validate with user: "Would you say the visual direction should feel [keywords]?"

6. **Document in output**
   - Fill in Visual References section
   - Add each reference with URL and what we like
   - Capture mood description and keywords

## Example Output

```
**Autoexperten (https://autoexperten.se)**
- What we like: Dark, professional, clear trust badges
- Relevance: Partner brand alignment

**Bosch Car Service (https://boschcarservice.com/se/sv/)**
- What we like: Clean layout, clear CTAs, professional imagery
- Relevance: Industry benchmark, lighter alternative

**Local competitor**
- What we DON'T like: Cluttered, outdated, hard to read
- Learn: Keep it simple, modern

Mood: Professional, trustworthy, local, modern but not cold
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

After completing references, proceed to step-23-design-style.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-existing-brand.md', 'step-03-references.md']
reference_count: '[number]'
mood_keywords: '[keywords]'
```
