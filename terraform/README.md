# Terraform Assets

This directory contains provider-neutral Terraform entrypoints for Foundry.

- Keep state backend and credentials outside this repository.
- Provider-specific differences should be hidden behind Foundry commands.
- Start from small modules and compose by host role.
