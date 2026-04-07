---
type: source-summary
sources: ["The Easiest Ways to Run LLMs Locally - Docker Model Runner Tutorial.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, ai, local-ai, docker, docker-model-runner, python, openai-api]
---

# The Easiest Ways to Run LLMs Locally - Docker Model Runner Tutorial

**Channel:** [[tech-with-tim|Tech With Tim]]
**Format:** YouTube tutorial walkthrough
**Published:** 2025-07-19
**Sponsor:** Docker (disclosed at the start of the video, not a separate midroll segment)

## Summary

Tech With Tim's walkthrough of [[docker-model-runner|Docker Model Runner]] — the **second wiki source on this entity**, complementing [[summary-worldofai-docker-model-runner|WorldofAI's earlier walkthrough]] with the parts WorldofAI didn't cover: **Python integration via the OpenAI-compliant API**, the **port distinction** (Docker Model Runner = `12434`, Ollama = `11434`), the **`host.docker.internal` pattern** for accessing the host LLM from inside a container, and a **Streamlit + Compose `provider: type: model` example** for shipping containerized AI apps that depend on a local model.

## Key Points

- **System requirements**: Mac (Apple Silicon M1/M2/M3+, GPU support; Intel Macs not supported), Windows (CPU + Nvidia GPU support, defaults to CPU), Linux (CPU + Nvidia GPU). **No CUDA install required** — Docker handles the driver layer.
- **Setup**: install Docker Desktop → Settings → Beta Features → enable **Docker Model Runner** → enable **host-side TCP support** (so non-container Python code can reach the API) → optionally enable **GPU-backed inference**. Apply.
- **Two interaction modes**: directly via Docker Desktop's Models tab (built-in chat), or via the `docker model` CLI commands (`docker model pull`, `docker model list`, `docker model run`, `docker model status`).
- **Architecture insight**: Docker Model Runner runs the model **directly on the host**, not inside a container. This is the speed win — direct GPU access, no container overhead. The model file is downloaded to your Docker directory, not packaged as a container image.
- **OpenAI-compliant API on port 12434** — the wiki's first time the actual port number is documented. Compares to Ollama on `11434`. Both serve `/engines/llama.cpp/v1/chat/completions`.
- **Python integration pattern** (the wiki's most useful Python recipe so far for local LLMs):
  ```python
  from openai import OpenAI
  client = OpenAI(
      base_url="http://localhost:12434/engines/llama.cpp/v1",
      api_key="not-used-but-required"
  )
  response = client.chat.completions.create(
      model="ai/smollm2",
      messages=[{"role": "user", "content": "Hi"}]
  )
  ```
  Tim explicitly notes: **the API key is required by the OpenAI library but ignored by the local runtime** — pass any string. The same code works against Ollama by swapping the port.
- **Container-side usage**: `host.docker.internal` is the magic hostname. When your Python code is inside a Docker container talking to Docker Model Runner running on the host, `localhost` won't work — use `host.docker.internal:12434` instead.
- **Compose `provider: type: model` syntax** — declarative way to ship containerized AI apps:
  ```yaml
  services:
    app:
      depends_on: [llm]
    llm:
      provider:
        type: model
        options:
          model: ai/gemma3
  ```
  The `provider` block tells Compose to ensure the model is available before dependent services start. Tim demos this with a Streamlit chat app that runs in one container and talks to Docker Model Runner on the host.
- **Vs Ollama**: Tim's framing is "use Docker Model Runner if you're already deep in Docker; use Ollama otherwise." The architectural difference (host execution + native Compose integration) matters mostly for production deployment scenarios.

## Sponsorship & Bias Notes

**Sponsor:** Docker. **Disclosed openly at the start of the video** ("I did team up with Docker for this video. But everything you see here is completely free."). The whole video is essentially a sponsored tutorial, but the technical content is reproducible and accurate, and the disclosure is upfront rather than buried in a midroll. **Discount the framing** ("complete game-changer") but trust the recipes — they work.

**Product placement / affiliations:** Docker is the sponsor and the product. Tim doesn't compare against alternatives (Ollama gets a brief mention in the architecture-difference section, but no real comparison). For a balanced view, pair this source with [[summary-alex-ziskind-vllm-fp8|Alex Ziskind's vLLM benchmark]] which compares Docker Model Runner against vLLM and Ollama on the same hardware.

**Comparison bias:** Tim's only direct comparison is the Ollama-vs-Docker-Model-Runner architecture distinction (host execution, native Compose integration). He explicitly says "if you're already using Docker, use this; otherwise use Ollama" — that's a fair framing for a sponsored video. The Python recipes work identically against both, so the choice is workflow preference rather than capability difference.

## Notable Quotes

> "Docker handles all of this for you and it will automatically pick the GPU if it's available in your system."

> "The API key needs to be here, but it can just be anything. Doesn't matter what it is."

> "If you're already deep into the Docker ecosystem and you're using it a lot and you want native integration, then this really is just the best thing to use because it will just integrate already into your workflow."

## Connected Pages

- [[docker-model-runner]] — entity page (this is the 2nd source; the page now includes the Python + Compose + port distinction details from this video)
- [[tech-with-tim]] — author hub (2nd source from this batch)
- [[ollama]] — direct architectural comparison
- [[vllm]] — adjacent throughput-focused alternative

## See Also

- [[summary-worldofai-docker-model-runner|Source: Docker Model Runner Walkthrough (WorldofAI)]] — first wiki source on Docker Model Runner; complementary coverage (WorldofAI focused on UI + Open WebUI integration; Tim focuses on Python + Compose recipes)
- [[summary-alex-ziskind-vllm-fp8|Source: Alex Ziskind on vLLM + FP8]] — parallelism comparison across Ollama, Docker Model Runner, and vLLM on the same hardware
- [[summary-tech-with-tim-fine-tune-ollama|Source: Tim's Fine-Tuning Walkthrough]] — Tim's other source in this ingest batch
