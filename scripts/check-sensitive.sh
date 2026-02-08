#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT_DIR}"

TARGETS=(
  "README.md"
  "bin"
  "docs"
  "overlay.example"
  ".github/workflows"
)

echo "[check-sensitive] scanning tracked public boundary files"

if git grep -n -I -E 'BEGIN PRIVATE KEY|TUNNEL_TOKEN=|CLOUDFLARE_API_TOKEN=|AWS_SECRET_ACCESS_KEY=|GITHUB_TOKEN=' -- "${TARGETS[@]}"; then
  echo "[check-sensitive] high-risk secret pattern found" >&2
  exit 1
fi

python3 - <<'PY'
import ipaddress
import re
import subprocess
import sys
from pathlib import Path

targets = ["README.md", "bin", "docs", "overlay.example", ".github/workflows"]

cp = subprocess.run(["git", "ls-files", *targets], capture_output=True, text=True, check=True)
files = [line.strip() for line in cp.stdout.splitlines() if line.strip()]

ipv4_re = re.compile(r"\b(?:\d{1,3}\.){3}\d{1,3}\b")
allowed_blocks = [
    ipaddress.ip_network("192.0.2.0/24"),
    ipaddress.ip_network("198.51.100.0/24"),
    ipaddress.ip_network("203.0.113.0/24"),
]

violations = []
for rel in files:
    path = Path(rel)
    try:
        text = path.read_text(encoding="utf-8", errors="ignore")
    except OSError:
        continue
    for lineno, line in enumerate(text.splitlines(), start=1):
        for m in ipv4_re.finditer(line):
            token = m.group(0)
            try:
                ip = ipaddress.ip_address(token)
            except ValueError:
                continue
            if any(ip in block for block in allowed_blocks):
                continue
            violations.append(f"{rel}:{lineno}: disallowed IPv4 {token}")

if violations:
    print("[check-sensitive] disallowed IPv4 literals found", file=sys.stderr)
    for item in violations:
        print(item, file=sys.stderr)
    sys.exit(1)

print("[check-sensitive] ok")
PY
