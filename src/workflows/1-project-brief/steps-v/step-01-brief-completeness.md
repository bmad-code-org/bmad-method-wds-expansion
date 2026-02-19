# Validation Step 01: Brief Completeness

**Goal:** Verify the Product Brief contains all required sections and no section is left as a placeholder.

---

## Checks

### 1. Load Product Brief

Read `{output_folder}/A-Product-Brief/project-brief.md` and extract all sections.

### 2. Required Sections (Complete Brief)

- [ ] Project Vision — clear, specific, not generic
- [ ] Market Positioning — target, need, category, benefit, differentiator
- [ ] Business Model — revenue model defined
- [ ] Target Users — at least one user profile with behavioral description
- [ ] Success Criteria — at least 3 measurable metrics
- [ ] Competitive Landscape — at least 2 competitors analyzed
- [ ] Constraints — documented (even if "none identified")
- [ ] Platform Strategy — platform decisions stated

### 3. Required Sections (Simplified Brief)

If `brief_level = simplified`, check:
- [ ] Project summary present
- [ ] Target audience identified
- [ ] Key goals stated
- [ ] Platform noted

### 4. Section Quality

For each section:
- [ ] Contains substantive content (not just headings)
- [ ] No TODO/placeholder markers remain
- [ ] Content aligns with section purpose

---

## Report

```
## Brief Completeness Report

**Brief level:** [complete/simplified]
**Sections present:** [N]/[Total]
**Quality issues:** [N]

[List any missing or incomplete sections]
```

---

## Next Step

<action>Auto-proceed to: step-02-vtc-consistency.md</action>
