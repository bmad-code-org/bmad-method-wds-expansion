# Step 01: Identify Target

**Goal:** Define what to reverse engineer, how to access it, and what to extract.

---

## Process

### 1. Define the Target

Identify what you are reverse engineering:

| Target Type | Examples |
|-------------|----------|
| **Website** | Public marketing site, SaaS application, e-commerce store |
| **Web application** | Dashboard, admin panel, booking system |
| **Component library** | Design system documentation site, Storybook instance |
| **Mobile app** | iOS/Android app (via screenshots or simulator) |
| **Source code** | Your own codebase, open source project |

Write a clear target description:

```
Target: [Name / URL / Project]
Type: [Website / Web app / Component library / Mobile app / Source code]
Owner: [Own product / Client product / Public / Competitor]
```

### 2. Determine Access Method

How will you explore the target?

| Access Method | When to Use | Tools |
|---------------|-------------|-------|
| **URL (browser)** | Public websites, web apps with demo | Puppeteer, browser DevTools |
| **Source code** | Own codebase, open source | File reading, code analysis |
| **Screenshots** | No live access, mobile apps, provided by client | Image analysis |
| **Combination** | Source code + live URL | Both code and browser |

Note any access limitations (login required, rate limits, geo-restrictions).

### 3. Define Extraction Goals

What do you need to extract? Check all that apply:

- [ ] **Page specifications** — Layout, structure, content for each page
- [ ] **Design system** — Colors, typography, spacing, shadows, tokens
- [ ] **Component inventory** — Reusable UI components, variants, states
- [ ] **Content strategy** — Copy patterns, tone, content hierarchy
- [ ] **Architecture** — Tech stack, routing, data flow (requires source access)
- [ ] **User flows** — Multi-page journeys, interaction patterns
- [ ] **All of the above** — Full extraction for rebuild or migration

### 4. Document Target Overview

Create a brief overview to guide the exploration:

```
Target Overview:
- Name: [Name]
- URL: [URL or "source code at /path/"]
- Access: [Browser / Source / Screenshots]
- Goals: [What to extract]
- Output language: [Language for generated specs]
- Pages estimated: [Rough count if known]
- Notes: [Login required? Special states? Known complexity?]
```

---

## Checklist

- [ ] Target clearly identified with name and type
- [ ] Access method determined and verified (URL loads, source exists, screenshots provided)
- [ ] Extraction goals defined
- [ ] Target overview documented

---

## Next Step

Continue to step-02-explore-and-capture.md
