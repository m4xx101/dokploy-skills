#!/usr/bin/env bash
set -euo pipefail

echo "Dokploy Skill Suite — Installer"
echo "========================================"
echo ""

SKILLS_DIR="${HERMES_SKILLS_DIR:-$HOME/.hermes/skills/devops}"

mkdir -p "$SKILLS_DIR/dokploy"

echo "Installing to $SKILLS_DIR/dokploy/"
cp -r "$(dirname "$0")"/* "$SKILLS_DIR/dokploy/" 2>/dev/null || true

echo ""
echo "Done."
echo ""
echo "Next steps:"
echo "  1. export DOKPLOY_API_KEY='your-key-here'"
echo "  2. In Hermes: /dokploy"
echo ""
echo "Docs: https://github.com/m4xx101/dokploy-skills"
