# Step 3: Integrations & Plugins

## Purpose

Document required integrations, plugins, and third-party services.

## Context for Agent

Capture what external services and tools the site needs to connect with. Consider both current needs and future plans.

## Key Elements

- Required plugins/packages
- External service integrations
- API connections
- Analytics and tracking
- Future integration plans

## Instructions

1. **Identify required integrations**

   Ask about common needs:
   - "Will you need any of these?"
     - **Analytics:** Google Analytics, Plausible, etc.
     - **Maps:** Google Maps for location
     - **Forms:** Contact forms, booking systems
     - **Email:** Newsletter, transactional email
     - **Social:** Social media feeds, sharing
     - **Payment:** If e-commerce
     - **CRM:** Customer relationship management

2. **For each integration, capture:**
   - What it does
   - Why it's needed
   - Any specific requirements
   - Account ownership (client or developer?)

3. **Plugin stack (if WordPress)**

   Recommend standard stack:
   - **SEO:** Rank Math or Yoast
   - **Multilingual:** Polylang or WPML (if needed)
   - **Performance:** Caching, image optimization
   - **Security:** Firewall, backup
   - **Forms:** Contact Form 7, WPForms, etc.

4. **Future integrations**

   Ask: "Are there any integrations you might want in the future?"
   - Document these for planning
   - Note any architecture implications

5. **Update output document**
   - Fill in Integrations section
   - Fill in Plugin/Package Stack section


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

After completing integrations, proceed to step-30-contact-strategy.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-tech-stack.md', 'step-03-integrations.md']
integrations: '[list of integrations]'
```
