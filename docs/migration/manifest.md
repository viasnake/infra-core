# Foundry Migration Manifest (alflag-team)

This manifest defines the infrastructure/operations repositories to consolidate into Foundry.

## Scope Rule

- Include infra/IaC/operations repositories.
- Exclude application repositories.
- Preserve commit history on import.

## Repository Mapping

| Source repository | Default branch | Target path in Foundry |
| --- | --- | --- |
| `alflag-team/ansible` | `master` | `sources/ansible` |
| `alflag-team/terraform-proxmox` | `master` | `sources/terraform-proxmox` |
| `alflag-team/terraform-oraclecloud` | `master` | `sources/terraform-oraclecloud` |
| `alflag-team/terraform-googlecloud` | `master` | `sources/terraform-googlecloud` |
| `alflag-team/terraform-tfe` | `master` | `sources/terraform-tfe` |
| `alflag-team/terraform-cloudflare-access` | `master` | `sources/terraform-cloudflare-access` |
| `alflag-team/terraform-cloudflare-tunnel` | `master` | `sources/terraform-cloudflare-tunnel` |
| `alflag-team/terraform-dns` | `master` | `sources/terraform-dns` |
| `alflag-team/docker-compose` | `master` | `sources/docker-compose` |
| `alflag-team/caddy-with-cloudflare` | `master` | `sources/caddy-with-cloudflare` |
| `alflag-team/stacks` | `master` | `sources/stacks` |
| `alflag-team/etc` | `dns100` | `sources/etc` |

## Import Status (this branch)

| Source repository | Status |
| --- | --- |
| `alflag-team/ansible` | imported |
| `alflag-team/terraform-proxmox` | imported |
| `alflag-team/terraform-oraclecloud` | imported |
| `alflag-team/terraform-googlecloud` | imported |
| `alflag-team/terraform-tfe` | imported |
| `alflag-team/terraform-cloudflare-access` | imported |
| `alflag-team/terraform-cloudflare-tunnel` | imported |
| `alflag-team/terraform-dns` | imported |
| `alflag-team/docker-compose` | imported |
| `alflag-team/caddy-with-cloudflare` | imported |
| `alflag-team/stacks` | imported |
| `alflag-team/etc` | imported |

## Migration Process

1. Import each repository with history using `git subtree add`.
2. Keep imported content under `sources/*` first to avoid destructive conflicts.
3. Normalize/merge into Foundry-native directories in follow-up commits.
4. Archive legacy repositories after operational verification.
