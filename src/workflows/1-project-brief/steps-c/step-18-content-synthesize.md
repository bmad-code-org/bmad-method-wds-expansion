# Step 6: Synthesize & Review

## Purpose

Complete the Content & Language document and create actionable guidelines.

## Context for Agent

Finalize the document with practical guidelines that writers and designers can use.

## Instructions

1. **Create content type guidelines**

   For each content type, provide specific guidance:

   **UI Microcopy** (buttons, labels, errors):
   - Keep it short
   - Use active voice
   - Be specific about actions

   **Marketing Content** (headlines, features):
   - Lead with benefits
   - Use power words from tone guide
   - Connect to user driving forces

   **Informational Content** (services, about):
   - Answer user questions directly
   - Include relevant keywords naturally
   - Maintain consistent tone

2. **Document content ownership**

   Ask: "Who will create and update content?"

   | Content Type | Owner | Frequency |
   |--------------|-------|-----------|
   | Service descriptions | [owner] | Rarely |
   | Blog/news | [owner] | [frequency] |
   | Translations | [owner] | As needed |

3. **Create writing checklist**

   Compile a practical checklist:
   - [ ] Tone matches guidelines (warm, professional, etc.)
   - [ ] Language is appropriate for target audience
   - [ ] Keywords included naturally
   - [ ] All languages updated (if multilingual)
   - [ ] Spelling and grammar checked
   - [ ] Accessible language (no jargon without explanation)

4. **Present summary**

   Show the user a summary:
   ```
   Content & Language Summary
   ─────────────────────────
   Personality:  [key attributes]
   Tone:         [description]
   Languages:    [list with priorities]
   Key Keywords: [top 3-5]
   ```

5. **Confirm and save**

   Ask: "Does this capture how [business] should sound?"
   - Make adjustments as needed
   - Finalize document

6. **Next steps guidance**

   Explain what's next:
   - "Content guidelines will inform all UX writing in Phase 4"
   - "Keywords will guide SEO implementation"
   - Recommend: "Now let's do Visual Direction to establish the visual style"

## Agent Dialog Update

After completing this step, update the agent dialog:

```markdown
### Step 6: Synthesize & Review
**Q:** Does this capture how [business] should sound?
**A:** [User confirmation, any final adjustments]
**Documented in:** content-language.md (complete)
**Key insights:** [Content ownership, writing checklist created]
**Status:** Complete
**Timestamp:** [HH:MM]
```

**Also update agent dialog completion:**
- Status: `complete`
- Mark content-language.md in Generated Artifacts
- Note: "Ready for Platform Requirements or Visual Direction workflow"

## Completion

This workflow is complete when:
- Content & Language document is finalized
- User has confirmed the tone and guidelines
- Output file is saved

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-personality.md', 'step-03-tone.md', 'step-04-languages.md', 'step-05-seo-keywords.md', 'step-05.5-content-structure.md', 'step-06-synthesize.md']
status: complete
```

## Output Location

Final document: `{output_folder}/content-language.md`
