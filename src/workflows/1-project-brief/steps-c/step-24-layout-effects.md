# Step 5: Layout & Effects

## Purpose

Define layout approach and visual effects usage.

## Context for Agent

Layout decisions affect user experience. Effects should enhance, not distract. Keep platform constraints in mind (from Platform Requirements).

## Reference Documents

Load and reference as needed:
- `docs/models/design-nomenclature/layout-terminology.md`
- `docs/models/design-nomenclature/visual-effects.md`

## Instructions

1. **Hero section approach**

   Discuss hero section options:

   | Type | Best For |
   |------|----------|
   | **Full-bleed image** | Strong visual, photography |
   | **Split hero** | Image + text, balanced |
   | **Text-focused** | Content-first, fast load |
   | **Video hero** | Dynamic, engaging |

   For this project, recommend based on:
   - Content type
   - Photography availability
   - Mobile experience

2. **Content layout approach**

   Discuss overall layout structure:
   - **Card-based**: Modular, flexible
   - **Single column**: Content-focused, blog-like
   - **Grid**: Organized, multiple elements
   - **Bento box**: Modern, varied modules

3. **Navigation approach**

   Based on site complexity:
   - Simple top nav (few pages)
   - Hamburger mobile + full desktop
   - Mega menu (complex sites)
   - Sticky header considerations

4. **Visual effects usage**

   Discuss appropriate effects:

   | Effect | Use Level |
   |--------|-----------|
   | **Shadows** | Subtle/Medium/Heavy |
   | **Animations** | None/Subtle/Rich |
   | **Parallax** | None/Subtle/Heavy |
   | **Hover effects** | None/Subtle/Interactive |

   For mobile-first, simpler is often better.

5. **Performance considerations**

   Note constraints:
   - "Tourists on 4G need fast loading"
   - "Avoid heavy animations on mobile"
   - "Optimize images aggressively"

6. **Document in output**
   - Fill in Layout Direction section
   - Fill in Visual Effects section

## Example Output

```
Layout:
- Hero: Split hero (phone number prominent + workshop image)
- Content: Card-based for services
- Navigation: Simple sticky header, hamburger on mobile
- Footer: Contact info + map + partner badges

Effects:
- Shadows: Subtle (soft shadows on cards)
- Animations: Minimal (subtle hover states only)
- Parallax: None (performance priority)
- Hover: Scale on service cards

Performance note:
Mobile-first, fast-loading priority for tourists on phones.
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

After completing layout/effects, proceed to step-25-imagery.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-existing-brand.md', 'step-03-references.md', 'step-04-design-style.md', 'step-05-layout-effects.md']
layout_approach: '[approach]'
effects_level: '[minimal/moderate/rich]'
```
