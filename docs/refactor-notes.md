# Refactor Notes

Date: 2026-02-08

## Task A command outputs

### `ls -1`

```text
ansible
bin
cloud-init
docs
inventory
libexec
mise.toml
packer
providers
README.md
secrets
sources
tasks.md
terraform
tools
```

### `find bin libexec docs -maxdepth 2 -type f -print`

```text
bin/foundry
libexec/foundry-version
libexec/foundry-host
libexec/foundry-doctor
libexec/foundry-help
libexec/foundry-state
libexec/foundry-common
libexec/foundry-converge
libexec/foundry-secret
libexec/foundry-exec
libexec/foundry-image
libexec/foundry-zt
docs/cicd.md
docs/migration/manifest.md
docs/cli-contract.md
docs/contract.md
```

### `rg -n "cloudflare|zone|tunnel|origin|access|warp|cidr|ip|inventory|secret" -S . || true`

```text
/usr/bin/bash: line 1: rg: command not found
```

Environment note: this workspace does not have `rg` installed. A tracked-files fallback search with `git grep -n -I -E "cloudflare|zone|tunnel|origin|access|warp|cidr|ip|inventory|secret"` identified Foundry coupling in `libexec/foundry-*` and repository-level sensitive-context hits in `inventory/`, `secrets/`, docs, workflows, and source mirrors.

## Migration targets identified

- Move CLI implementation (`bin/foundry`, `libexec/foundry-*`) into `foundry-cli/` for subtree split.
- Move Foundry contracts (`docs/contract.md`, `docs/cli-contract.md`) into `foundry-cli/docs/` for OSS CLI ownership.
- Remove fixed runtime assumptions from CLI (`inventory/hosts`, `secrets/*`, `ansible/site.yml`, `packer/foundry.pkr.hcl`) by adding explicit root/overlay interfaces.
- Keep environment-specific values out of public repos; provide placeholders via `overlay.example/` only.
