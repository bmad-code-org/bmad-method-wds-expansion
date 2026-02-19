# Validation Step 05: SEO Keyword Alignment

**Goal:** Verify that scenario pages align with the SEO keyword strategy defined in Phase 1.

---

## Prerequisites

Load the SEO keyword map from `{output_folder}/A-Product-Brief/` (content language section or dedicated SEO strategy file).

If no SEO keyword map exists, note this as a gap and skip to the final report.

---

## Checks

### 1. Page-Keyword Mapping

For each unique page across all scenarios:
- [ ] Page has at least one primary keyword assigned (from Phase 1 keyword map)
- [ ] Keywords match the page's user intent (not forced)
- [ ] No two pages compete for the same primary keyword

### 2. Keyword Coverage

- [ ] All high-priority keywords from Phase 1 map to at least one scenario page
- [ ] Service keywords map to relevant service pages
- [ ] Location keywords map to location-relevant pages
- [ ] Problem keywords map to solution pages

### 3. URL Slug Alignment

If URL slugs were defined in the keyword map:
- [ ] Scenario page names align with planned URL slugs
- [ ] No naming conflicts between scenario names and SEO slugs

---

## Report

```
## SEO Keyword Alignment Report

**Pages with keywords:** [X]/[Total]
**Keyword conflicts:** [N]
**Unmapped keywords:** [list]

| Page | Primary Keyword | Secondary | Status |
|------|----------------|-----------|--------|
| [Name] | [keyword] | [keywords] | ✅/⚠️/❌ |

**Overall SEO readiness:** [Good / Needs Work / No keyword map]
```

---

## Final Validation Report

Compile results from all 5 validation steps into a summary:

```
## Phase 3 Validation Report

**Project:** {project_name}
**Date:** [date]
**Scenarios validated:** [N]

### Results Summary
| Check | Status | Issues |
|-------|--------|--------|
| Scenario Coverage | ✅/⚠️/❌ | [summary] |
| Navigation Patterns | ✅/⚠️/❌ | [summary] |
| Outline Completeness | ✅/⚠️/❌ | [summary] |
| Cross-Scenario Consistency | ✅/⚠️/❌ | [summary] |
| SEO Keyword Alignment | ✅/⚠️/❌ | [summary] |

### Critical Issues (must fix)
[list or "None"]

### Warnings (should fix)
[list or "None"]

### Recommendations
[list or "All clear"]
```

Save report to `{output_folder}/C-UX-Scenarios/validation-report.md`

---

_End of Phase 3 validation._
