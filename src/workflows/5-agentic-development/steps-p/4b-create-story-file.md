# Phase 4b: Create Story File

**Purpose**: Create the focused story file for this section with all implementation details

**Task**: Use story template to create complete, clear instructions for implementation

---

## When to Use This Phase

- ✅ Requirements gathered (Phase 4a complete)

---

## Step 1: Create Story File

**Actions**:

Create `stories/[View].[N]-[section-name].md` using this structure:

```markdown
# [View Name] - Section [N]: [Section Name]

**Status**: 🔨 In Progress
**Estimated Time**: ~X min
**Created**: [Date]

## Purpose

[Why this section exists, what it accomplishes]

## Specifications Reference

**Source specs**:
- [Step] [Step Name] - [Relevant sections]
- [Step] [Step Name] - [Relevant sections]

## Objects in This Section

### [Object ID]
- **Type**: [Button / Input / Card / etc.]
- **Label/Content**: [Text or description]
- **Behavior**: [What it does]
- **States**: [Which states show/hide/modify this]
- **Spec reference**: [Step].[Section]

[... repeat for each object]

## HTML Structure to Build

```html
<div data-object-id="section-container" class="[tailwind-classes]">
  <!-- Section content -->
</div>
```

## Tailwind Classes to Use

**Container**: `[classes]`
**Elements**: `[classes]`
**States**: `[classes for different states]`

## JavaScript Requirements

**Functions needed**:
```javascript
function [functionName]() {
  // [What it does]
}
```

**State handling**:
```javascript
if (state === '[state-name]') {
  // Show/hide/modify elements
}
```

## Demo Data Requirements

**Data needed**: `data/demo-data.json` → `[path.to.data]`

## Acceptance Criteria

### Agent-Verifiable (Puppeteer)

| # | Criterion | Element | Expected | How to Verify |
|---|-----------|---------|----------|---------------|
| 1 | [Object] visible | `[selector]` | Visible | Check display/visibility |
| 2 | Object ID present | `[selector]` | data-object-id exists | Query selector |
| 3 | [Text content] | `[selector]` | "[Expected text]" | Read textContent |
| 4 | Responsive | Container | Fits 375px | Set viewport, check layout |

### User-Evaluable (Qualitative)

- [ ] Section feels consistent with overall design
- [ ] Interaction flow is intuitive
- [ ] Visual hierarchy is clear

## Test Instructions

### Puppeteer Self-Verification (Agent)

1. Open `[View].html` in Puppeteer
2. Verify each agent-verifiable criterion (table above)
3. Narrate findings with ✓/✗
4. Fix any failures before presenting

### User Qualitative Review

Present to user after Puppeteer verification passes.
Focus on: feel, flow, clarity, consistency.

## Notes

[Important considerations for implementation]
```

---

## Step 2: Present Story to User

**Your response**:
> "✅ Story file created: `stories/[View].[N]-[section-name].md`
>
> **Summary**:
> - Objects: [N] objects defined
> - Functions: [N] JavaScript functions needed
> - States: [List which states this section handles]
> - Estimated time: ~[X] min
>
> This story has everything needed to implement this section correctly.
>
> **Would you like to**:
> - Review the story first? (I'll show you the key parts)
> - Trust the plan and start implementing? (faster)
>
> **Your choice?** (review/implement)"

---

## Step 3: Handle User Response

**If user says "review"**:
- Show key sections of the story file
- Answer any questions
- Make adjustments if needed
- Ask: "Ready to implement now? (Y)"

**If user says "implement"** or "Y":
> "Perfect! Moving to implementation..."

---

## Next Phase

**Go to**: `4c-implement-section.md`

