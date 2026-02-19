# Step 3: Tone of Voice

## Purpose

Define the specific tone of voice that expresses the brand personality.

## Context for Agent

Tone of voice is HOW the personality is expressed in words. It's more specific than personality — it guides actual word choices and sentence structures.

## Instructions

1. **Explain the tone spectrum**

   Tone exists on spectrums. Ask the user to position the brand:

   | Spectrum | Left | Right |
   |----------|------|-------|
   | Formality | Formal | Casual |
   | Mood | Serious | Playful |
   | Complexity | Technical | Simple |
   | Energy | Reserved | Enthusiastic |

2. **For each spectrum, get position and example**

   Ask: "On a scale of 1-5, where 1 is [left] and 5 is [right], where does [business] sit?"

   Then: "Can you give me an example of how that sounds?"

3. **Create "We Say / We Don't Say" examples**

   Based on the tone, generate contrasting examples:

   | Context | We Say | We Don't Say |
   |---------|--------|--------------|
   | Greeting | "Hi, how can we help?" | "Dear valued customer..." |
   | Problem | "Something went wrong" | "Error 503: Service unavailable" |
   | Success | "All done!" | "Your request has been processed" |

4. **Validate with the user**

   Present examples and ask:
   - "Does this sound like [business name]?"
   - "Would [target user] respond well to this?"

5. **Document in output**
   - Fill in Tone of Voice section
   - Include spectrum positions with examples
   - Add We Say / We Don't Say lists

## Example for Local Mechanic

```
Tone: Professional but approachable

| Dimension | Position (1-5) | Example |
|-----------|----------------|---------|
| Formal ↔ Casual | 3 | "Give us a call" not "Contact our service department" |
| Serious ↔ Playful | 2 | Friendly but not jokey |
| Technical ↔ Simple | 4 | Plain language, explain jargon |
| Reserved ↔ Enthusiastic | 3 | Warm, not over-the-top |

We say:
- "Give us a call"
- "We'll take a look"
- "Here's what we found"

We don't say:
- "Submit your inquiry"
- "Vehicle diagnostic assessment"
- "Per our evaluation..."
```

## Agent Dialog Update

After completing this step, update the agent dialog:

```markdown
### Step 3: Tone of Voice
**Q:** Positioned brand on tone spectrums (formality, mood, complexity, energy)
**A:** [Spectrum positions - e.g., "3/5 formality, 2/5 playful"]
**Documented in:** content-language.md (Tone of Voice section)
**Key insights:** [Key tone characteristics, We Say/Don't Say examples]
**Status:** Complete
**Timestamp:** [HH:MM]
```

## Next Step

After completing tone, proceed to step-16-languages.md

## State Update

Update frontmatter of output file:

```yaml
stepsCompleted: ['step-01-init.md', 'step-02-personality.md', 'step-03-tone.md']
primary_tone: '[description]'
```
