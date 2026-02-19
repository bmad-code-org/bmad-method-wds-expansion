Hey BMad!

We've been cleaning up the WDS module and landed on a clear boundary: **the PRD lives in BMM, and WDS produces design artifacts that the PRD references.** No duplication — the PM agent reads from WDS artifacts when planning.

We have two contact points:

1. **Platform Requirements** (early, Phase 1) — tech stack, integrations, constraints, multilingual. Basically half the PRD's technical foundation, ready before the PRD is even created. Lives at `A-Product-Brief/platform-requirements.md`.

2. **Design Deliveries** (late, Phase 6) — scenario specs, page specs, DD yaml packages. The design contract for development. Comes after the full WDS design process.

We read through the BMM PRD workflow (all 11 steps, nice work!) and have a few questions about how to connect these:

**Discovery** — Step 1 searches for `*brief*.md`, which catches our product brief. But `platform-requirements.md`, `trigger-map.md`, and `content-language.md` won't match. Should we add patterns for those?

**Placement** — Where do platform requirements land in the PRD? Background context the agent just uses? A dedicated "Technical Foundation" section? Or folded naturally into Steps 7/9/10?

**Timing** — Platform requirements are ready early, but design deliveries come from Phase 4 [H] Handover. Does the PRD support incremental updates as WDS phases complete?

**Reference format** — Simple file reference, summary + link to source, or inline content with attribution? We lean toward summary + reference.

**Module detection** — Should the PRD detect if WDS is installed and skip questions WDS already answered? Is that a pattern BMM supports?

Once we align, we'll propose the specific minimal changes needed on both sides. What do you think?
