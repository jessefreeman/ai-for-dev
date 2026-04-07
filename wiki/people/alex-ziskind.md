---
type: entity
sources: ["THIS is the REAL DEAL 🤯 for local LLMs.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [person, ai, hardware, local-ai, apple-silicon, nvidia, youtube]
---

# Alex Ziskind

YouTube creator focused on local LLM performance, GPU benchmarking, Apple Silicon vs Nvidia comparisons, and the practical engineering of squeezing maximum throughput out of consumer + prosumer hardware. One of the highest-signal local-AI voices, with hands-on coverage of inference runtimes (Ollama, LM Studio, llama.cpp, vLLM), quantization formats, and DIY ML rigs.

## Channels

- **YouTube**: Alex Ziskind — local LLM benchmarks, hardware deep dives, Apple Silicon vs Nvidia, inference runtime comparisons
- **Members tier**: extra videos and deeper benchmarks

## Content in This Wiki

- [[summary-alex-ziskind-vllm-fp8|THIS is the REAL DEAL for local LLMs]] — vLLM + Docker + FP8 quantization on RTX PRO 6000 hits 5,800+ tok/s with Quen 3 Coder 30B. Demonstrates the parallelism gap between LM Studio (single-request only), Docker Model Runner (modest parallelism), and vLLM (full GPU saturation, 256 concurrent users).

## Key Ideas

- **LM Studio is single-request-only** — even though it uses llama.cpp under the hood, it can't saturate a GPU because it queues requests rather than running them in parallel. The same model+hardware via vLLM is 70x+ faster on concurrent workloads.
- **Code completion is the use case where parallelism matters most**: chat is one request at a time, but code completion sends streams of context that benefit hugely from a saturated GPU
- **FP8 > Int8** for Nvidia Blackwell tensor cores: floating-point 8-bit is more fluid than integer 8-bit, giving better precision per byte. FP4 is even faster.
- **Docker is the practical packaging answer**: vLLM is more powerful but harder to set up; Docker images make it portable across Nvidia cards (RTX 40, 50, Pro 6000)
- **Apple Silicon's parallelism limitation**: Macs are fast but support only GGUF / safe tensors / MLX quantizations and don't parallelize requests well — meaningful gap vs Nvidia for multi-user / code-completion workloads
- DIY ML rigs are his specialty — has built and benchmarked the rigs that hold the top spots in the [[benchmarks/index|personal benchmarks section]]

## See Also

- [[vllm]] — the inference runtime he advocates for serious local work
- [[fp8-quantization]] — the precision format he demos
- [[docker-model-runner]], [[ollama]], [[anything-llm]] — adjacent local-AI runtimes he compares against
- [[benchmarks/rigs/proxmox-lenovo-p8-threadripper]] — the RTX PRO 6000 Blackwell Max-Q rig in our benchmarks; this video justifies the spend
- [[summary-alex-ziskind-vllm-fp8|Source: vLLM + FP8 walkthrough]]
