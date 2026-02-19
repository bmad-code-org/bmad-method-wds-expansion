# Step 5: SEO Strategy

## Purpose

Capture SEO strategy including keywords, URL structure, local SEO data, and structured data plan. This step transforms SEO from a keyword list into a comprehensive content strategy.

## Context for Agent

SEO strategy informs both content creation and technical implementation. A strong SEO foundation during the project brief ensures every page specification in Phase 4 targets the right keywords and follows best practices.

**Reference Guide:** Load `seo-strategy-guide.md` from agent guides for comprehensive SEO best practices covering URL structure, heading hierarchy, internal linking, local SEO, image SEO, structured data, and more.

## Instructions

1. **Gather existing keyword research**

   Ask: "Do you have keywords you want to rank for?"

   If yes:
   - Document provided keywords
   - Organize by category/intent

   If no:
   - Help brainstorm based on services, products, and location

2. **Keyword categories**

   Organize keywords by intent:

   | Category | Intent | Example |
   |----------|--------|---------|
   | **Service** | Looking for specific service | "bilservice Öland" |
   | **Location** | Near me searches | "bilverkstad norra Öland" |
   | **Problem** | Has a specific issue | "AC reparation bil" |
   | **Brand** | Looking for business | "Källa Fordonservice" |
   | **Informational** | Seeking knowledge | "när byta bromsklossar" |

3. **Translate/adapt keywords for each language**

   Keywords don't translate directly. For each language:
   - What would a native speaker search?
   - Local terminology variations
   - Common misspellings to consider
   - Long-tail phrases specific to that language

4. **Create page-keyword map**

   Map every planned page to its target keywords:

   | Page | URL Slug | Primary Keyword (SE) | Primary Keyword (EN) |
   |------|----------|---------------------|---------------------|
   | Hem | / | bilverkstad Öland | car repair Öland |
   | Service | /service | bilservice | car service |
   | ... | ... | ... | ... |

   This map is referenced by Freya during Phase 4 page specification.

5. **Define URL structure**

   Agree on URL patterns:
   - Primary language: `example.com/{slug}`
   - Secondary languages: `example.com/en/{slug}`, `example.com/de/{slug}`
   - Slug format: lowercase, hyphens, no special characters

6. **Capture local SEO data** (for local businesses)

   Collect NAP (Name, Address, Phone) data:
   - Business name (exact, consistent everywhere)
   - Street address
   - Phone number (local + international format)
   - Email
   - Opening hours
   - Google Business Profile status (claimed? verified?)
   - Business category for Google

7. **Plan structured data**

   Document which Schema.org types each page needs:

   | Page Type | Schema Type |
   |-----------|-------------|
   | All pages | LocalBusiness (header/footer) |
   | Service pages | Service |
   | Articles | Article |
   | FAQ sections | FAQPage |

8. **Keyword usage guidelines**

   Document how keywords should be used:
   - Page titles: Primary keyword + brand name (≤ 60 chars)
   - Meta descriptions: Primary keyword + benefit + CTA (150-160 chars)
   - H1 headings: Primary keyword (can differ from title tag)
   - Body content: Natural mentions, not stuffed
   - Image alt text: Descriptive, keyword where relevant
   - URL slugs: Short, keyword-rich

9. **Document in output**
   - Fill in full SEO Strategy section in content-language document
   - Include page-keyword map, URL structure, local SEO, structured data plan

## Example for Mechanic

```
Page-Keyword Map:
| Page | Slug | Primary (SE) | Primary (EN) | Primary (DE) |
|------|------|-------------|-------------|-------------|
| Hem | / | bilverkstad Öland | car repair Öland | Autowerkstatt Öland |
| Service | /service | bilservice Löttorp | car service | Autoservice |
| AC service | /ac-service | AC service bil Öland | car AC service | Klimaanlage Auto |
| Däckservice | /dackservice | däckbyte Öland | tyre service Öland | Reifenservice |

URL Structure:
kallafordon.se/{slug}        → Swedish (primary)
kallafordon.se/en/{slug}     → English
kallafordon.se/de/{slug}     → German

Local SEO:
Business: Källa Fordonservice
Address: Löttorpsvägen 31, 387 73 Löttorp
Phone: 0485-270 70 / +46 485-270 70
Category: Auto Repair Shop
Google Business: Claimed ✓
```

## Agent Dialog Update

After completing this step, update the agent dialog:

```markdown
### Step 5: SEO Strategy
**Q:** Target keywords? URL structure? Local SEO data? Structured data needs?
**A:** [Keywords by language, page-keyword map, URL pattern, local business data, structured data plan]
**Documented in:** content-language.md (SEO Strategy section)
**Key insights:** [SEO strategy decisions, keyword priorities, local SEO status]
**Status:** Complete
**Timestamp:** [HH:MM]
```

## Next Step

<action>After completing this step, load and execute: `step-17a-content-structure.md`</action>

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-personality.md', 'step-03-tone.md', 'step-04-languages.md', 'step-05-seo-keywords.md']
keywords_captured: true
seo_strategy_complete: true
```
