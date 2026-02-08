# foundry-core CI/CD

foundry-core CI/CD validates public boundary hygiene and document integrity.

## Workflows

- `ci` (`.github/workflows/ci.yml`)
  - `lint-shell`: shell lint for wrapper and guard scripts via `shellcheck`
  - `contract-link-check`: contract docs exist and point to `alflag-team/foundry`
  - `sensitive-check`: scans public boundary files for secret-like patterns and disallowed IPv4 literals

- `release` (`.github/workflows/release.yml`)
  - Trigger: tag push `v*`
  - Builds release tarball from foundry-core assets
  - Publishes GitHub release with generated notes

## Local Parity

Use `mise` locally before pushing:

```bash
mise install
mise exec -- shellcheck bin/foundry scripts/check-sensitive.sh
scripts/check-sensitive.sh
```

## Branch Protection Recommendation

Set these required checks on `master`:

- `lint-shell`
- `contract-link-check`
- `sensitive-check`
