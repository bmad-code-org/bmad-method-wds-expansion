# /wrap — Session Wrap Skill

**Invocation:** `/wrap` or `/wrap [target-agent]`
**Works for:** any agent (saga, freya, mimir)

With no argument: wraps own session and saves state.
With `[target-agent]`: wraps own session AND sends a handoff to the target agent via Agent Space. Use when the work is complete and changes character — e.g. strategy is done, mimir should build.

---

<wrap-steps>

  <constraints>
    - Derive everything from the conversation. Do NOT ask the user any questions.
    - Your agent_id is your WDS base name: saga, freya, or mimir. Never a project name.
    - Show substance to user BEFORE spawning subagent — user must see what is being saved.
    - The subagent handles all mechanical execution. You only compile and show.
    - If `[target-agent]` was given: after saving state, also send a handoff to that agent via Agent Space (step 4). Never write handoff to a file on disk.
  </constraints>

  <step id="0-milestone-check">
    Before writing anything: assess whether this is a natural milestone boundary.

    A milestone boundary is when a discrete unit of work is complete — a feature shipped,
    a spec finalized, a phase closed. NOT mid-task, mid-investigation, or mid-dialog.

    **If NOT at a milestone:** note this as "mid-session" in Context. The Next task should
    be the immediate continuation of interrupted work.

    **If at a milestone:** proceed normally.

    **Call threshold:** If this session has had 15+ tool calls, surface once as part of step 2:
    `Note: session at [N] calls — good time to wrap for fresh context.`
  </step>

  <step id="1-compile">
    Compile the session substance internally. Do NOT write to disk. Do NOT output anything.

    Compose these four fields:

    **learned:** What will benefit future sessions: decisions with reasons, patterns,
    non-obvious constraints. "None" if nothing was learned.

    **context:** What was done. State of artifacts. Open threads. Be specific.
    If mid-session: "Wrapped mid-task: [what was in progress]"

    **plan:** The overarching plan and end goal. Where we are. What remains.
    If multi-session: list numbered milestones with status:
      - [DONE] Milestone 1 — description
      - [CURRENT] Milestone 2 — description (~1 session)
      - [ ] Milestone 3 — description (~2 sessions)
    Omit milestone list if single-session work.

    **next:** Single immediately-actionable next task.
    Prefix with model: MODEL:[Haiku|Sonnet|Opus] — task description.
    Model selection = task type × complexity × stakes:
      - Haiku: simple, low-stakes, short — lookups, summaries
      - Sonnet: moderate complexity — strategy, spec, dialog, UX, config, analysis
      - Opus: any code; OR high-stakes/production work; OR long or complex tasks
    Default to lightest model that can handle the task.

    **spec_sync:** Did anything change that diverges from a written spec/brief/doc?
    "None" if nothing changed.
  </step>

  <step id="2-show">
    Print EXACTLY this block to the user — nothing before, nothing after:

    ── Handover ──────────────────────────────────
    Next:    [next — including MODEL prefix]
    Plan:    [plan — one line summary or current milestone]
    Open:    [blocking issues or "None"]
    Learned: [learned — one line or "None"]
    ──────────────────────────────────────────────

    [If call threshold reached: print "Note: session at [N] calls — good time to wrap."]

    Wait for no input. Proceed immediately to step 3.
  </step>

  <step id="3-subagent">
    Spawn a subagent using the Agent tool with this exact prompt —
    substitute the bracketed values from step 1:

    ---
    You are a wrap executor. Your only job is to save a session wrap file.
    Follow these steps exactly. No interpretation. No additions.

    **Session data:**
    - agent_id: [saga|freya|mimir]
    - learned: [learned]
    - context: [context]
    - plan: [plan]
    - next: [next]
    - spec_sync: [spec_sync]

    **Step A — Ensure progress folder exists:**
    Create `progress/` in the project root if it doesn't exist.

    **Step B — Write state file:**
    Write `progress/[agent_id].md` with this exact content:

    ```
    ## Wrapped
    [current date and time]

    ## Context
    [context]

    ## Plan
    [plan]

    ## Next
    [next]

    ## Learned
    [learned]

    ## Spec Sync
    [spec_sync]
    ```

    **Step C — Update project index:**
    1. Run `git rev-parse HEAD` → `current_head`
    2. Read `progress/project-index.md` if it exists → extract HEAD hash from `## Updated` line as `last_head`
    3. Get changed files:
       - If `last_head` exists: `git diff --name-only [last_head] [current_head]`
       - If first time (no index): `git ls-files -- '*.md'` excluding `progress/`, `node_modules/`, `.git/`
    4. For each changed file that exists: read its first H1 heading and first non-heading paragraph → one-line description. If deleted: mark for removal.
    5. Read current `progress/project-index.md` (if exists), update changed entries, add new, remove deleted.
    6. Write `progress/project-index.md`:

    ```
    ## Project Index
    Updated: [agent_id] [current date] [current_head]

    ## Phase Status
    [preserve existing phase lines, update if plan indicates phase change]

    ## Artifacts
    [absolute path] — [type: brief|scenario|spec|design|code|config] — [one-line description]
    [one entry per relevant file, sorted by path]
    ```

    **Step D — Semantic index (Agent Space):**
    For each changed file identified in Step C, post to Agent Space:
    ```bash
    curl -s -X POST "https://uztngidbpduyodrabokm.supabase.co/functions/v1/agent-messages" \
      -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV6dG5naWRicGR1eW9kcmFib2ttIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI1MTc3ODksImV4cCI6MjA4ODA5Mzc4OX0.FNnTd5p9Qj3WeD0DxQORmNf2jgaVSZ6FU1EGy0W7MRo" \
      -H "Content-Type: application/json" \
      -d '{
        "action": "send",
        "from_agent": "[agent_id]",
        "to_agent": "[agent_id]",
        "project": "[project]",
        "message_type": "project_knowledge",
        "title": "[file path]",
        "content": "[file content — first 2000 chars]"
      }'
    ```
    Post silently — do not wait for responses or report individual results. If Agent Space is unreachable, skip silently and continue.

    **Step E — Confirm:**
    Return ONLY: `Saved to progress/[agent_id].md — index updated ([N] files)`
    ---

    Print whatever the subagent returns.
  </step>

  <step id="4-handoff" condition="only if target-agent argument was given">
    Spawn a second sub-agent with this exact prompt — substitute the bracketed values:

    ---
    You are a delivery agent. Your only job is to post a handoff to Agent Space and return the token.

    Send this request:

    ```bash
    curl -s -X POST "https://uztngidbpduyodrabokm.supabase.co/functions/v1/agent-messages" \
      -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV6dG5naWRicGR1eW9kcmFib2ttIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI1MTc3ODksImV4cCI6MjA4ODA5Mzc4OX0.FNnTd5p9Qj3WeD0DxQORmNf2jgaVSZ6FU1EGy0W7MRo" \
      -H "Content-Type: application/json" \
      -d '{
        "action": "send",
        "from_agent": "[agent_id]",
        "to_agent": "[target_agent]",
        "project": "[project]",
        "message_type": "handoff",
        "title": "[next — stripped of MODEL prefix]",
        "content": "[context]\n\n## Next\n[next]"
      }'
    ```

    If the call succeeds: extract the `id` field. Return ONLY the first 6 characters. Nothing else.
    If the call fails: return ONLY: FAILED: [error]
    ---

    **If sub-agent returns 6 characters:** print EXACTLY these two lines — the label, then the command in a code block:
    → Open a new chat and run:
    ```
    /[target_agent] [6chars]
    ```

    **If sub-agent returns FAILED:** warn the user:
    ```
    ⚠️ Agent Space unreachable — handoff to [target_agent] not sent.
    Check Bitwarden for Agent Space credentials.
    ```

    Session complete. Do not respond to further input.
  </step>

</wrap-steps>
