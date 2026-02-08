#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
FOUNDRY_BIN="${ROOT_DIR}/bin/foundry"

echo "[smoke] foundry version"
"${FOUNDRY_BIN}" version

echo "[smoke] foundry host list"
"${FOUNDRY_BIN}" host list

echo "[smoke] foundry host inspect admin101"
"${FOUNDRY_BIN}" host inspect admin101 --output yaml

echo "[smoke] foundry zt status"
"${FOUNDRY_BIN}" zt status --output json >/dev/null

echo "[smoke] foundry doctor (expected to fail without secrets/cloudlared.env)"
if "${FOUNDRY_BIN}" doctor >/dev/null 2>&1; then
  echo "[smoke] doctor passed"
else
  echo "[smoke] doctor failed as expected"
fi

echo "[smoke] done"
