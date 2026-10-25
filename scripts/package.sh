#!/usr/bin/env bash
# Zip the skill folder into a .skill file for upload to Claude.ai / Desktop.
set -eu
cd "$(dirname "$0")/.."
SKILL_DIR="${1:-design-skill}"
NAME="$(basename "$SKILL_DIR")"
mkdir -p dist
rm -f "dist/$NAME.skill"
zip -r "dist/$NAME.skill" "$SKILL_DIR" -x "*/evals/results/*" "*/.DS_Store"
echo "Wrote dist/$NAME.skill"
