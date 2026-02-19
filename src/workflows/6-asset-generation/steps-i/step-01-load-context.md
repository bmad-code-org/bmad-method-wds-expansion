# Step 01: Load Context

**Goal:** Load icon requirements from page specifications, design system, and any existing icon references.

---

## Actions

### 1. Load Icon Requirements

From page specs, identify every icon reference:
- Navigation icons (menu, close, search, user, cart)
- Action icons (edit, delete, save, share, download)
- Status icons (success, warning, error, info)
- Category/feature icons (per page content)
- Social media icons
- Decorative icons

### 2. Load Design System Icon Tokens

Read icon-related tokens:
- Icon sizes: `sm` (16px), `md` (24px), `lg` (32px), `xl` (48px)
- Stroke width (for outline style)
- Color: monochrome or multicolor
- Container: none, circle, rounded square

### 3. Check Existing Icons

Scan for existing icon assets:
- `{output_folder}/E-Assets/icons/` — previously generated
- External icon library references in design system

### 4. Summarize Context

```
Icon Context:
- Total icons identified: [count]
- Categories: [navigation, action, status, feature, social, decorative]
- Existing icons: [count]
- Icon size standard: [primary size]
- Style direction: [outline/filled/duotone from design system]
```

---

**Next:** → step-02-inventory.md
