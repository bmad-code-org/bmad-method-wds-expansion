# Step 2: Brand Personality

## Purpose

Capture the brand's personality attributes that will inform tone of voice.

## Context for Agent

Brand personality is the human characteristics attributed to the brand. This step translates business attributes into personality traits.

## Instructions

1. **Explore personality through questions**

   Ask: "If [business name] were a person, how would you describe them?"

   Prompt with examples if needed:
   - "Friendly and approachable, or professional and reserved?"
   - "Innovative and cutting-edge, or reliable and traditional?"
   - "Playful and fun, or serious and focused?"

2. **Identify 3-5 personality attributes**

   Guide the user to articulate specific traits:

   | Common Attributes | Description |
   |-------------------|-------------|
   | **Trustworthy** | Reliable, honest, dependable |
   | **Expert** | Knowledgeable, skilled, authoritative |
   | **Friendly** | Approachable, warm, welcoming |
   | **Professional** | Competent, efficient, polished |
   | **Local** | Community-focused, personal, familiar |
   | **Innovative** | Modern, forward-thinking, cutting-edge |
   | **Straightforward** | Direct, honest, no-nonsense |
   | **Helpful** | Supportive, service-oriented, accommodating |

3. **For each attribute, capture:**
   - The attribute name
   - What it means for this business
   - How it's expressed in communication

4. **Reference the target user**
   - "How should [target user] feel when they interact with the brand?"
   - Connect personality to user expectations

5. **Document in output**
   - Fill in Brand Personality section
   - Create personality summary paragraph

## Example Output

For a local mechanic:
```
| Attribute | Description | Expression |
|-----------|-------------|------------|
| **Trustworthy** | 20+ years of reliable service | "We stand behind our work" |
| **Straightforward** | Honest about what's needed | No upselling, clear explanations |
| **Local** | Part of the Öland community | Personal service, knows customers by name |
```

## Agent Dialog Update

After completing this step, update the agent dialog:

```markdown
### Step 2: Brand Personality
**Q:** "If [business] were a person, how would you describe them?"
**A:** [Identified attributes - list them]
**Documented in:** content-language.md (Brand Personality section)
**Key insights:** [Key personality characteristics identified]
**Status:** Complete
**Timestamp:** [HH:MM]
```

## Next Step

After completing personality, proceed to step-15-tone.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-personality.md']
personality_attributes: '[list of attributes]'
```
