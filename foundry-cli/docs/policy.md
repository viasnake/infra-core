# Foundry Policy

- Cloudflare Zero Trust is Mandatory.
- Foundry Core must not know your environment.
- Secrets/state are external.

## Operational Implications

- The `foundry` CLI only executes contracts; it does not own environment values.
- Environment values are provided by project root and private overlay at runtime.
- Missing overlay data is a valid state; `foundry doctor` reports what is missing.
