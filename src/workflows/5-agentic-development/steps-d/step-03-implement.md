# Step 03: Implement

**Goal:** Build every feature in the implementation plan, one at a time, following existing codebase patterns.

---

## Process

### 1. Work Through the Plan Item by Item

Take the first item from your implementation order (Step 01). For each item:

1. Re-read the relevant section of the spec
2. Identify the acceptance criteria that apply to this item
3. Implement it
4. Test it (see section 5 below)
5. Commit it
6. Move to the next item

Do not jump ahead. Do not implement multiple items simultaneously. Finishing one thing completely before starting the next prevents half-done work from accumulating.

### 2. Follow Existing Codebase Patterns

Before writing new code, study how the existing codebase handles the same concerns:

| Concern | Look At |
|---------|---------|
| **File naming** | How are existing components/pages named? |
| **Component structure** | Props interface, state management, lifecycle |
| **Styling approach** | CSS modules, Tailwind, styled-components, etc. |
| **Error handling** | How do existing features handle errors? |
| **Data fetching** | What patterns are used for API calls? |
| **State management** | Local state, context, store — what is the convention? |
| **Testing patterns** | How are existing tests structured? |

Match these patterns. Consistency with the codebase is more important than what you consider "better."

### 3. Reference the Spec for Each Component

For every component you build, check the spec for:

- **Properties:** What props/attributes does it accept?
- **States:** Default, hover, active, disabled, loading, error, empty
- **Responsive behavior:** How does it change at each breakpoint?
- **Content:** Exact text, labels, placeholder copy
- **Interactions:** Click handlers, form submissions, navigation
- **Edge cases:** What happens with long text, missing data, zero items?

Do not rely on memory. Re-read the spec section each time.

### 4. Use Design System Tokens

If the project has design tokens or a design system:

- Use token variables for colors, spacing, typography — never hardcode values
- Use existing components from the design system before creating new ones
- If you need a new component, build it using the same token system
- Check that your implementation visually matches at design-review zoom levels

### 5. Run Tests After Each Major Change

After completing each work item (not just at the end):

- Run the relevant test suite
- If you wrote new tests, confirm they pass
- If existing tests break, determine if it is an intentional change or a regression
- Fix regressions immediately — do not move on with broken tests

For projects using inline testing (Puppeteer), follow the INLINE-TESTING-GUIDE.md in `data/guides/`.

### 6. Commit Incrementally

Each commit should represent one logical unit of work:

- One component added
- One feature wired up
- One set of tests for a feature

Write clear commit messages that reference what was built. Do not accumulate large uncommitted changesets.

---

## Checklist

- [ ] Working through plan items in dependency order
- [ ] Each item: spec re-read before implementation
- [ ] Following existing codebase patterns (naming, structure, styling)
- [ ] Design tokens used — no hardcoded values
- [ ] All component states implemented (not just the happy path)
- [ ] Responsive behavior implemented per spec
- [ ] Tests run after each major change
- [ ] Commits are incremental and logically scoped
- [ ] Deviations from spec documented with rationale

---

## Next Step

Continue to **step-04-verify.md**
