# RAGPi

A reproducible, containerized Retrieval-Augmented Generation (RAG) system for Raspberry Pi 4 (4GB+). Includes:

- Nix-based build and service configuration
- Docker container image
- Grafana monitoring

## Getting Started

```bash
git clone https://github.com/yourname/ragpi
cd ragpi
nix build .#docker-image
```

Run Grafana in development:

```bash
nix develop
just start-grafana
```
