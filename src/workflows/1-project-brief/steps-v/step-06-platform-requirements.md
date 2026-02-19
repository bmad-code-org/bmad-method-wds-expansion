# Validation Step 06: Platform Requirements

**Goal:** Verify technical platform requirements are specified and consistent with project scope.

---

## Prerequisites

Check if Platform Requirements document exists at `{output_folder}/A-Product-Brief/`. If not, note as "Platform Requirements not defined" and skip to final report.

---

## Checks

### 1. Tech Stack

- [ ] CMS/framework specified
- [ ] Hosting approach noted
- [ ] Technical constraints documented

### 2. Integrations

- [ ] Third-party integrations listed
- [ ] Each integration has purpose documented
- [ ] No conflicting integration choices

### 3. Contact Strategy

- [ ] Contact form requirements documented
- [ ] Communication channels specified (email, chat, phone)

### 4. Multilingual (if applicable)

- [ ] Language switching approach defined
- [ ] URL structure for languages specified
- [ ] Translation workflow noted

---

## Report

```
## Platform Requirements Report

**Status:** [Defined / Not defined]
**Tech stack:** [Specified / Not specified]
**Integrations:** [N]
**Multilingual:** [Yes/No/N/A]
**Issues:** [N]

[List any unresolved technical decisions]
```

---

## Final Validation Report

Compile results from all 6 validation steps:

```
## Phase 1 Validation Report

**Project:** {project_name}
**Date:** [date]
**Brief level:** [complete/simplified]

### Results Summary
| Check | Status | Issues |
|-------|--------|--------|
| Brief Completeness | ✅/⚠️/❌ | [summary] |
| VTC Consistency | ✅/⚠️/❌ | [summary] |
| SEO Strategy | ✅/⚠️/❌ | [summary] |
| Content & Language | ✅/⚠️/❌ | [summary] |
| Visual Direction | ✅/⚠️/❌ | [summary] |
| Platform Requirements | ✅/⚠️/❌ | [summary] |

### Critical Issues (must fix)
[list or "None"]

### Warnings (should fix)
[list or "None"]

### Recommendations
[list or "All clear"]
```

Save report to `{output_folder}/A-Product-Brief/validation-report.md`

---

_End of Phase 1 validation._
