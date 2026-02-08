#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -lt 2 ] || [ "$#" -gt 3 ]; then
  echo "Usage: $0 <owner/repo> <target-prefix> [branch]" >&2
  exit 2
fi

SOURCE_REPO="$1"
TARGET_PREFIX="$2"
SOURCE_BRANCH="${3:-master}"

if [[ ! "$SOURCE_REPO" =~ ^[A-Za-z0-9._-]+/[A-Za-z0-9._-]+$ ]]; then
  echo "invalid source repo format: $SOURCE_REPO" >&2
  exit 2
fi

if [[ "$TARGET_PREFIX" = /* ]]; then
  echo "target prefix must be repo-relative, not absolute: $TARGET_PREFIX" >&2
  exit 2
fi

REMOTE_NAME="import-${SOURCE_REPO//\//-}"
REMOTE_URL="ssh://git@github.com/${SOURCE_REPO}.git"

if git remote get-url "$REMOTE_NAME" >/dev/null 2>&1; then
  git remote remove "$REMOTE_NAME"
fi

cleanup() {
  if git remote get-url "$REMOTE_NAME" >/dev/null 2>&1; then
    git remote remove "$REMOTE_NAME"
  fi
}
trap cleanup EXIT

echo "[import] add remote ${REMOTE_NAME}"
git remote add "$REMOTE_NAME" "$REMOTE_URL"

echo "[import] fetch ${SOURCE_REPO}:${SOURCE_BRANCH}"
git fetch "$REMOTE_NAME" "$SOURCE_BRANCH"

echo "[import] subtree add to ${TARGET_PREFIX}"
git subtree add --prefix "$TARGET_PREFIX" "$REMOTE_NAME" "$SOURCE_BRANCH" -m "chore(import): migrate ${SOURCE_REPO} into ${TARGET_PREFIX}"

echo "[import] done ${SOURCE_REPO} -> ${TARGET_PREFIX}"
