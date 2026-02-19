# Validation Step 05: Cross-Document Coherence

**Goal:** Verify all trigger map documents are coherent as a set — hub, personas, key insights, and feature impact tell a consistent story.

---

## Checks

### 1. Terminology Consistency

- [ ] Persona names identical across all documents
- [ ] Business goal names identical across all documents
- [ ] Priority emojis consistent (same emoji = same meaning)
- [ ] Driving force language consistent (same force = same wording)

### 2. Narrative Coherence

- [ ] Hub document accurately summarizes persona docs
- [ ] Key insights derive from actual trigger map data (not invented)
- [ ] Flywheel logic makes causal sense (P1 → P2 → P3 chain)
- [ ] Design implications flow from insights (not generic advice)

### 3. Cross-References

- [ ] All documents link back to hub (00-trigger-map.md)
- [ ] Hub links to all sub-documents
- [ ] Navigation is bidirectional
- [ ] No broken links

### 4. Mermaid Diagram

- [ ] Diagram reflects actual data (not a rough sketch)
- [ ] All personas present in diagram
- [ ] All business goals present in diagram
- [ ] Connections match driving force assignments
- [ ] Renders correctly (no syntax errors)

---

## Final Validation Report

Compile results from all 5 validation steps:

```
## Phase 2 Validation Report

**Project:** {project_name}
**Date:** [date]
**Documents validated:** [N]

### Results Summary
| Check | Status | Issues |
|-------|--------|--------|
| Target Group Coverage | ✅/⚠️/❌ | [summary] |
| Prioritization Integrity | ✅/⚠️/❌ | [summary] |
| Persona Consistency | ✅/⚠️/❌ | [summary] |
| Feature Impact Alignment | ✅/⚠️/❌ | [summary] |
| Cross-Document Coherence | ✅/⚠️/❌ | [summary] |

### Critical Issues (must fix)
[list or "None"]

### Warnings (should fix)
[list or "None"]

### Recommendations
[list or "All clear"]
```

Save report to `{output_folder}/B-Trigger-Map/validation-report.md`

---

_End of Phase 2 validation._
