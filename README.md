# foundry-core

This repository requires Foundry CLI.

This repository intentionally does not include environment-specific values.

- Foundry CLI implementation lives in `alflag-team/foundry`.
- This repository contains infra assets and reference implementation data.
- Environment-specific values are provided through a private overlay.

## Install and Use Foundry CLI

```bash
gh repo clone alflag-team/foundry
./foundry/bin/foundry --help
./foundry/bin/foundry --root "$(pwd)" --overlay "$(pwd)/overlay" doctor
```

If `foundry` is already installed on your PATH:

```bash
foundry --root "$(pwd)" --overlay "$(pwd)/overlay" doctor
```

## Repository Layout

- `ansible/`: convergence playbooks and roles
- `terraform/`: infra definitions
- `packer/`: image templates
- `cloud-init/`: bootstrap assets
- `providers/`: provider contract and registries
- `overlay.example/`: safe placeholders for private overlay structure

## Overlay

- Copy `overlay.example/` to a private location.
- Fill private values in your private repo (for example `infra-core-private`).
- Never commit real IPs, hostnames, Cloudflare IDs/tokens, or credentials here.

See `docs/private-overlay.md` for the boundary and required files.
