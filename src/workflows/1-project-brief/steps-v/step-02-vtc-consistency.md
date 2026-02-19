# Validation Step 02: VTC Consistency

**Goal:** Verify the Value Trigger Chain(s) form a valid chain from business goals through personas to driving forces.

---

## Checks

### 1. Locate VTC Files

Check for:
- `{output_folder}/A-Product-Brief/vtc-primary.yaml` (Product Pitch VTC)
- Any scenario-level VTCs in `{output_folder}/C-UX-Scenarios/`

### 2. VTC Completeness

For each VTC:
- [ ] `businessGoal` — specific and measurable
- [ ] `solution` — describes how we help the user
- [ ] `user` — identifies who we're helping
- [ ] `drivingForces.positive` — at least 2 entries
- [ ] `drivingForces.negative` — at least 2 entries
- [ ] `customerAwareness.start` — defined
- [ ] `customerAwareness.end` — defined

### 3. Chain Validity

- [ ] Business goal in VTC matches a goal in the Product Brief
- [ ] User in VTC matches a target user in the Product Brief
- [ ] Driving forces are specific (not generic like "wants it to work")
- [ ] Awareness journey makes logical sense (start ≠ end)

### 4. Cross-VTC Consistency (if multiple)

- [ ] No contradictory business goals across VTCs
- [ ] Users are distinct or represent different contexts
- [ ] Driving forces don't duplicate across VTCs without reason

---

## Report

```
## VTC Consistency Report

**VTCs found:** [N]
**All complete:** [Yes/No]
**Chain issues:** [N]

[List any broken chains or inconsistencies]
```

---

## Next Step

<action>Auto-proceed to: step-03-seo-strategy.md</action>
