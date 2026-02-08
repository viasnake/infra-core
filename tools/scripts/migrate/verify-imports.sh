#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"

TARGETS=(
  "sources/ansible"
  "sources/terraform-proxmox"
  "sources/terraform-oraclecloud"
  "sources/terraform-googlecloud"
  "sources/terraform-tfe"
  "sources/terraform-cloudflare-access"
  "sources/terraform-cloudflare-tunnel"
  "sources/terraform-dns"
  "sources/docker-compose"
  "sources/caddy-with-cloudflare"
  "sources/stacks"
  "sources/etc"
)

echo "[verify] checking imported source paths"
for path in "${TARGETS[@]}"; do
  if [ ! -d "${ROOT_DIR}/${path}" ]; then
    echo "[verify] missing: ${path}" >&2
    exit 1
  fi
  echo "[verify] ok: ${path}"
done

echo "[verify] all imported repositories are present"
