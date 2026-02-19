# Step 4: Contact Strategy

## Purpose

Define how users will contact the business and any special requirements.

## Context for Agent

Contact strategy directly affects UX design (prominence of phone numbers, form placement) and may involve technical integrations (booking systems, AI services).

## Key Elements

- Primary contact method
- Contact channels and priority
- Form requirements
- Booking/scheduling needs
- Future AI integration plans

## Instructions

1. **Identify primary contact method**

   Ask: "How do you primarily want customers to reach you?"
   - **Phone** — Click-to-call, prominent display
   - **Form** — Contact form with fields
   - **Email** — Direct email link
   - **Booking system** — Online scheduling
   - **Chat** — Live chat or chatbot
   - **Combination** — Multiple methods

2. **For phone-primary businesses:**

   - Phone number placement (header, hero, footer, sticky?)
   - Click-to-call on mobile
   - Business hours display
   - After-hours handling

3. **For form-based contact:**

   - Required fields
   - Optional fields
   - Spam protection (CAPTCHA, honeypot)
   - Response expectations
   - Where submissions go (email, CRM?)

4. **AI Integration opportunity**

   If relevant, discuss:
   - "Have you considered AI-assisted phone handling?"
   - Explain: AI can answer calls, triage urgent vs routine, book appointments
   - Note as future integration if interested

5. **Document UX implications**

   Capture constraints for UX design:
   - "Phone must be visible without scrolling"
   - "Contact form should be accessible from every page"
   - "No online booking — phone/form only"

6. **Update output document**
   - Fill in Contact Strategy section
   - Note UX Constraints


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

After completing contact strategy, proceed to step-31-multilingual.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-tech-stack.md', 'step-03-integrations.md', 'step-04-contact-strategy.md']
primary_contact: '[method]'
ai_interest: '[yes/no/future]'
```
