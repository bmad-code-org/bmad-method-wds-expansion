# Step 03: Validate Component Usage

**Goal:** Check that design system components are used correctly and consistently across page specifications.

---

## Process

### 1. Scan Page Specifications

Read all page specifications in `{output_folder}/D-UX-Design/` and extract component references.

### 2. Cross-Reference

For each component:
- Is it defined in the design system? ✅/❌
- Is it used consistently (same props/states)? ✅/⚠️
- Are there conflicting definitions? ✅/❌

### 3. Report

```
## Component Usage Report

| Component | Defined | Pages Used | Consistent | Issues |
|-----------|---------|------------|------------|--------|
| [name] | ✅/❌ | [N] | ✅/⚠️ | [details] |

**Missing from system:** [list]
**Inconsistent usage:** [list]
**Unused components:** [list]
```

### 4. Resolve

For each issue:
- Update component definition to match usage
- Update page specifications to match design system
- Remove orphaned components

---

## After Completion

Return to scenario dashboard or continue with design system management.
