#!/bin/bash
# sync-to-repos.sh — Propagate WDS skills, agents, and docs to all project repos
#
# Usage: ./scripts/sync-to-repos.sh [--dry-run] [--commit]
#   --dry-run   Show what would be copied without making changes
#   --commit    Auto-commit changes in each target repo
#
# Source: WDS repo src/ directory
# Target: Each repo's _bmad/wds/ directory

set -euo pipefail

WDS_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WDS_SRC="$WDS_ROOT/src"

DRY_RUN=false
AUTO_COMMIT=false

for arg in "$@"; do
  case $arg in
    --dry-run) DRY_RUN=true ;;
    --commit) AUTO_COMMIT=true ;;
  esac
done

# All repos with _bmad/wds/ directories
TARGETS=(
  "/c/dev/dogweek/dogweek-dev"
  "/c/dev/Kalla-Fordonscervice/kalla-fordonsservice"
  "/c/dev/marten-angner/martens-documents"
  "/c/dev/N-Zyte/ugc-app"
  "/c/dev/WDS/whiteport-astro"
  "/c/dev/Web247/web247-team"
  "/c/dev/Whiteport/whiteport-astro"
)

# Folders to sync from src/ to _bmad/wds/
SYNC_FOLDERS=("skills" "agents")

echo "=== WDS Sync ==="
echo "Source: $WDS_SRC"
echo "Targets: ${#TARGETS[@]} repos"
echo ""

changes=0

for target in "${TARGETS[@]}"; do
  bmad_wds="$target/_bmad/wds"

  if [ ! -d "$bmad_wds" ]; then
    echo "SKIP  $target (no _bmad/wds/)"
    continue
  fi

  repo_name=$(basename "$target")
  echo "--- $repo_name ---"

  for folder in "${SYNC_FOLDERS[@]}"; do
    src_dir="$WDS_SRC/$folder"
    dst_dir="$bmad_wds/$folder"

    if [ ! -d "$src_dir" ]; then
      continue
    fi

    # Create target folder if missing
    if [ ! -d "$dst_dir" ] && [ "$DRY_RUN" = false ]; then
      mkdir -p "$dst_dir"
    fi

    # Compare and copy each file
    for src_file in "$src_dir"/*.md "$src_dir"/*.yaml; do
      [ -f "$src_file" ] || continue
      filename=$(basename "$src_file")
      dst_file="$dst_dir/$filename"

      if [ ! -f "$dst_file" ] || ! diff -q "$src_file" "$dst_file" > /dev/null 2>&1; then
        if [ "$DRY_RUN" = true ]; then
          if [ -f "$dst_file" ]; then
            echo "  UPDATE  $folder/$filename"
          else
            echo "  NEW     $folder/$filename"
          fi
        else
          cp "$src_file" "$dst_file"
          if [ -f "$dst_file" ]; then
            echo "  UPDATE  $folder/$filename"
          else
            echo "  NEW     $folder/$filename"
          fi
        fi
        changes=$((changes + 1))
      fi
    done
  done

  # Auto-commit if requested
  if [ "$AUTO_COMMIT" = true ] && [ "$DRY_RUN" = false ]; then
    cd "$target"
    if git diff --quiet _bmad/wds/ 2>/dev/null && git diff --cached --quiet _bmad/wds/ 2>/dev/null; then
      # Check for untracked files
      if [ -z "$(git ls-files --others --exclude-standard _bmad/wds/)" ]; then
        continue
      fi
    fi
    git add _bmad/wds/
    git commit -m "wds: sync agent instructions from WDS v$(git -C "$WDS_ROOT" describe --tags 2>/dev/null || git -C "$WDS_ROOT" rev-parse --short HEAD)"
    git push
    echo "  COMMITTED + PUSHED"
  fi

  echo ""
done

echo "=== Done: $changes file(s) to sync ==="
