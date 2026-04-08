---
type: source-summary
sources: ["Turn Your Mac Into an AI Playground with Docker Model Runner.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, docker-model-runner, mac, apple-silicon, official]
---

# Turn Your Mac Into an AI Playground with Docker Model Runner

**Source**: YouTube — Docker (official channel), published 2025-04-03
**Tool**: [[docker-model-runner|Docker Model Runner]]

## Summary

**Official Docker product demo** of [[docker-model-runner|Docker Model Runner]]'s **beta feature for Apple Silicon Macs**. The pitch: enable Model Runner in Docker Desktop → run an LLM locally with `docker model run ai-sm:360m-4bit-gguf` → interact via the built-in chat interface or via the OpenAI-compatible endpoint. Demoed integration: a Next.js app talking to the model via the special hostname `model-runner.docker.internal`. Currently Mac-only, expanding to Docker Desktop on Windows and Linux soon. Tested Qwen 2.5 (7B params) with the second request notably faster than the first because the model stays cached in RAM.

## Key facts

- **Status**: beta feature in Docker Desktop, **Apple Silicon only** at the time of recording
- **CLI**: `docker model run ai-sm:360m-4bit-gguf` for the small lightweight test model
- **Interfaces**: built-in chat tab in Docker Desktop + OpenAI-compatible HTTP endpoint
- **Special hostname for app code**: `model-runner.docker.internal`
- **Demo app**: Next.js + OpenAI SDK pointing at the special hostname
- **Tested model**: Qwen 2.5 (7B params); second request faster (model cached in RAM)
- **Roadmap**: expanding to Docker Desktop on Windows/Linux

## Why it matters

This is the **first first-party Docker source** in the wiki on Docker Model Runner (previous coverage was [[summary-worldofai-docker-model-runner|WorldofAI]] and [[summary-tech-with-tim-docker-model-runner|Tech With Tim]]). Confirms the basic install path on macOS and the **`model-runner.docker.internal` hostname** as the official integration pattern for app code calling the model from a host-side process.

The Apple Silicon focus is also notable: most local-AI coverage in the wiki is GPU-centric (Nvidia, AMD ROCm), and Docker Model Runner is one of the few entries with a clean Apple Silicon path. Pairs with the [[benchmarks/index|hardware benchmarks section]] where the Mac Mini M4 is the highest-INT8-scoring rig.

## See Also

- [[docker-model-runner|Docker Model Runner]] — entity (full coverage)
- [[summary-worldofai-docker-model-runner|WorldofAI walkthrough]]
- [[summary-tech-with-tim-docker-model-runner|Tech With Tim walkthrough]]
- [[ollama|Ollama]] — sibling local runtime
