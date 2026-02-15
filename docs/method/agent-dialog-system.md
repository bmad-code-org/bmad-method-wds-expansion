# Agent Dialog System for Context Management

Task-isolated dialog system that prevents AI context degradation and enables seamless fresh starts.

---

## Overview

The Agent Dialog System is a fundamental WDS/BMad workflow pattern designed to solve the AI context window degradation problem while maintaining perfect continuity between sessions.

**Core Principle:** One focused dialog per meaningful task, with explicit handoff to fresh sessions.

**Scientific Foundation:** Research shows AI performance degrades at 60-90% context usage and rapidly declines at 90%+. This system works within optimal ranges (0-90%) by design.

**Reference Material:** See [ai-context-degradation-patterns.md](martens-documents/WDS/references/ai-context-degradation-patterns.md) for video research insights.

---

## The Problem This Solves

### Context Window Degradation

**Observable Pattern:**
- AI starts sharp and reliable
- Around message 15-20, subtle degradation begins
- By 60-90% context: Still capable but losing consistency
- At 90%+: Instructions fade, contradictions appear, facts disappear

**Why It Happens:**
- Every exchange adds information to context window
- As window fills, AI performance degrades
- Users become reluctant to restart (psychological barrier)
- Long monolith conversations result in poor quality

**Real Impact:**
- Lost context between sessions when users do restart
- Degraded output quality in long conversations
- Wasted effort when AI forgets earlier instructions
- User guilt about "killing" a helpful agent session

---

## The Solution: Task-Isolated Dialogs

### Design Pattern

**One Dialog File Per Meaningful Task**
- Each dialog = focused work on specific deliverable
- Dialog size: 15-30 exchanges (sweet spot: 20-25 messages)
- Work up to 80-90% context usage
- Fresh agent session per dialog

**Explicit Handoff Pattern**
- Agent completes task
- Agent signs off: "Great! Start me over with `/saga` and we'll tackle [next task]"
- User restarts without guilt (expected behavior)
- New agent reads completed dialog
- Perfect context transfer, zero degradation

**Why This Works:**
- Removes psychological barrier to restarts
- Fresh starts become natural workflow (not exceptional)
- Each session starts at ~0% context
- Never hits 90%+ rapid degradation zone
- All context preserved in dialog files

---

## Dialog Lifecycle

### Phase 1: Initial Work (0-60% context)

**Exchanges:** 15-20 messages
**AI State:** Fully effective, follows instructions reliably
**Activities:**
- Main task work
- Iterative refinement
- Building deliverables
- Exploration and decisions

### Phase 2: Feedback Gathering (60-85% context)

**Exchanges:** 3-5 messages
**AI State:** Degrading but still capable
**Activities:**
- Gather comprehensive feedback
- Understand errors and mistakes
- Clarify remaining requirements
- Identify what worked/didn't work

**Key Insight:** AI at 60-85% context can still effectively:
- Understand problems
- Gather feedback
- Process corrections
- Plan next steps

This range is USABLE, not wasted. Leverage it before restarting.

### Phase 3: Planning Handoff (85-90% context)

**Exchanges:** 2-3 messages
**AI State:** Still functional for planning
**Activities:**
- Summarize what was completed
- Identify next tasks
- Write task descriptions
- Prepare context for next session

### Phase 4: Sign Off (<90% context)

**AI Behavior:**
```
Perfect! [Task X] is complete. I've documented everything in [dialog-file.md].

Next up: [Task Y - brief description]

Start me over with /saga and we'll tackle that next.
```

**Result:**
- User restarts without hesitation
- No guilt (expected behavior)
- Clean break before degradation zone
- Next session has full context

---

## Dialog File Structure

### Required Components

Every dialog file MUST contain:

**1. Task Definition**
```markdown
### Task [N]: [Task Name] ([Date])

**Objective:** [Clear goal statement]

**Context:** [How this task emerged, prerequisites, etc.]
```

