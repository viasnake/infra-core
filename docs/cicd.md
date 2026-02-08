# Foundry CI/CD

Foundry CI/CD is built around small, composable checks and reproducible toolchains.

## Workflows

- `ci` (`.github/workflows/ci.yml`)
  - `lint-shell`: shell lint for Foundry scripts via `shellcheck`
  - `contract-check`: contract file existence and `version` JSON contract validation
  - `smoke`: phase 0/1 smoke checks and expected `doctor` failure without runtime tunnel secret

- `release` (`.github/workflows/release.yml`)
  - Trigger: tag push `v*`
  - Builds release tarball from Foundry runtime assets
  - Publishes GitHub release with generated notes

## Local Parity

Use `mise` locally before pushing:

```bash
mise install
mise exec -- shellcheck bin/foundry libexec/foundry-* tools/scripts/foundry-smoke.sh
mise exec -- tools/scripts/foundry-smoke.sh
```

## Branch Protection Recommendation

Set these required checks on `master`:

- `lint-shell`
- `contract-check`
- `smoke`
