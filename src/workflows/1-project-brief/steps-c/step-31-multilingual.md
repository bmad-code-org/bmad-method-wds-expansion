# Step 5: Multilingual & SEO

## Purpose

Document language requirements and technical SEO needs.

## Context for Agent

Multilingual setup affects plugin choices, URL structure, and content workflow. SEO requirements inform technical implementation.

**Reference Guide:** Load `seo-strategy-guide.md` from Saga's agent guides for comprehensive SEO best practices including URL structure, structured data, hreflang implementation, and more.

## Key Elements

- Language requirements
- URL structure for languages
- Translation workflow
- Technical SEO requirements

## Instructions

1. **Determine language needs**

   Ask: "What languages does the site need to support?"
   - Single language — simpler setup
   - Multiple languages — requires plugin and strategy

2. **If multilingual:**

   **Recommend URL structure:**
   ```
   example.com/           → Primary language (Swedish)
   example.com/en/        → English
   example.com/de/        → German
   ```

   **Plugin recommendation:**
   - **Polylang** — Free tier works, good SEO support
   - **WPML** — More features, paid
   - **TranslatePress** — Visual translation

   **Translation workflow:**
   - Who translates? (client, translator, agency)
   - Full translation or priority pages?
   - Ongoing updates process

   **Technical requirements:**
   - hreflang tags (automatic with good plugins)
   - Language switcher placement
   - Default language handling

3. **SEO technical requirements**

   Document needs:
   - **Meta tags** — Title, description per page (all languages)
   - **Structured data** — Schema.org markup per page type:
     - `LocalBusiness` / `AutoRepair` — Business identity (all pages)
     - `Service` — Individual service pages
     - `Article` — Blog/news articles
     - `FAQPage` — FAQ sections
     - `BreadcrumbList` — Navigation breadcrumbs
   - **Sitemap** — XML sitemap generation (includes all language versions)
   - **Robots.txt** — Crawl directives
   - **Page speed** — Core Web Vitals targets (LCP < 2.5s, FID < 100ms, CLS < 0.1)
   - **Mobile-first** — Responsive, mobile-optimized
   - **Canonical URLs** — Self-referencing canonical on every page
   - **hreflang tags** — Language alternates declared on every page
   - **404 handling** — Custom 404 page with navigation

   **Canonical URL strategy:**
   - Each language version has its own canonical URL
   - `x-default` points to the primary language
   - No duplicate content between language versions

   **Redirect strategy:**
   - 301 redirects for old URLs (if site migration)
   - Language detection redirect (optional, from root to user's language)
   - Trailing slash consistency

   **SEO plugin recommendation:**
   - **Rank Math** — Feature-rich, free tier excellent
   - **Yoast** — Industry standard, some features paid

4. **Performance targets**

   Discuss realistic targets:
   - Page load time goal (e.g., < 3 seconds on 4G)
   - Core Web Vitals targets
   - Mobile performance priority

5. **Update output document**
   - Fill in Multilingual Requirements section
   - Fill in SEO Requirements section
   - Add Performance Targets


## Agent Dialog Update

After completing this step, update the agent dialog:

```markdown
### [Step Name]
**Q:** [Key questions asked]
**A:** [User responses - summarized]
**Documented in:** platform-requirements.md ([section name])
**Key insights:** [Important decisions or revelations]
**Status:** Complete
**Timestamp:** [HH:MM]
```

## Next Step

After completing multilingual/SEO, proceed to step-32-platform-synthesize.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-tech-stack.md', 'step-03-integrations.md', 'step-04-contact-strategy.md', 'step-05-multilingual.md']
languages: '[list]'
seo_plugin: '[choice]'
```