**2. What We Covered**
```markdown
**What Was Done/Designed:**
- Key deliverable 1
- Key deliverable 2
- Design decisions made
```

**3. Key Decisions**
```markdown
**Critical Insights:**
- Decision 1 + rationale
- Decision 2 + what was rejected and why
- Trade-offs considered
```

**4. Deliverables Created**
```markdown
**Files Created/Modified:**
- `path/to/file.md` - Description
- `path/to/another.md` - Description
```

**5. Context for Next Session**
```markdown
**Next Action:** [What should happen next]

**Status:** [complete | in_progress | blocked]

**Blockers:** [If any]
```

**6. Session Metadata**
```markdown
**Date:** 2026-02-14
**Agent:** [Agent name]
**Model:** [Claude version]
**Exchanges:** [Approximate count]
```

### Optional Components

**Errors and Learnings:**
```markdown
**Mistakes Made:**
- Error description
- User feedback
- How corrected
- What learned
```

**Reference Materials:**
```markdown
**Documents Referenced:**
- `path/to/spec.md` - Used for X
- External URL - Context provided
```

---

## Three-Tier Change Pattern

When building/testing reveals needed changes, categorize and handle appropriately:

### Tier 1: Visual Polish (Fix Immediately)

**Criteria:**
- Colors, spacing, shadows, fonts
- Re-enforcing existing spec when agent deviated
- No content/copy changes (copy = spec)
- No structural changes

**Action:** Fix immediately in current session
**Documentation:** Note in dialog as minor adjustment

**Examples:**
- "Button padding should be 12px not 8px"
- "Agent used 'Login' but spec says 'Sign In'" → Re-enforce spec
- "Shadow too harsh, soften it"

**NOT Tier 1:**
- Changing copy (even single words) → Tier 3
- Missing validation → Tier 2
- Structural changes → Tier 3

### Tier 2: Bugs/Gaps (Log for Next Session)

**Criteria:**
- Missing error states
- Validation not implemented
- Edge cases not handled
- Features partially complete

**Action:** Add to dialog substep file for next session
**Why:** These require focused work, benefit from fresh context

**Format:**
```markdown
## Substep: Fix Validation Issues

**Discovered During:** [Task X implementation]

**Issues to Address:**
1. Email validation missing on signup form
2. Error states not showing for network failures
3. Loading state missing on save button

**Files to Update:**
- `src/components/SignupForm.tsx`
- `src/components/SaveButton.tsx`
```

### Tier 3: Spec Changes (Update Spec + Create Substep)

**Criteria:**
- Copy/content changes
- Structural pivots
- Understanding shifts
- Feature additions/removals

**Action:**
1. Update specification immediately
2. Create substep for implementation

**Why:** In WDS, ALL copy lives in specifications. Changing copy = changing spec (source of truth).

**Examples:**
- "Change heading from 'Services' to 'What We Do'" → Update spec + substep
- "Add testimonials section" → Update spec + substep
- "Reorganize navigation structure" → Update spec + substep

**Critical Insight:** Specifications define EVERYTHING including exact copy. Maintaining single source of truth is non-negotiable.

---

## Development Feedback Loop

### The Reality

Building naturally reveals 5-10 spec changes:
- Copy that sounded good in planning feels wrong in context
- UI patterns that don't work in practice
- Edge cases not anticipated
- Better approaches discovered

**This is NORMAL and EXPECTED.**

### The Pattern

```
Build Feature (Dialog 1)
    ↓
Discover 5-10 gaps/changes
    ↓
Categorize (Tier 1/2/3)
    ↓
Tier 1: Fix immediately
Tier 2: Log to substep
Tier 3: Update spec + create substep
    ↓
Sign off, restart
    ↓
Rebuild with updates (Dialog 2)
    ↓
Fresh context, sharp AI
```

**Each Step = Fresh Dialog = Focused Context**

