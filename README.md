# Foundry

Foundry is a monolithic operations distribution for a single operations host.

- Single entrypoint: `foundry`
- Mandatory control plane: Cloudflare Zero Trust
- Unified operation flow for image, host, convergence, and escape hatches

## Repository Layout

- `bin/foundry`: single CLI entrypoint
- `libexec/`: small UNIX-style command units (`foundry-*`)
- `docs/`: contract and CLI contract
- `packer/`: base image templates
- `terraform/`: provider-neutral infrastructure entrypoints
- `ansible/`: convergence playbooks
- `cloud-init/`: bootstrap-only assets
- `inventory/hosts`: host inventory (`.env` per host)

## Toolchain Management

Foundry manages external dependencies with `mise`.

```bash
mise install
mise exec -- bin/foundry version
```

## Command Taxonomy

```text
foundry
├─ doctor
├─ image
├─ host
├─ converge
├─ zt
├─ state
├─ secret
├─ exec
└─ version
```

## Phase 0 Commands

- `bin/foundry version`
- `bin/foundry doctor`
- `bin/foundry zt doctor`
- `bin/foundry exec ssh <host>`

## Phase 1 Commands

- `bin/foundry image build`
- `bin/foundry converge`
- `bin/foundry host list`
- `bin/foundry host inspect <host>`

## Output Contract

All commands accept `--output human|json|yaml`.

```bash
bin/foundry doctor --output json
bin/foundry host list --output yaml
```

## Migration Note

This repository evolves `infra-core` toward `foundry` while retaining existing assets.
Contracts are source-of-truth in:

- `docs/contract.md`
- `docs/cli-contract.md`
