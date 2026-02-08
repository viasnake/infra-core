# OSS Boundary

This document defines what can and cannot be included in the public Foundry CLI repository.

## Allowed

- `bin/foundry`
- `libexec/foundry-*`
- CLI contract docs (`docs/contract.md`, `docs/cli-contract.md`, `docs/policy.md`)
- Runtime setup required only for CLI execution (for example `mise.toml`)

## Prohibited

- Infrastructure implementations (`ansible/`, `terraform/`, `packer/`, `cloud-init/`)
- Environment and operator data (`inventory/`, `providers/`, `secrets/`)
- Any credential or environment value (token/key/password/secret)
- Any concrete network or platform identity (IP/CIDR/hostname/zone id/tunnel id/account id/app id/policy id)

## Concrete Examples (Do Not Commit)

- `TUNNEL_TOKEN=...`
- `CLOUDFLARE_ZONE_ID=...`
- `HOST_ADDRESS=203.0.113.10`
- `origin.example.com`
- `-----BEGIN PRIVATE KEY-----`

## Checklist Before Release

- [ ] Repo does not contain `ansible/`, `terraform/`, `packer/`, `cloud-init/`, `inventory/`, `providers/`, or `secrets/`
- [ ] No real IP/hostname/zone/tunnel/app/account/policy identifiers are committed
- [ ] No credentials, private keys, or tokens are committed
- [ ] `foundry --help` works
- [ ] `foundry doctor` explains missing overlay/config when not supplied
