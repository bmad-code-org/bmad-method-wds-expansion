# Step 04: Generate Motion Content

**Goal:** Generate video and motion assets using appropriate tools per complexity level.

---

## Actions

### 1. Route by Complexity

**Simple (CSS/SVG):**
- Generate CSS keyframe animations
- Create SVG with SMIL animation or CSS animation
- Output as code snippets ready for implementation

**Medium (Lottie):**
- Describe animation in detail for After Effects / Lottie creation
- Generate Lottie JSON if MCP supports it
- Export animation specification document

**Complex (video production):**
- Storyboard the sequence
- Generate shot list
- Produce via AI video generation or guide user to production

**AI Generated:**
- Craft video generation prompts
- Include reference frames (from approved static images)
- Define duration, aspect ratio, movement direction

### 2. Build Prompts (AI Generated)

```
Generate a [duration] video: [description]

Subject: [what's shown]
Movement: [camera movement or subject movement]
Mood: [emotional tone matching motion personality]
Style: [video treatment keywords]
Color: [brand-harmonized palette]
Dimensions: [width]×[height]
FPS: [24/30/60]
Loop: [yes/no — seamless loop for backgrounds]

[Reference frame: attached — this is the starting or key frame]
```

### 3. Select Service

```
For AI video generation:
[G] Generate via MCP  — Direct generation
[E] Export prompts     — For external video service

For CSS/SVG motion:
[C] Generate code     — Output animation code directly
[S] Spec document     — Motion specification for developer
```

### 4. Generate and Preview

For each motion asset:
1. Generate/create the asset
2. Preview in context (how it looks on the page)
3. Check timing and feel
4. Iterate if needed

### 5. Track Progress

```
Motion Content Progress:

Simple CSS/SVG [4/6]:
  ✓ Hover transitions — code ready
  ✓ Loading spinner — SVG animated
  ✓ Menu transition — CSS ready
  ✓ Scroll reveal — CSS ready
  → Card hover — generating...
  ○ Focus ring — pending

AI Generated [0/3]:
  ○ Hero background loop — pending
  ○ About page ambient — pending
  ○ Product showcase — pending

[4/12 complete]
```

---

**Next:** → step-05-review.md
