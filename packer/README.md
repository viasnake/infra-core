# Packer Assets

This directory contains Foundry base image templates.

- Keep templates immutable-oriented.
- Do not embed environment-specific SSH keys or secrets.
- Inject per-instance values at bootstrap time via cloud-init.
