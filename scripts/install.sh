#!/usr/bin/env sh
set -eu

REPO_URL="https://github.com/SAIL-Fang/leave_skill.git"
SKILL_NAME="leave-application-assistant"

TARGET="${1:-claude}"
SCOPE="${2:-global}"

case "$TARGET" in
  claude)
    if [ "$SCOPE" = "project" ]; then
      DEST=".claude/skills/$SKILL_NAME"
    else
      DEST="$HOME/.claude/skills/$SKILL_NAME"
    fi
    ;;
  agents)
    DEST="$HOME/.agents/skills/$SKILL_NAME"
    ;;
  codex)
    DEST="$HOME/.codex/skills/$SKILL_NAME"
    ;;
  *)
    printf 'Unsupported target: %s\n' "$TARGET" >&2
    printf 'Usage: sh install.sh [claude|agents|codex] [global|project]\n' >&2
    exit 1
    ;;
esac

mkdir -p "$(dirname "$DEST")"

if [ -e "$DEST" ]; then
  printf 'Target already exists: %s\n' "$DEST" >&2
  printf 'Remove it first if you want a clean reinstall.\n' >&2
  exit 1
fi

git clone --depth 1 "$REPO_URL" "$DEST"
printf 'Installed to %s\n' "$DEST"
