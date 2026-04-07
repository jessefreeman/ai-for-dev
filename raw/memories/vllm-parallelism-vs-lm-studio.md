---
title: vLLM vs LM Studio — The Parallelism Gap That Matters for Code Completion
summary: LM Studio cannot parallelize requests despite using llama.cpp; vLLM saturates a GPU with hundreds of concurrent requests. Same hardware, ~70x throughput difference. Code completion is the use case where this gap matters most.
tags: [tool_vllm, tool_lm_studio, tool_ollama, topic_local_ai, topic_parallelism, person_alex_ziskind, source_alex_ziskind_vllm_fp8]
---

# vLLM vs LM Studio — The Parallelism Gap That Matters for Code Completion

## Context

From [[summary-alex-ziskind-vllm-fp8|Alex Ziskind's vLLM + FP8 video]]. See also [[vllm]], [[fp8-quantization]].

## Content

**The benchmark setup**: same model (Quen 3 Coder 30B), same hardware (RTX PRO 6000 Blackwell), tested across runtimes.

| Runtime | Concurrent users | Tokens/sec |
|---|---|---|
| LM Studio | 1 | ~80 |
| LM Studio | 4 | ~80 (queues serially) |
| llama.cpp Bench | 1 | ~78 |
| Docker Model Runner | 4 | ~88 (modest parallelism) |
| **vLLM** | 4 | **298** |
| **vLLM** | 256 | **5,800–6,000** |

**The key insight**: LM Studio uses llama.cpp under the hood but **cannot run concurrent queries**. It queues them. Same applies to [[ollama|Ollama]] in default config. [[docker-model-runner|Docker Model Runner]] supports parallelism via runtime flags but only modestly. **vLLM is the only runtime that fully saturates a modern GPU.**

**Why this matters for solo developers (not just multi-user serving)**: code completion fires multiple concurrent requests as you type. Chat is one request at a time, but completion is bursty. Without parallelism, requests queue and latency explodes. **Quen 3 Coder 30B is fill-in-the-middle (FIM)**, specifically built for code completion — Alex's choice is deliberate.

**The decision tree**:
- Local chat, single user, Mac → Ollama or LM Studio
- Container-native dev, modest concurrency → Docker Model Runner
- **Code completion or multi-user serving on Nvidia → vLLM**

**Apple Silicon caveat**: Macs don't support FP8 natively (only GGUF, safe tensors, MLX) and have limited parallelism. They're fast on single-request benchmarks but lag Nvidia structurally on throughput-bound workloads.

**Setup is the barrier**: vLLM raw is intricate. The `vllm/vllm-openai` Docker image makes it portable across RTX 40, 50, Pro 6000, Blackwell.
