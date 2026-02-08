# Foundry Inventory

Foundry host inventory is file-based and shell-friendly.

- Directory: `inventory/hosts`
- Format: one `.env` file per host
- Key fields: `HOST_NAME`, `HOST_ADDRESS`, `HOST_USER`, `HOST_PROVIDER`, `HOST_TAGS`

Example:

```text
HOST_NAME=admin101
HOST_ADDRESS=admin101.example.internal
HOST_USER=infra
HOST_PROVIDER=proxmox
HOST_TAGS=bastion,foundry
```
