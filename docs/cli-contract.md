# Foundry CLI Contract v1

## Design Principles

- Single entry point (`foundry`)
- Declarative first
- Safe by default

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

## Phase 0 (Minimum Viable Operations)

- `foundry version`
- `foundry doctor`
- `foundry zt doctor`
- `foundry exec ssh <host>`

## Phase 1 (Foundation Operations)

- `foundry image build`
- `foundry converge`
- `foundry host list`
- `foundry host inspect <host>`

## Core Behavior Contract

- Human-readable output is default
- `--output json|yaml|human` is supported
- Non-zero exit code on operational errors
- Errors indicate retryability (`retryable=true|false`)

## Control Plane Commands

- `foundry zt apply`
- `foundry zt status`
- `foundry zt doctor`

## Escape Hatch Commands

- `foundry exec ssh <host>`
- `foundry exec terraform ...`
- `foundry exec ansible ...`

Escape hatches are explicit and auditable.