### Why This Works

**Without This Pattern:**
- Long session trying to fix everything
- Context window fills with problem-solving
- AI degrades during critical fixes
- Quality declines when you need it most

**With This Pattern:**
- Categorize changes quickly
- Update specs while understanding is fresh
- Fresh session for implementation
- AI sharp when writing new code

---

## Seamless Fresh-Start Pattern

### Agent Signing Off

**Template:**
````markdown
Perfect! [Task completed] is ready.

I've documented:
- [Key deliverable 1]
- [Key deliverable 2]
- [Decisions made and why]

Everything is captured in `[dialog-file-path]`.

**Ready to continue? Copy this snippet for your next session:**
```
/[agent-name]

Resume from: [absolute-path-to-dialog-file]
Next: [Brief task description]
```
````

**Key Elements:**
- Summarize what was completed
- Reference dialog file (reassures nothing lost)
- Provide copy-paste snippet with:
  - Agent command (e.g., `/saga`)
  - Absolute path to dialog file
  - Brief next task description
- User can click copy button → paste in new session → continue seamlessly

### User Restarting

**Action:** Simply runs `/saga` (or `/freya`, `/idunn`)

**Result:**
- Fresh agent session starts
- Agent reads completed dialog on activation
- Knows what was done
- Knows what's next
- Continues seamlessly

**No Questions Like:**
- "Where were we?"
- "What did we accomplish?"
- "Should I start over?"

**Psychology:** User has zero guilt because:
- Agent explicitly instructed restart
- Dialog file preserves all context
- This is expected workflow (not exceptional)
- Fresh start = better quality (understood benefit)

---

## Agent Behavior Patterns

### On Activation with Existing Dialog

**1. Read Dialog Files**
```markdown
Reading agent dialogs...

I see we've completed:
✓ Task 1: [Name] ([Date])
✓ Task 2: [Name] ([Date])
⏳ Task 3: [Name] - IN PROGRESS

Last work: [Brief description from Task 3]
```

**2. Offer to Continue**
```markdown
Should I:
1. Resume Task 3 where we left off
2. Review completed work
3. Start new task: [from dialog next-actions]
```

**3. Load Context**
Before continuing work, agent reads:
- `progress-tracker.md` - What's done
- `decisions.md` - Why choices were made
- Specific task dialog - Detailed context
- Related specs - Current state of truth

### On Activation without Dialog

**1. Detect Project State**
- Check for `.bmad/wds/` folder
- Read `config.yaml` and `project-outline.md`
- Scan for artifacts (A-Product-Brief/, B-Trigger-Map/, etc.)

**2. Offer Starting Point**
```markdown
I don't see any open dialogs. Let's start fresh.

Current project state:
- Phase 1: Product Brief [✓ complete / ○ not started]
- Phase 2: Trigger Map [status]
- ...

Ready to begin [next logical phase]?
```

### During Work (Context Management)

