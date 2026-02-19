# Step 02: Format Business Goals Nodes

**Goal:** Create properly formatted business goals nodes with emojis and padding

---

## Node Structure Template

```
BGX["<br/>EMOJI TITLE<br/><br/>Point 1<br/>Point 2<br/>Point 3<br/><br/>"]
```

---

## Instructions

### 1. For Each Business Goal

**Required elements:**
1. Start with `<br/>` (top padding)
2. Emoji + Title in ALL CAPS
3. Blank line (`<br/><br/>`)
4. 3-5 key points (each on separate line with `<br/>`)
5. End with `<br/><br/>` (bottom padding)

---

### 2. Choose Appropriate Emoji for Each Goal

**Emoji Selection Based on Goal Theme:**
- 💰 Revenue/Profitability/Business Success
- 😊 Customer Satisfaction/Happiness
- ⚡ Efficiency/Speed/Productivity
- 🚀 Growth/Expansion/Adoption
- 🌟 Community/Opportunities
- 📊 Objectives/Metrics
- 🤝 Partnerships/Relationships
- 🎯 Goals/Targets

**Note:** All business goals use consistent styling. Priority is indicated by vertical order (BG0 → BG1 → BG2), not by special formatting.

---

### 3. Example Implementation

```mermaid
BG0["<br/>💰 Become More Profitable<br/><br/>20% profit margin<br/>10% revenue growth<br/>Page 1 ranking<br/><br/>"]

BG1["<br/>😊 Get Happier Customers<br/><br/>4.8+ Google rating<br/>70% repeat rate<br/>Year-round quality<br/><br/>"]

BG2["<br/>⚡ Work Smarter<br/><br/>40% fewer calls<br/>70% self-service<br/>Work-life balance<br/><br/>"]
```

**Note:** BG0 is listed first (top priority), then BG1, then BG2. Priority is indicated by order, not by special styling.

---

## Rules Checklist

- [ ] Node ID follows pattern `BG0`, `BG1`, `BG2`
- [ ] Starts with `<br/>`
- [ ] Emoji at beginning of title
- [ ] Title in ALL CAPS
- [ ] Blank line after title (`<br/><br/>`)
- [ ] 3-5 key points
- [ ] Each point ends with `<br/>`
- [ ] Ends with `<br/><br/>`
- [ ] No HTML tags (bold, italic)
- [ ] Proper quote and bracket closure `"]`

---

## Output

Store:
- `business_goals_nodes`: Array of formatted BG nodes
- `business_goals_count`: Number of goals (for connections later)

---

## Next Step

→ **[Step 08c: Format Platform Node](step-08c-mermaid-platform.md)**

Create the central platform node with transformation statement.

