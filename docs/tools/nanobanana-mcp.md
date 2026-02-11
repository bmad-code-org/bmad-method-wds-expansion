# NanoBanana MCP Server

**Category:** AI Image Generation (MCP Server)
**Purpose:** Generate images from text prompts directly in Claude Code sessions
**Package:** `nanobanana-mcp-server` (Python, via uvx)
**GitHub:** https://github.com/zhongweili/nanobanana-mcp-server
**Glama:** https://glama.ai/mcp/servers/@zhongweili/nanobanana-mcp-server
**Requires:** Python 3.11+, Gemini API key

---

## What It Is

NanoBanana is an MCP server that adds AI image generation to Claude Code, powered by Google Gemini 2.5 Flash / Gemini 3 Pro. It lets you generate images from text prompts directly in your Claude Code sessions.

**Used in WDS for:**
1. **Persona illustrations** - UX persona card portraits for Trigger Map documents
2. **Design exploration** - Visual concepts, mood boards, style exploration
3. **Sketch envisioning** - Converting specifications into visual designs
4. **Asset creation** - Icons, illustrations, placeholder graphics

**Output:** Images saved directly to project folders, with metadata and reproducibility hints.

---

## Installation

### 1. Install uv (Python package runner)

NanoBanana is a Python package that runs via uvx. Install uv first:

**Windows (PowerShell):**
```powershell
irm https://astral.sh/uv/install.ps1 | iex
```

**macOS/Linux:**
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

This installs uv, uvx, and uvw to `~/.local/bin/`.

### 2. Get a Gemini API Key

1. Go to https://makersuite.google.com/app/apikey (Google AI Studio)
2. Create a new API key
3. Copy the key (starts with `AIza...`)

### 3. Add the MCP Server to Claude Code

```bash
claude mcp add nanobanana -s user \
  -e GEMINI_API_KEY="your-gemini-api-key-here" \
  -- uvx nanobanana-mcp-server@latest
```

**Windows note:** If uvx is not on your system PATH, use the full path instead:
```bash
claude mcp add nanobanana -s user \
  -e GEMINI_API_KEY="your-gemini-api-key-here" \
  -- "C:\Users\<username>\.local\bin\uvx.exe" nanobanana-mcp-server@latest
```

### 4. Restart Claude Code

Restart your Claude Code session to pick up the new MCP tools.

### 5. Verify

```bash
claude mcp list
```

You should see:
```
nanobanana: ... - Connected
```

---

## Usage

Once installed, just ask Claude to generate images:

> "Generate a portrait of a friendly Swedish man in his 50s, flat illustration style"

Images are saved to `~/nanobanana-images/` by default, or specify `output_path` for custom locations.

### Key Options

| Option | Description |
|--------|-------------|
| `model_tier` | `flash` (fast, 1024px), `pro` (quality, up to 4K), `auto` (default) |
| `aspect_ratio` | `1:1`, `2:3`, `3:2`, `3:4`, `4:3`, `4:5`, `5:4`, `9:16`, `16:9`, `21:9` |
| `resolution` | `high`, `4k`, `2k`, `1k` |
| `output_path` | Custom save location (file path or directory) |
| `negative_prompt` | Things to avoid in the image |
| `system_instruction` | Style/tone guidance for consistent series |
| `n` | Number of images to generate (1-4) |

---

## WDS Workflows

### Persona Illustrations (Phase 2: Trigger Map)

Generate UX persona card illustrations for each persona in the Trigger Map.

**Recommended settings:**
- `model_tier`: `flash` (good quality, fast)
- `aspect_ratio`: `1:1` (square persona cards)
- `resolution`: `1k` (small file size for GitHub)
- `output_path`: `design-process/B-Trigger-Map/assets/[persona-slug].jpg`

**Style guide for persona illustrations:**
- Clean modern flat vector illustration style
- Soft cream/neutral background with minimal geometric accents
- Scandinavian minimalist aesthetic
- Each persona in their vehicle/work context
- Consistent style across all personas in a project
- Use `system_instruction` for style consistency across batch

**Prompt structure:**
```
"Clean modern flat vector illustration for UX persona card.
[Person description: age, appearance, clothing].
[Context: standing next to/beside/in their vehicle or work environment].
[Expression matching their emotional profile].
Soft cream background with minimal geometric accents.
Scandinavian minimalist aesthetic, [persona-specific palette],
clean outlines, simple shapes."
```

**Tips:**
- Avoid brand names in prompts (triggers content filters)
  - "silver Scandinavian station wagon" instead of "Volvo V70"
  - "small compact hatchback" instead of "Nissan Micra"
  - "expensive luxury sedans" instead of "BMW, Mercedes, Audi"
- Use `negative_prompt` to avoid photorealism: `"photorealistic, photograph, 3D render, text, watermark"`
- Use `system_instruction` for batch consistency: `"Consistent flat vector illustration series for UX persona cards"`
- Be aware of rate limits when generating multiple images in quick succession

### Design Exploration (Phase 5: Visual Design)

Generate visual concepts and mood boards for brand exploration.

**Recommended settings:**
- `model_tier`: `pro` (higher quality for final concepts)
- `resolution`: `2k` or `4k` (higher quality for design reference)
- `output_path`: `design-process/D-Design-System/01-Visual-Design/`

### Sketch Envisioning (Phase 4: UX Design)

Convert specifications into visual designs or code.

**Key difference from Figma MCP:**
- No Object ID preservation (manual interpretation required)
- No automated bidirectional sync
- Can generate visual designs from text descriptions
- Faster for exploration (no Figma setup needed)

---

## Best Practices

### DO

1. **Use flat illustration style for personas** - Avoids AI uncanny valley, more approachable
2. **Describe vehicles/objects generically** - Avoid brand names that trigger content filters
3. **Use consistent prompts across series** - Same structure, background, style for cohesion
4. **Save to project assets folder** - Keep generated images with their documents
5. **Include render prompts in documents** - Document prompts for reproducibility
6. **Use small formats for GitHub** - 1k resolution, .jpg format

### DON'T

1. **Don't use photorealistic style for personas** - AI-generated photos look uncanny
2. **Don't include brand names** - Triggers content filters, returns 0 images
3. **Don't generate too many at once** - Rate limits apply, space out batches
4. **Don't skip negative prompts** - Help avoid unwanted text, watermarks, photorealism
5. **Don't use raw output without review** - Always check for artifacts (unwanted text, distortions)

---

## Troubleshooting

### Image returns 0 (no image generated)

**Common causes:**
- **Brand names in prompt** - Remove specific brands, describe generically
- **Rate limit hit** - Wait a few minutes between batches
- **Content filter triggered** - Simplify prompt, remove potentially problematic terms
- **"no text" in prompt** - Sometimes triggers filters, rephrase as positive instruction
- **`output_path` parameter** - Can cause 0 returns on some systems. Generate to default path first, then copy to project folder

**Fix:** Simplify prompt, remove brands, wait for rate limit reset. If `output_path` fails, omit it and copy the file manually.

### MCP server not showing up

**Fix:** Restart Claude Code. Check `claude mcp list` for connection status.

### Images have unwanted text/labels

**Fix:** Add to negative prompt: `"text, words, labels, captions, watermark, typography"`

---

## Resources

- GitHub: https://github.com/zhongweili/nanobanana-mcp-server
- Gemini API: https://makersuite.google.com/app/apikey
- uv installer: https://astral.sh/uv

---

[← Back to Tools](wds-tools-guide.md)
