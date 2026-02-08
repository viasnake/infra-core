# Foundry CLI

Foundry CLI is environment-agnostic.

- It ships command contracts and execution behavior only.
- It does not include infrastructure code (`terraform/ansible/packer`) or environment values.
- Overlay data is provided from a separate private location at runtime.

## Runtime Interface

```text
foundry [--root PATH] [--overlay PATH] [--output human|json|yaml] <command> [args]
```

- `--root PATH`: foundry-compatible project root (where infra directories may exist)
- `--overlay PATH`: private overlay root (inventory, secrets, provider values)
- `--output`: `human`, `json`, or `yaml`

## Behavior Without Overlay

`foundry doctor` works without `--overlay` and reports missing required pieces.

## What This Repository Does Not Include

- Terraform/Ansible/Packer implementations
- Inventory or providers with environment-specific values
- Secrets, tokens, credentials, IPs, or Cloudflare identifiers
