# Step 4: Design Style

## Purpose

Define specific design style choices using the Design Nomenclature vocabulary.

## Context for Agent

Use the Design Nomenclature reference to precisely define visual direction. This creates shared vocabulary between strategy, design, and development.

## Reference Documents

Load and reference as needed:
- `docs/models/design-nomenclature/ui-visual-styles.md`
- `docs/models/design-nomenclature/design-aesthetics.md`

## Instructions

1. **Determine UI visual style**

   Based on references and mood, recommend a UI style:

   | Style | When to Use |
   |-------|-------------|
   | **Flat Design** | Clean, simple, content-focused |
   | **Material Design** | Structured, Android alignment |
   | **Neobrutalism** | Bold, modern, startup feel |
   | **Glassmorphism** | Premium, layered, Apple-like |
   | **Minimal** | Maximum restraint, luxury |

   Present recommendation with rationale:
   "Based on your references, I'd recommend [style] because [reasons]."

   Confirm or adjust with user.

2. **Determine design aesthetic**

   Beyond UI style, what era/movement influences apply?

   | Aesthetic | Markers |
   |-----------|---------|
   | **Minimalism** | White space, essential elements |
   | **Mid-Century Modern** | Clean lines, organic curves |
   | **Service Center** | Practical, trust-focused |
   | **Corporate** | Professional, conventional |
   | **Local/Artisan** | Warm, personal, handcrafted feel |

3. **Color direction**

   Based on existing brand and preferences:
   - Color scheme type: Monochromatic, Complementary, etc.
   - Palette direction: Warm/cool, light/dark, saturated/muted
   - Any colors to avoid?

   Reference: `docs/models/design-nomenclature/color-terminology.md`

4. **Typography direction**

   Based on tone and style:
   - Headlines: Geometric, Humanist, Serif?
   - Body: Readable, Neo-grotesque?
   - Personality: Bold, refined, friendly?

   Reference: `docs/models/design-nomenclature/typography-classification.md`

5. **Document in output**
   - Fill in Design Style section
   - Fill in Color Direction section
   - Fill in Typography Direction section

## Example Output

```
UI Style: Flat/Material hybrid
- Clean, minimal decoration
- Subtle shadows for hierarchy
- Consistent with Autoexperten alignment

Aesthetic: "Service Center" meets "Local"
- Professional and trustworthy
- Warm, personal touches
- Not cold corporate

Colors:
- Dark navy base (Autoexperten alignment)
- White/light text for contrast
- Warm accent (to soften)
- Scheme: Analogous warm accents on cool base

Typography:
- Headlines: Geometric sans (modern, clean)
- Body: Humanist sans (readable, warm)
- Examples: Inter, Open Sans, Poppins
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

After completing design style, proceed to step-24-layout-effects.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-existing-brand.md', 'step-03-references.md', 'step-04-design-style.md']
ui_style: '[style]'
aesthetic: '[aesthetic]'
```
