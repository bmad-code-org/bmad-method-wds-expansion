# Step 6: Identify Target Users

## Purpose

Help user define their ideal customer profile.

## Context for Agent

You are identifying who the product is for and what their needs are. This information will guide all design decisions.

## Key Elements

This step identifies who we're designing for and what their needs are.

## Instructions

Guide user to describe their ideal users in detail. Ask about their role, demographics, daily experience, frustrations, goals, and current solutions. Also identify any secondary users or stakeholders.


## Agent Dialog Update

**Mandatory:** Update `dialog/03-users.md` before marking this step complete.

**Fill in:**
- Opening question about users + user's initial response
- Key exchanges exploring who they are, frustrations, goals, current solutions
- User scenarios captured
- Reflection checkpoint (synthesis + user confirmation/correction)
- Primary user definition + secondary users (if applicable)

**Then:** Mark Step 7 complete in `dialog/progress-tracker.md` progress tracker

## Next Step

After identifying target users, proceed to step-08-success-criteria.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted:
  [
    'step-01-init.md',
    'step-02-vision.md',
    'step-03-positioning.md',
    'step-04-business-model.md',
    'step-05-business-model.md',
    'step-06-business-customers.md',
    'step-07-target-users.md',
  ]
ideal_user_profile: '[captured user profile]'
secondary_users: '[captured secondary users]'
```
