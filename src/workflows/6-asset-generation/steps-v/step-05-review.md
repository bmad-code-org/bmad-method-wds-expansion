# Step 05: Review and Iterate

**Goal:** Review all motion content for consistency, performance, and user experience quality.

---

## Actions

### 1. Preview All Motion

For each motion asset, show:
- The animation/video in isolation
- The animation in page context (placed in layout)
- Before/after: static vs. animated version

### 2. Motion Consistency

Across the full set, verify:
- [ ] Timing feels consistent (nothing jarringly faster or slower)
- [ ] Easing curves match (same springy or smooth feel)
- [ ] Motion direction is logical (follows reading direction, hierarchy)
- [ ] No competing animations (two things moving simultaneously fighting for attention)
- [ ] Loop transitions are seamless (for looping content)

### 3. Performance Check

For each asset:
- [ ] File size within target
- [ ] No excessive frame count or complexity
- [ ] CSS animations use GPU-accelerated properties (transform, opacity)
- [ ] Videos are properly compressed
- [ ] Lazy loading strategy for below-fold motion

### 4. Accessibility Check

- [ ] Motion respects `prefers-reduced-motion` media query
- [ ] No flashing content (< 3 flashes per second)
- [ ] Motion doesn't interfere with content readability
- [ ] Video has pause/stop controls
- [ ] Alternative static content for motion-sensitive users

### 5. User Review

```
[A] Approve all           — Save complete motion set
[R] Regenerate [asset]    — Redo specific motion assets
[T] Timing adjust         — Speed up or slow down globally
[E] Easing adjust         — Change motion curve
[C] Context preview       — Full page preview with all motion
[P] Performance report    — Show file sizes and load impact
```

### 6. Iterate

For assets needing changes:
- Adjust timing, easing, or content
- Regenerate or re-code
- Re-preview in context

### 7. Save Approved Set

Save to `{output_folder}/E-Assets/motion/`:
- `css/` — CSS animation code files
- `svg/` — Animated SVG files
- `lottie/` — Lottie JSON files
- `video/` — MP4/WebM files
- `motion-set-summary.md` — catalog with specs and usage

### 8. Update Design Log

Record:
- Motion assets created: [count]
- Types: [breakdown by complexity]
- Motion personality: [selected]
- Performance: [total added weight]
- Accessibility: [prefers-reduced-motion coverage]

---

**Complete.** → [M] Return to Activity Menu
