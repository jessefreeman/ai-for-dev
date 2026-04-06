---
type: entity
sources: ["What Is Llama.cpp? The LLM Inference Engine for Local AI.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [open-source, inference, local-ai, llm]
---

# llama.cpp

A C++ inference engine for running large language models on consumer hardware. The foundational library underlying most local AI tools: Ollama, Jan, GPT4All, and AnythingLLM all use llama.cpp under the hood.

## GGUF Format

llama.cpp uses GGUF (GPT-Generated Unified Format) — a single-file format combining model weights and metadata. Benefits:

- Fast loading and swapping between models
- Enables quantization (storing weights at lower precision)
- Portable: one file contains everything needed to run the model

## Quantization

Models are typically released at 32-bit or 16-bit precision (high accuracy, large RAM footprint). llama.cpp supports quantizing models down to lower precision:

| Precision | RAM Usage | Quality |
|-----------|-----------|---------|
| 16-bit | Full (baseline) | Full |
| 4-bit | ~25% of 16-bit | Near-comparable |

The Q4_K_M naming convention: `Q` = quantized, `4` = 4-bit precision, `K_M` = the specific compression algorithm variant tuned for quality. Quantization saves ~75% on hardware requirements and improves inference throughput.

## Platform Kernels

Optimized backends for nearly every platform:

- **Metal** — Apple Silicon (Mac)
- **CUDA** — NVIDIA GPU
- **ROCm** — AMD GPU
- **Vulkan** — cross-platform GPU
- **CPU** — any hardware (slower but universal)

## Usage Modes

**CLI (terminal chat):**
```
llama-cli --model model.gguf
```

**Local OpenAI-compatible server:**
```
llama-server --model model.gguf --port 8080
```
Exposes GET and POST endpoints on port 8080 — drop-in replacement for OpenAI API. Compatible with LangChain, LangGraph, and any tool that accepts an OpenAI-compatible endpoint.

## Ecosystem

- Supports multimodal models (image description, vision)
- MCP integration for connecting external services
- Powers [[Ollama]], Jan, GPT4All, [[AnythingLLM]]
- [[TurboQuant]] is a KV cache optimization that targets llama.cpp (in the process of merging upstream)

## Open-Source Model Support

Supports any model released in GGUF format — DeepSeek, Llama, Qwen, and most other open-weight models available on Hugging Face.

## See Also

- [[Ollama]] — higher-level local model runner built on llama.cpp
- [[TurboQuant]] — KV cache optimization targeting llama.cpp
- [[Open-Source Model Integration]] — how to use local models in Claude Code
- [[summary-ibm-llama-cpp|Source: What Is Llama.cpp?]]
