# Step 4: Language Strategy

## Purpose

Define language requirements and translation approach.

## Context for Agent

Language strategy affects content creation, maintenance, and SEO. Capture not just which languages, but why and how they'll be managed.

## Instructions

1. **Identify required languages**

   Ask: "What languages does the site need to support?"

   For each language:
   - Why is it needed? (local audience, tourists, business partners)
   - What priority? (primary, secondary, tertiary)
   - Full translation or partial?

2. **Determine primary language**

   - Which language is the "source" language?
   - Will content be created first in this language?

3. **Translation approach**

   Options to discuss:
   - **Full translation**: All pages in all languages
   - **Priority pages**: Key pages translated, others primary only
   - **Machine + review**: AI translation with human review
   - **Professional translation**: Human translators
   - **Client-managed**: Client handles translations

4. **Localization considerations**

   Beyond translation, ask about:
   - Date/time formats
   - Currency (if applicable)
   - Phone number formats
   - Address formats
   - Cultural considerations

5. **Tone consistency across languages**

   Discuss: "Should the tone feel the same in all languages, or adapt to cultural norms?"

   Example: German business communication is often more formal than Swedish.

6. **Document in output**
   - Fill in Language Strategy section
   - Create language table with priority and coverage
   - Document translation approach

## Example for Trilingual Site

```
| Language | Priority | Coverage | Notes |
|----------|----------|----------|-------|
| Swedish | Primary | 100% | Source language |
| English | Secondary | 100% | For tourists |
| German | Secondary | 100% | Large tourist segment |

Translation approach:
- Swedish content created first
- Mårten provides Swedish → English
- Professional translator for Swedish → German
- Review all translations for tone consistency
```

## Agent Dialog Update

After completing this step, update the agent dialog:

```markdown
### Step 4: Language Strategy
**Q:** What languages does the site need to support? Translation approach?
**A:** [Languages identified with priorities and coverage]
**Documented in:** content-language.md (Language Strategy section)
**Key insights:** [Translation approach, localization needs]
**Status:** Complete
**Timestamp:** [HH:MM]
```

## Next Step

After completing languages, proceed to step-17-seo-keywords.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-personality.md', 'step-03-tone.md', 'step-04-languages.md']
languages: '[list]'
translation_approach: '[approach]'
```
