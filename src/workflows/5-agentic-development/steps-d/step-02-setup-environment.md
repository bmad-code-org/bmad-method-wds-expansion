# Step 02: Setup Environment

**Goal:** Verify the development environment is ready, all dependencies are installed, and the project runs cleanly before writing any new code.

---

## Process

### 1. Verify Tech Stack Requirements

Check that the project's required tooling is available:

- Runtime (Node.js version, Python version, etc.)
- Package manager (npm, yarn, pnpm, pip, etc.)
- Build tools (Vite, Webpack, Turbopack, etc.)
- Any CLI tools the project depends on

If version mismatches exist, resolve them now — not mid-implementation.

### 2. Install Dependencies

Run the project's install command. Watch the output for:

- Deprecation warnings (note but do not fix unless blocking)
- Peer dependency conflicts (resolve if they cause build failures)
- Missing system-level dependencies

```
npm install   # or yarn, pnpm install, pip install -r requirements.txt, etc.
```

### 3. Start the Development Server

Run the dev server and confirm:

- The project builds without errors
- The existing pages / routes load in the browser
- Hot reload or watch mode works
- No console errors on existing pages

### 4. Verify Design System Access

If the project uses a design system or design tokens, confirm you can access them:

- Token files (colors, spacing, typography) are present and importable
- Component library is installed and renders correctly
- Icon sets or asset libraries are available
- Any Figma-to-code output is up to date

### 5. Create Project Structure (If Needed)

If the spec requires new directories or organizational structure, create them now:

- New page directories
- New component directories
- Test file locations
- Any configuration files for new routes

Follow the existing project conventions for naming and placement.

### 6. Run Existing Tests to Establish Baseline

Run the full test suite before touching anything:

```
npm test   # or the project's equivalent
```

Record the result:

- **All pass:** Good baseline. Any future failure is from your changes.
- **Some fail:** Document which tests fail BEFORE you start. These are pre-existing failures and not your responsibility, but you need to know they exist so you do not accidentally claim them as regressions.
- **No tests exist:** Note this. Consider whether the spec requires tests (Step 03 will address test writing).

---

## Checklist

- [ ] Runtime and tooling versions verified
- [ ] Dependencies installed without blocking errors
- [ ] Dev server starts and existing pages load
- [ ] Design tokens / design system accessible
- [ ] New directories created (if needed)
- [ ] Existing test suite run, baseline documented
- [ ] Any pre-existing issues noted in dialog file

---

## Next Step

Continue to **step-03-implement.md**
