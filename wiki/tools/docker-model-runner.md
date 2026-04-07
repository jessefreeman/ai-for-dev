---
type: entity
sources: ["How To Install Any LLM Locally! Open WebUI (Model Runner) - Easiest Way Possible!.md", "The Easiest Ways to Run LLMs Locally - Docker Model Runner Tutorial.md"]
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

## Parallelism Limits (Updated From Alex Ziskind Benchmarks)

[[summary-alex-ziskind-vllm-fp8|Alex Ziskind's vLLM video]] benchmarked Docker Model Runner against [[vllm|vLLM]] on the same RTX PRO 6000 hardware. Key finding: **Docker Model Runner does support parallelism** via runtime flags (Alex set `--max-num-seqs 4` and got ~88 tok/s vs LM Studio's ~80 at the same concurrency), but the parallelism is **modest compared to vLLM**. At 4 concurrent users vLLM hit ~298 tok/s on the same hardware. At 256 concurrent users vLLM hit 5,800–6,000 tok/s — Docker Model Runner doesn't reach those numbers.

**Practical takeaway**: Docker Model Runner is the right choice for "container-native dev with light concurrency." For serious code completion or multi-user serving, [[vllm|vLLM]] is the upgrade path — same Docker packaging story, much higher throughput ceiling.

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

## Port distinction (vs Ollama)

A small but important detail when running both Ollama and Docker Model Runner on the same machine:

- **Docker Model Runner**: port **`12434`**
- **Ollama**: port **`11434`**

Both serve OpenAI-compliant APIs at `/v1/...` and `/engines/llama.cpp/v1/...`. The Python pattern is the same for both — point an OpenAI client at the right base URL:

```python
from openai import OpenAI
client = OpenAI(
    base_url="http://localhost:12434/engines/llama.cpp/v1",
    api_key="not-used-but-required"  # OpenAI lib requires the field
)
```

The API key is required by the OpenAI Python library but ignored by the local runtime — pass any string. Per [[summary-tech-with-tim-docker-model-runner|Tech With Tim's tutorial]], the same client code works against Ollama by swapping `12434` to `11434`. **OpenAI-compliant means truly drop-in.**

## Container-side usage (host.docker.internal)

When you're calling Docker Model Runner from **inside** a Docker container (rather than from the host), `localhost` won't work — the container has its own loopback. Use Docker's special hostname:

```python
client = OpenAI(
    base_url="http://host.docker.internal:12434/engines/llama.cpp/v1",
    ...
)
```

This is the standard Docker pattern for "let the container talk to a service on the host." Per [[summary-tech-with-tim-docker-model-runner|Tech With Tim's tutorial]], it's the **only change** needed when moving a Python script from running on the host to running in a container — everything else stays the same.

## Compose `provider: type: model` syntax

Docker Compose has native support for declaring a model dependency on Docker Model Runner via the `provider` block:

```yaml
services:
  app:
    build: .
    depends_on: [llm]
    environment:
      - MODEL_BASE_URL=http://host.docker.internal:12434/engines/llama.cpp/v1
      - MODEL_NAME=ai/gemma3
  llm:
    provider:
      type: model
      options:
        model: ai/gemma3
```

The `provider: type: model` block tells Compose to ensure the named model is available via Docker Model Runner before the dependent service starts. Per [[summary-tech-with-tim-docker-model-runner|Tim's Streamlit demo]], this is the cleanest way to ship a containerized AI app that depends on a local model — no separate model-management step in your CI/CD, the Compose file handles it.

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
- [[vllm]] — the higher-throughput upgrade path for serious workloads
- [[fp8-quantization]] — quantization format that pairs with vLLM on Blackwell
- [[WorldofAI]], [[alex-ziskind|Alex Ziskind]], [[tech-with-tim|Tech With Tim]] — source channels
- [[summary-worldofai-docker-model-runner|Source: Docker Model Runner walkthrough (WorldofAI)]]
- [[summary-tech-with-tim-docker-model-runner|Source: Docker Model Runner Tutorial (Tech With Tim)]]
- [[summary-alex-ziskind-vllm-fp8|Source: Alex Ziskind on vLLM + FP8 (parallelism comparison)]]