**Track Message Count Mentally:**
- 0-15 exchanges: Full steam ahead
- 15-20 exchanges: Primary work complete, gather feedback
- 20-25 exchanges: Wrap up, plan next steps
- 25+ exchanges: Sign off and restart (don't exceed)

**If User Keeps Pushing After Sign-Off:**
```markdown
I've signed off because we're at [N] exchanges and I want to stay sharp for your next task.

I can continue if needed, but quality will start degrading soon.

Should we restart with /[agent] to tackle [next task] with fresh context?
```

---

## Integration with WDS Workflows

### Phase-Specific Dialog Patterns

**Phase 1-2: Product Brief + Trigger Map (Saga)**
- Dialog per major step (Vision, Users, Positioning, etc.)
- Natural conversation capture
- Synthesis quality tracking
- 20-25 exchanges per major concept

**Phase 3-4: Scenarios + Design (Freya)**
- Dialog per scenario created
- Dialog per design iteration
- Screen flow walkthroughs
- Visual refinement sessions

**Phase 5-6: Platform Req + Design System (Idunn)**
- Dialog per technical decision
- Dialog per component created
- API design sessions
- Integration planning

### Multi-Session Projects

**Long-Running Projects (Weeks/Months):**
- Each session = focused dialog
- Dialogs accumulate in `agent-dialogs/` folder
- Progress tracker shows breadcrumb trail
- Easy to resume after weeks away

**Handoff to Other People:**
- Dialog files = perfect documentation
- See actual conversations (not just artifacts)
- Understand why decisions were made
- Continue work informed by context

---

## Context Window Thresholds

### Scientific Basis

| Context Usage | AI Performance | Behavior |
|---------------|---------------|----------|
| 0-60% | Fully effective | Follows instructions reliably |
| 60-90% | Degrading but capable | Can gather feedback, understand errors, plan next steps |
| 90-95% | Rapid degradation | Instructions fade, contradictions appear |
| 95%+ | Unreliable | Hallucinations, lost context, poor quality |

### Dialog Size Guidelines

**Optimal:** 20-25 exchanges
- Uses 80-90% of effective range
- Room for feedback gathering
- Time for planning handoff
- Never hits degradation zone

**Too Small:** <15 exchanges
- Overhead too high (restart costs ~2 min)
- Not enough continuity
- Feels fragmented

**Too Large:** >30 exchanges
- Degradation zone risk
- Quality declines
- Context window stress
- Lost instruction adherence

### Model-Specific Considerations

**Claude (200k tokens):**
- Current dialog pattern optimal
- Room for large file reads
- Multiple iterations possible

**ChatGPT (60k tokens):**
- Reduce dialog size to 15-20 exchanges
- More aggressive restarts
- Smaller file attachments

**Gemini (1M tokens):**
- Could extend to 30-40 exchanges
- But diminishing returns (degradation still happens)
- Better to maintain discipline

---

## File Naming Conventions

### Dialog Files

**Format:** `YYYY-MM-DD-task-description.md`

**Examples:**
- `2026-02-10-product-brief-vision.md`
- `2026-02-12-trigger-map-creation.md`
- `2026-02-14-scenario-onboarding-flow.md`

**Why Date Prefix:**
- Chronological sorting
- Clear timeline
- Easy to find recent work

### Progress Files

**In `.bmad/wds/agent-dialogs/`:**
```
agent-dialogs/
├── progress-tracker.md       ← Checklist of all tasks
├── decisions.md              ← Append-only decision log
├── 2026-02-10-task-1.md     ← Individual dialog files
├── 2026-02-11-task-2.md
└── 2026-02-14-task-3.md
```

**Progress Tracker Format:**
```markdown
# Agent Dialog Progress Tracker

## CURRENT PLAN
- ✅ Task 1: [Name]
- ✅ Task 2: [Name]
- ⏳ Task 3: [Name] - IN PROGRESS
- ⬜ Task 4: [Name]

## CURRENT WORK
[Detailed description of active task]

## UPCOMING WORK
[Planned tasks with brief descriptions]

## COMPLETED WORK
[Reverse chronological task history]
```

---

## Benefits Summary

### For Users

**No More Context Anxiety:**
- Restart freely without losing work
- Every session starts sharp
- Consistent quality throughout project

**Perfect Continuity:**
- Dialog files carry all context
- Return after weeks and pick up seamlessly
- Share work with others (full context included)

**Transparent Progress:**
- See exactly what was done
- Understand why decisions were made
- Audit trail of all work

### For Agents

**Optimal Performance:**
- Always working in effective context range
- Never degraded when quality matters
- Sharp for critical decisions

**Clear Expectations:**
- Know when to sign off
- Explicit handoff pattern
- No ambiguity about session boundaries

**Context Preservation:**
- Dialog files = perfect memory
- No information loss between sessions
- Build on previous work effectively

### For Projects

**Higher Quality Output:**
- AI sharp when it matters
- Fewer mistakes from degradation
- Better decisions with clear thinking

**Faster Completion:**
- Less rework from degraded output
- Efficient context switching
- Parallel work possible (multiple agents)

**Better Documentation:**
- Conversations captured naturally
- Decisions documented with rationale
- Handoff-ready for team members

---

## Anti-Patterns to Avoid

### ❌ The Monolith Conversation

**Problem:** One 100-message conversation spanning multiple tasks
**Result:** Severe degradation, poor quality, lost instructions
**Fix:** Break into task-isolated dialogs

### ❌ Restart Without Documentation

**Problem:** Start fresh without capturing context
**Result:** Lost decisions, repeated questions, wasted work
**Fix:** Always document in dialog file before signing off

### ❌ Continuing After Sign-Off

**Problem:** Agent signs off but user pushes for "just one more thing"
**Result:** Work in degradation zone, poor quality
**Fix:** Honor the sign-off, restart fresh

### ❌ Skipping Categorization

**Problem:** Mix Tier 1/2/3 changes without categorizing
**Result:** Specs out of sync, unclear next steps
**Fix:** Always categorize (30 seconds saves hours later)

### ❌ Guilt-Based Continuation

**Problem:** "I don't want to restart, agent has been so helpful"
**Result:** Degraded quality, wasted effort
**Fix:** Understand fresh start = better help

---

## Implementation Checklist

### For Agent Developers

- [ ] Update agent activation to read dialog files
- [ ] Implement sign-off template in workflow
- [ ] Add context usage tracking (if possible)
- [ ] Create dialog file templates
- [ ] Document expected exchange counts per task type

### For Projects

- [ ] Create `agent-dialogs/` folder structure
- [ ] Initialize `progress-tracker.md`
- [ ] Initialize `decisions.md`
- [ ] Set up dialog file naming convention
- [ ] Train team on three-tier change pattern

### For Users

- [ ] Understand optimal dialog size (20-25 exchanges)
- [ ] Trust the sign-off (restart guilt-free)
- [ ] Categorize changes using Tier 1/2/3 system
- [ ] Update specs before creating implementation substeps
- [ ] Reference dialog files when resuming work

---

## Success Metrics

### Quantitative

- **Dialog Size:** 80%+ of dialogs between 15-30 exchanges
- **Restart Compliance:** 90%+ of sessions end with explicit sign-off
- **Context Capture:** 100% of dialogs include required components
- **Spec Sync:** 0 implementation substeps without corresponding spec updates

### Qualitative

- **User Comfort:** Users restart without hesitation or guilt
- **Agent Performance:** Consistent quality throughout project
- **Continuity:** Seamless pickup after days/weeks away
- **Clarity:** Team members can understand project history from dialogs

---

## Future Enhancements

### Potential Improvements

**Automated Context Tracking:**
- Tool to estimate % context usage
- Warnings at 80%, 85%, 90%
- Automatic sign-off triggers

**Dialog Templates by Phase:**
- Phase-specific required fields
- Auto-generated next steps
- Integration with progress tracking

**Multi-Agent Coordination:**
- Dialog handoffs between agents (Saga → Freya → Idunn)
- Shared decision log
- Cross-reference capabilities

**Analytics:**
- Dialog size distribution
- Restart patterns
- Degradation correlation studies
- Quality metrics by context usage

---

## Conclusion

The Agent Dialog System transforms AI context window limitations from a problem into a structured workflow advantage.

**Core Insight:** Fighting context degradation is futile. Instead, design workflows that work WITH context limits, creating natural breakpoints that improve quality.

**Key Innovation:** Removing psychological barrier to restarts through explicit agent sign-off pattern. Fresh starts become expected behavior, not exceptional.

**Result:** Consistent AI performance, perfect continuity, higher quality output, and sustainable long-term projects.
