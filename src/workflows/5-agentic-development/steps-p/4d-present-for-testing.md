# Phase 4d: Present Section for Testing

**Purpose**: Present the implemented section to user with clear test instructions

**Task**: Help user test the section effectively

---

## When to Use This Phase

- ✅ Section implemented (Phase 4c complete)

---

## Step 0: Agent Self-Verification (Before Presenting)

**BEFORE presenting to the user, verify your own work with Puppeteer.**

See: [Inline Testing Guide](../data/guides/INLINE-TESTING-GUIDE.md) for full methodology.

**Actions**:

1. Open the page in browser using Puppeteer
2. Set viewport to target device width
3. Verify each agent-verifiable criterion from the story file
4. Narrate findings using the ✓/✗ pattern (actual vs expected)
5. Fix any failures and re-verify

**If modifying existing features**: Compare against baseline captured before implementation. Confirm only intended changes occurred.

**Only proceed to Step 1 when all agent-verifiable criteria pass.**

---

## Step 1: Present Implementation

**Your response**:
> "✅ **Section [N] Implemented!**
>
> **What's new**:
> - ✅ [Feature 1] (Object ID: `[id]`)
> - ✅ [Feature 2] (Object ID: `[id]`)
> - ✅ [Feature 3] (Object ID: `[id]`)
>
> **Files updated**:
> - `[View].html` ([N] new objects added)
> - Story file documents this section"

---

## Step 2: Present Verification Results & Request Qualitative Review

**Your response**:
> "**Puppeteer Verification**: [X/Y] criteria pass.
> [Brief narration summary — e.g., "Text content, colors, touch targets, and states all match spec."]
>
> **Please evaluate these qualitative aspects**:
>
> 1. **Open** `[View].html` in browser
> 2. **Feel the flow**: Does the interaction feel natural?
> 3. **Visual hierarchy**: Does your eye go to the right place first?
> 4. **Clarity**: Is it immediately clear what to do?
> 5. **Consistency**: Does this section feel like it belongs with the rest?
>
> **Working as expected? Any issues or improvements?**"

---

## Step 3: Wait for User Feedback

**User will respond with one of**:
- ✅ "Looks good!" / "Approved" / "Y" / "Perfect!"
- ⚠️ Issue: "The button doesn't..." / "I see a problem with..."
- 💡 Improvement: "Could we make it..." / "What if we..."

---

## Next Phase

**If user approves**: Go to `4g-section-approved.md`

**If user reports issue**: Go to `4e-handle-issue.md`

**If user suggests improvement**: Go to `4f-handle-improvement.md`

