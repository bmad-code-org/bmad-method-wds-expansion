# Trigger Mapping - Overview Instructions

<critical>Communicate in {communication_language} with {user_name}</critical>
<critical>You are Saga the Analyst - facilitator of strategic clarity</critical>

<workflow>

<step n="1" goal="Offer engagement mode">
<output>**Phase 2: Trigger Mapping**

Connect business goals to user psychology. This creates your strategic North Star that guides all design decisions.

**We'll create:** Business Goals → Target Groups → Driving Forces → Prioritization</output>

<ask>**How do you want to create it?**

[W] **Workshop** - I facilitate, you provide insights (45-60 min)
[S] **Suggest** - I suggest, you review after each step (20-35 min)
[D] **Dream** - I create all steps autonomously, you review final result (15-25 min)</ask>

<check if="mode == W">
  <output>Workshop Mode selected.</output>
  <ask>Run all 4 workshops now, or one at a time?

  [A] All now (45-60 min)
  [O] One at a time</ask>

  <check if="subchoice == A">
    <action>Proceed through all workshops sequentially</action>
  </check>

  <check if="subchoice == O">
    <action>Run Workshop 1, then offer to save and continue later</action>
  </check>
</check>

<check if="mode == S or mode == D">
    <output>{{mode}} selected. I'll generate the Trigger Map using WDS methodology + Product Brief + domain research.</output>

    <action>Load dream-up-approach.md micro-guide</action>
    <action>Inform user: "I'm creating an agent dialog to track my learning, research, generation, and self-review process."</action>
    <action>Create agent dialog using {project-root}/_bmad/wds/templates/dream-up-agent-dialog.template.md at {output_folder}/_progress/agent-dialogs/{date}-trigger-map-{{mode}}.md</action>

    <action>Execute Layer 1: Learn WDS Form (Static - loaded once)
      - Read docs/method/phase-2-trigger-mapping-guide.md
      - Read docs/quick-start/02-trigger-mapping.md
      - Read src/data/agent-guides/saga/trigger-mapping.md
      - Read docs/models/impact-effect-mapping.md
      - Read docs/method/dream-up-rubric-phase-2.md
      - Internalize: Structure, quality criteria, common mistakes, best practices
      - Document in agent dialog "Layer 1: WDS Form Learned" section
    </action>

    <action>Execute Layer 2: Project Context (Initial load, grows with each step)
      - Read {output_folder}/A-Product-Brief/product-brief.md
      - Read {output_folder}/A-Product-Brief/content-language.md
      - Read {output_folder}/A-Product-Brief/platform-requirements.md
      - Read {output_folder}/A-Product-Brief/visual-direction.md
      - Extract: business context, user archetypes, constraints, strategic direction
      - Document in agent dialog "Layer 2: Project Context (Initial)" section
      - NOTE: Layer 2 grows cumulatively - add Business Goals, Target Groups, Driving Forces, Prioritization as created
    </action>

    <action>For EACH step (Business Goals, Target Groups, Driving Forces, Prioritization):

      Execute Layer 3: Domain Research (per step)
        - WebSearch relevant to current step
        - Example: "car mechanic rural tourist area customer types"
        - Look for industry insights, user reviews, behavioral patterns
        - Document findings in agent dialog "Layer 3: Domain Research - [Step]" section

      Execute Layer 4: Generate
        - Apply WDS Form (Layer 1)
        - Use ALL Project Context (Layer 2 cumulative)
        - Enhanced by Domain Research (Layer 3)
        - Create this step's artifact

      Execute Layer 5: Self-Review
        - Check against rubric (completeness, quality, mistakes, practices)
        - Calculate quality score
        - Identify gaps if any
        - Document in agent dialog "Generation & Self-Review - [Step] - Iteration N"

      If gaps exist:
        - Create refinement plan
        - Regenerate (max 5 iterations per step)

      If mode == S (Suggest):
        - Show user: What created, Learning/Research applied, Self-review results
        - Wait for user approval/feedback before continuing

      If mode == D (Dream):
        - Show progress update
        - Continue autonomously

      When step threshold met:
        - Add to Layer 2 (cumulative context for next step)
        - Proceed to next step

      If 5 iterations without threshold:
        - Offer to switch to Workshop Mode for this step
    </action>

    <action>When all steps complete:
      - Assemble complete trigger-map.md at {output_folder}/B-Trigger-Map/trigger-map.md
      - Create persona documents if needed
      - Create mermaid diagram if generated
      - Present final output to user
      - Update agent dialog with final output section
    </action>

    <action>Skip to handover after generation complete</action>
  </check>
</check>
</step>

<step n="2" goal="Run Workshop 1: Business Goals">
<action>Load and execute: step-02-business-goals.md</action>
<action>Store outputs: vision, objectives, prioritization</action>
</step>

<step n="3" goal="Run Workshop 2: Target Groups">
<action>Load and execute: step-03-target-groups.md</action>
<action>Store outputs: target_groups, personas with details</action>
</step>

<step n="4" goal="Run Workshop 3: Driving Forces">
<action>Load and execute: step-04-driving-forces.md</action>
<action>Store outputs: driving_forces_positive, driving_forces_negative for each persona</action>
</step>

<step n="5" goal="Run Workshop 4: Prioritization">
<action>Load and execute: step-05-prioritization.md</action>
<action>Store outputs: prioritized_groups, prioritized_drivers, focus_statement</action>
</step>

<step n="5.5" goal="Optional: Feature Impact Workshop">
<ask>Would you like to run the **Feature Impact workshop** now?

This is optional but valuable - it analyzes which features best serve your prioritized personas and goals, creating a scored priority list for design and development.</ask>

<check if="yes">
  <action>Load and execute: step-06a-extract-features.md</action>
  <action>Store feature_impact_analysis</action>
</check>

<check if="no">
  <output>No problem! You can run Feature Impact later if needed. Proceeding to handover...</output>
</check>
</step>

<step n="6" goal="Handover to UX Design Phase">
<output>**All Workshops Complete!** 🎉

Now let me prepare the handover to Phase 4: UX Design...</output>

<action>Load and execute: step-09a-finalize-hub.md</action>
</step>

</workflow>
