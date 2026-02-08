# Provider Extension Contract

This directory defines provider extension points for Foundry.

- Foundry command behavior is provider-agnostic by default.
- Provider-specific implementation details live behind stable command contracts.
- Provider plugins/modules should expose predictable list/inspect/create hooks.
