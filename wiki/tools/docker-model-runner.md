---
type: entity
sources: ["How To Install Any LLM Locally! Open WebUI (Model Runner) - Easiest Way Possible!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [tool, ai, local-ai, docker, llm-runtime, open-source]
---

# Docker Model Runner

A local LLM runtime built directly into **Docker Desktop**. Pulls models from Docker Hub or HuggingFace, runs them OpenAI-API-compatible, and exposes them to any container in the same Docker network. Positioned as an alternative to [[ollama|Ollama]] for developers who already work in containers — **no CUDA, no GPU drivers, no separate install**, just enable a beta feature in Docker Desktop.

- **Vendor**: Docker
- **Site**: docker.com/products/model-runner
- **Docs**: docs.docker.com/ai/model-runner
- **Pricing**: Free (bundled with Docker Desktop)
- **Platforms**: Windows, macOS, Linux

## What's Different from Ollama

| | Docker Model Runner | [[ollama\|Ollama]] |
|---|---|---|
| Install | Built into Docker Desktop | Standalone install |
| Native to | Container workflows | Standalone CLI |
| API | OpenAI-compatible out of the box | OpenAI-compatible |
| Model sources | Docker Hub (OCI format) + HuggingFace | Ollama library + HuggingFace |
| GPU drivers | Not required (uses Docker's runtime) | Required for GPU acceleration |
| Multi-container integration | Native (same Docker network) | Requires manual networking |
| Production deployment | Native (it's already a container) | Add a layer |
| Best fit | Devs already living in containers | Standalone local users |

WorldofAI's framing: Ollama is awesome for getting started, but Docker Model Runner fits production pipelines that already use containers — "scalable, compose, and integrate into full stack projects without changing how you already work."

## OCI Packaging Format

Docker Hub uses a new **OCI-based packaging format** for AI models. The intentional design choice: each model package contains only the bare essentials — model weights, a simple manifest, a license file. **No bundled inference server, no API wrapper.** This gives you full control to pair the weights with the runtime of your choice (e.g., TGI or [[llama-cpp|llama.cpp]]). Cleaner, more modular, more production-friendly than the typical model-with-everything-bundled approach.

**Trade-off**: Docker Hub models in OCI format won't work in Ollama unless converted, and vice versa.

## Setup

1. Install Docker Desktop
2. Settings → Beta Features → enable **Docker Model Runner**
3. Optionally enable **host-side TCP** (so other apps can reach it) and **GPU backend inference**
4. Apply, then `docker model status` from the CLI to verify
5. Pull models from Docker Hub via the Models tab in Docker Desktop, or `docker pull` from a model card
6. Run via `docker model list` and `docker run <model-card>`, or use the chat tab in Docker Desktop directly

## Use with Open WebUI

The community has a public compose file (Bret Fisher gist) that wires Docker Model Runner into [[open-webui|Open WebUI]]. The compose file points Open WebUI's `OPENAI_API_BASE_URL` at the Docker Model Runner endpoint, then launches with whatever model you specify (the gist defaults to Gemma 3). Save the compose file locally, edit the model card, then `docker compose -f <path> up`.

This gives you a full ChatGPT-style local UI without ever installing Ollama.

## When to Pick Which

- **Already deep in Docker?** Docker Model Runner. Lower friction, fits your existing pipeline.
- **Just want a local LLM with minimal fuss?** [[ollama|Ollama]]. More mature, larger community model library, simpler mental model for non-container users.
- **Building production AI apps?** Docker Model Runner. The OCI packaging and native container integration are real production wins.
- **Privacy-only use case (e.g., local chat)?** Either works. Pick whichever your environment already has.

## See Also

- [[ollama]] — the established alternative
- [[open-webui]] — common UI layer; supports both backends
- [[llama-cpp]] — the runtime Docker Model Runner can pair with via OCI packaging
- [[anything-llm]] — adjacent local-AI all-in-one
- [[WorldofAI]] — source channel
- [[summary-worldofai-docker-model-runner|Source: Docker Model Runner walkthrough]]
