# Step 6: Photography & Imagery

## Purpose

Define photography style, image sources, and imagery guidelines.

## Context for Agent

Imagery significantly impacts perception. Help the user plan realistic image sourcing while establishing quality standards.

## Instructions

1. **Photography style direction**

   Discuss the photographic feel:

   | Style | Characteristics |
   |-------|-----------------|
   | **Authentic/Documentary** | Real people, real work, candid |
   | **Professional/Polished** | Staged, high quality, idealized |
   | **Lifestyle** | In context, aspirational |
   | **Product-focused** | Clean, detailed, technical |

   For service businesses, authentic usually works best.

2. **Existing photography**

   Ask: "Do you have photos of the business, team, or work?"
   - Quality assessment
   - What's usable as-is?
   - What needs to be shot?

3. **Photography needs**

   Identify what's needed:
   - Hero/header image(s)
   - Team/owner photos
   - Work/service photos
   - Location/environment
   - Detail shots

   Discuss: "Would you be open to a photoshoot?"

4. **Stock photography guidelines**

   If stock photos are needed:
   - Style consistency (same photographer/collection)
   - Authenticity (avoid obviously staged)
   - Diversity and representation
   - Industry appropriateness

   Recommend stock sources:
   - Unsplash (free, good quality)
   - Pexels (free)
   - Shutterstock/Adobe Stock (paid, more options)

5. **Icon and illustration style**

   If icons or illustrations are needed:
   - Line icons vs. filled
   - Custom vs. library (Heroicons, Feather, etc.)
   - Illustration style if applicable

6. **Image guidelines**

   Document standards:
   - Consistent color treatment?
   - Aspect ratios for consistency
   - Alt text requirements
   - Compression/optimization

7. **Document in output**
   - Fill in Photography & Imagery section
   - Note image sources and guidelines

## Example Output

```
Photography Style: Authentic/Documentary
- Real workshop photos
- Björn at work
- Actual vehicles being serviced
- Northern Öland environment

Image Sources:
| Type | Source | Notes |
|------|--------|-------|
| Hero | Custom photoshoot | Workshop exterior/interior |
| Team | Custom | Björn portrait |
| Services | Custom + stock | Action shots |
| Location | Custom | Öland landscape/sign |

Guidelines:
- Natural lighting preferred
- Warm color grading (not cold/clinical)
- Show competence and professionalism
- Include local Öland character
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

After completing imagery, proceed to step-26-visual-synthesize.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-existing-brand.md', 'step-03-references.md', 'step-04-design-style.md', 'step-05-layout-effects.md', 'step-06-imagery.md']
photography_style: '[style]'
photoshoot_needed: '[yes/no]'
```
