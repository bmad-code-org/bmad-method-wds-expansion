# Step 6: Synthesize & Review

## Purpose

Complete the Platform Requirements document and prepare for next steps.

## Context for Agent

Finalize the document, ensure all sections are complete, and provide a clear summary of decisions made.

## Instructions

1. **Review completeness**

   Check that all sections are filled:
   - [ ] Technology Stack
   - [ ] Plugin/Package Stack
   - [ ] Integrations
   - [ ] Contact Strategy
   - [ ] UX Constraints
   - [ ] Multilingual Requirements
   - [ ] SEO Requirements
   - [ ] Maintenance & Ownership

2. **Document maintenance ownership**

   Ask: "Who will maintain the site after launch?"
   - Content updates — client or agency?
   - Technical maintenance — developer or managed?
   - Plugin updates — automatic or manual review?

   Fill in Maintenance & Ownership section.

3. **Development handoff notes**

   Capture any important notes for developers:
   - Environment setup requirements
   - Deployment process expectations
   - Special considerations

4. **Present summary**

   Show the user a summary table:

   ```
   Platform Requirements Summary
   ─────────────────────────────
   Tech Stack:     [CMS/Framework]
   Styling:        [Approach]
   Languages:      [List]
   Contact:        [Primary method]
   SEO:            [Plugin choice]
   Key Constraint: [Most important UX constraint]
   ```

5. **Confirm and save**

   Ask: "Does this capture all the platform decisions?"
   - If changes needed, update document
   - If complete, finalize

6. **Next steps guidance**

   Explain what's next:
   - "Platform Requirements will constrain UX design in Phase 4"
   - "Developers will use this in Phase 6 for handoff"
   - Recommend: "Now let's do Content & Language to define tone and translations"

## Completion

This workflow is complete when:
- Platform Requirements document is finalized
- User has confirmed the decisions
- Output file is saved

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-tech-stack.md', 'step-03-integrations.md', 'step-04-contact-strategy.md', 'step-05-multilingual.md', 'step-06-synthesize.md']
status: complete
```

## Output Location

Final document: `{output_folder}/platform-requirements.md`
