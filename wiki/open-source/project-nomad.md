---
type: entity
sources: ["I Created an Offline AI Server for When SHTF Happens.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [open-source, local-ai, offline, knowledge-server]
---

# Project Nomad

A free, open-source offline knowledge server with local AI. Built by [[Crosstalk Solutions]] over a year of development. Runs on any Linux machine and provides offline access to knowledge, AI chat, maps, and education — all containerized in Docker.

- **GitHub**: https://github.com/crosstalk-solutions/project-nomad
- **Website**: https://projectnomad.us
- **License**: Apache 2.0
- **Discord**: Project Nomad channel in Crosstalk Solutions Discord

## What It Includes

| Service | Powered By | What It Does |
|---------|-----------|--------------|
| Information Library | Kwix | Full Wikipedia (~100GB with images), Project Gutenberg, medical references, developer docs, survival guides |
| AI Assistant | Local LLMs (7B–70B) | Chat interface with model selection, GPU-accelerated inference, RAG for custom documents |
| Offline Maps | OpenStreetMap | Downloadable by region, works with no internet or cell service |
| Education | Calibri | Full Khan Academy courses, K-12 curriculum, educational videos |
| Benchmarking | Custom | CPU, memory, disk, AI performance testing with "Nomad Score" + community leaderboard |

## Technical Architecture

- **Docker-containerized**: Every service runs in its own container for clean upgrades and rollbacks
- **Content tiers**: Essential, Standard, Comprehensive — choose how much to download
- **Web interface**: Command center on port 8080, accessible from any device on network
- **RAG**: Upload custom documents (PDFs, text files), AI indexes them, query with source citations
- **Setup**: Single install command on Ubuntu/Debian, ~10-15 minutes + download time

## Hardware Requirements

- **Minimum**: Any Linux PC (Ubuntu/Debian)
- **Recommended for AI**: NVIDIA RTX 3060+ for GPU-accelerated inference
- **Without GPU**: Everything works, AI is just slower
- **Example build**: MinisForuml MSO2 Ultra + RTX 5060 — runs models up to 30B parameters

## Roadmap

- Family food planner (separate project, will integrate)
- More curated content collections (entertainment)
- Growing community contributions

## Why It's Interesting

Represents the logical extreme of local-first AI: a fully self-contained knowledge infrastructure that works with zero internet. Competes with products like Prepper Disk, Doombox, and Ready ($150–700) — but is completely free and runs on hardware you already own.

## See Also

- [[llama.cpp]] — inference engine likely powering the local AI models
- [[Ollama]] — simpler way to run local models
- [[Crosstalk Solutions]] — creator
- [[summary-crosstalk-project-nomad|Source: Project Nomad]]
