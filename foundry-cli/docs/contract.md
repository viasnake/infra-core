# Foundry Contract v1

## Purpose

Foundry is a monolithic operations distribution installed on a single Foundry Host.
It provides one consistent workflow and quality bar across heterogeneous providers.

## Scope

### In Scope

- Single operational CLI (`foundry`)
- Integration entrypoints for Packer, Terraform, and Ansible
- Cloudflare Zero Trust as mandatory control plane for management access
- Reproducible runtime and tooling
- Contract and operator documentation

### Out of Scope

- Secret value storage
- State backend implementation
- Application business logic

## Foundry Host

- Single VM where Foundry is installed
- Can run on Proxmox or public cloud
- Bastion-like architecture is the normative operation model

## Foundry-managed Host (Minimum Contract)

1. A management user `infra` exists
2. Host is SSH-manageable
3. Host is convergable via Ansible
4. Host is uniquely identifiable
5. Host is reachable through Cloudflare Zero Trust

## Base Image Contract

- Built by Packer
- Includes `infra` user, sudo, sshd, guest agent
- Must not include environment-specific keys/settings
- Immutable image principle by default

## Bootstrap & Identity

- cloud-init injects instance-specific values only
- cloud-init must not own policy

## Convergence

- Desired state convergence is performed by Ansible
- Convergence must be idempotent and re-runnable

## Provider Abstraction

- Provider differences are hidden behind Foundry interfaces
- Operator workflows must not depend on provider-specific CLIs
- Target provider set includes Proxmox and major public clouds

## Control Plane

- Cloudflare Zero Trust is mandatory
- Management SSH is expected over Cloudflare path
- Outbound-only network model is the default

## State & Secrets

- Terraform/infra state and secrets live outside Foundry
- Foundry only references/manipulates them via canonical routes
