---
title: Docker Model Runner — Local LLMs Inside Docker Desktop, OCI Packaging
summary: Docker Desktop now ships a local LLM runtime with no CUDA/GPU drivers needed and an OCI-based packaging format that contains only weights + manifest + license (no inference server bundled).
tags: [tool_docker_model_runner, tool_ollama, topic_local_ai, topic_oci_packaging, source_worldofai_docker_model_runner]
---

# Docker Model Runner — Local LLMs Inside Docker Desktop, OCI Packaging

## Context

From [[summary-worldofai-docker-model-runner|WorldofAI's Docker Model Runner walkthrough]]. See also [[docker-model-runner]].

## Content

**What it is**: a local LLM runtime built directly into Docker Desktop. Settings → Beta Features → enable Docker Model Runner. No CUDA, no GPU drivers, no separate install. OpenAI-API-compatible out of the box.

**The OCI packaging detail** (the architecturally interesting part): Docker Hub uses a new OCI-based format for AI models. Each model package contains **only** model weights, a simple manifest, and a license file. **No bundled inference server. No API wrapper.** Pair the weights with the runtime of your choice (TGI, llama.cpp, etc.). Cleaner and more modular than the typical model-with-everything-bundled approach.

**Trade-off**: Docker Hub OCI models won't work in Ollama unless converted, and vice versa. The two ecosystems don't share artifacts.

**When to pick which**:

| Use case | Pick |
|---|---|
| Already deep in Docker | **Docker Model Runner** |
| Want local LLM with minimal fuss | **[[ollama\|Ollama]]** (more mature, larger community library) |
| Building production AI apps | **Docker Model Runner** (native container integration) |
| Privacy-only local chat | Either |

**Open WebUI integration**: a community compose file (Bret Fisher's gist) wires Open WebUI to Docker Model Runner via `OPENAI_API_BASE_URL`. Save the compose, edit the model card, `docker compose -f <path> up`. Full ChatGPT-style local UI without ever installing Ollama.

**Verify it's running**: `docker model status` from the CLI, or check the Models tab in Docker Desktop.
