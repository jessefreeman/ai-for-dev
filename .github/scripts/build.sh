#!/usr/bin/env bash
set -euo pipefail

# Usage: .github/scripts/build.sh [content_dir] [output_dir]
#
# Defaults (local):  wiki/ content → /tmp/quartz-output/
# In CI (GitHub Actions), pass explicit paths via args or env:
#   .github/scripts/build.sh "$GITHUB_WORKSPACE/wiki" "$GITHUB_WORKSPACE/public"

REPO_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
CONTENT_DIR="${1:-$REPO_ROOT/wiki}"
OUTPUT_DIR="${2:-/tmp/quartz-output}"
QUARTZ_DIR="${QUARTZ_DIR:-/tmp/quartz}"

echo "==> Repo root:   $REPO_ROOT"
echo "==> Content dir: $CONTENT_DIR"
echo "==> Output dir:  $OUTPUT_DIR"
echo "==> Quartz dir:  $QUARTZ_DIR"

# Clone Quartz if not already present
if [ ! -d "$QUARTZ_DIR" ]; then
  echo "==> Cloning Quartz v4..."
  git clone --depth 1 --branch v4 https://github.com/jackyzha0/quartz.git "$QUARTZ_DIR"
else
  echo "==> Quartz already at $QUARTZ_DIR, skipping clone"
fi

# Copy config
echo "==> Copying quartz.config.ts..."
cp "$REPO_ROOT/quartz.config.ts" "$QUARTZ_DIR/quartz.config.ts"

# Install dependencies
echo "==> Installing Quartz dependencies..."
cd "$QUARTZ_DIR"
npm ci --prefer-offline 2>&1 | tail -3

# Build
echo "==> Building site..."
rm -rf "$OUTPUT_DIR"
npx quartz build -d "$CONTENT_DIR" -o "$OUTPUT_DIR"

echo "==> Done. Output at: $OUTPUT_DIR"
