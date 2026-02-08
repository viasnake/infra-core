# cloud-init Assets

This directory contains bootstrap fragments for instance-specific injection.

- Keep only per-instance identity and minimal bootstrap data.
- Do not place policy logic here.
- Policy and desired state belong to Ansible convergence.
