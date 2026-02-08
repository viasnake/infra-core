# Private Overlay Boundary

Use a private repository (for example `infra-core-private`) for all environment-specific values.

## Put These in Private Overlay

- Inventory host files with real hostnames/IPs
- Cloudflare identifiers and tunnel configuration values
- Credentials, tokens, API keys, certificates, and private keys
- Provider/account specific variable files
- Runtime state pointers and backend configuration values

## Never Put These Back in foundry-core

- Real IP addresses, CIDR ranges, or internal DNS names
- Cloudflare zone/account/tunnel/app/policy identifiers
- Any `*.env` containing real secrets
- Secrets snapshots, vault exports, or key material
- Private endpoints, webhook URLs, or auth-bearing connection strings

## Expected Public Pattern

- `overlay.example/` contains only dummy values and shape examples.
- Real overlay lives in private storage and is passed via `foundry --overlay PATH`.
