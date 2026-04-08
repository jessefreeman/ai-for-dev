---
type: entity
sources: ["THIS is the REAL DEAL 🤯 for local LLMs.md", "Run A Local LLM Across Multiple Computers! (vLLM Distributed Inference).md"]
created: 2026-04-07
updated: 2026-04-08
tags: [open-source, ai, llm, inference, runtime, gpu, parallelism, nvidia]
---

# vLLM

Open-source LLM inference engine optimized for **high-throughput parallel serving** on Nvidia GPUs. Where [[ollama|Ollama]] and LM Studio are designed around single-request local workflows, vLLM is built to **saturate a GPU with hundreds of concurrent requests** — making it the practical choice for code completion, multi-user serving, and any workload that benefits from batching.

- **GitHub**: vllm-project/vllm
- **License**: Open source (Apache 2.0)
- **Best fit**: Nvidia GPUs (RTX 40-series, 50-series, Blackwell, Pro 6000); also AMD Instinct cards. Consumer AMD cards work with caveats.

## Why It Matters

[[alex-ziskind|Alex Ziskind]] benchmarked the same Quen 3 Coder 30B model across runtimes on the same hardware (RTX PRO 6000). Throughput numbers from his demo:

| Runtime | Concurrent users | Tokens/sec |
|---|---|---|
| **LM Studio** | 1 | ~80 |
| **LM Studio** | 4 | ~80 (queues, doesn't parallelize) |
| **llama.cpp Bench** | 1 | ~78 |
| **[[docker-model-runner\|Docker Model Runner]]** | 4 | ~88 (some parallelism) |
| **vLLM (Docker)** | 4 | **298** |
| **vLLM (Docker)** | 256 | **5,800–6,000** |

The pattern: **LM Studio cannot scale beyond single request** even though it wraps llama.cpp. Docker Model Runner has limited parallelism. **vLLM is the only option that fully saturates the GPU.**

## Why Code Completion Specifically Needs This

Chat is one request at a time — single-thread throughput is fine. **Code completion is different**: every keystroke can fire a new completion request, and a single developer can have multiple completion requests in flight simultaneously. Without parallelism, requests queue up and latency explodes.

> "When you're doing code completion, it's sending tons of data to your provider… GPU stays saturated, queuing drops down, and latency drops down as well." — Alex Ziskind

This is the practical reason vLLM matters even for **single-developer use cases** — you're not the only thing your editor is asking the model.

## Setup via Docker

vLLM is harder to configure raw than Ollama, but the Docker image makes it portable across Nvidia GPUs:

```bash
# SSH into the GPU host
docker run --gpus all \
  vllm/vllm-openai:latest \
  --model <model-card-or-path> \
  --quantization fp8 \
  --max-num-seqs 256
```

The same image works on RTX 40, 50, Pro 6000, Blackwell — anywhere with a CUDA-capable GPU. Pair with [[fp8-quantization|FP8]] on Blackwell tensor cores for the maximum-throughput configuration.

## Quantization Support

vLLM supports the full quantization stack relevant to Nvidia hardware:
- **BF16** — baseline, requires datacenter GPU
- **Q8 / Int8** — common, broad GPU support
- **[[fp8-quantization|FP8]]** — floating-point 8-bit, native to Blackwell tensor cores, the format Alex demos
- **FP4** — even faster, Alex teases a separate video

Of these, **FP8 is the sweet spot** on Nvidia Blackwell — significantly faster than Int8 with better precision retention. The Quen 3 Coder 30B FP8 build is what produces the 5,800+ tok/s figure.

## How It Compares

| | vLLM | [[ollama\|Ollama]] | LM Studio | [[docker-model-runner\|Docker Model Runner]] | [[llama-cpp\|llama.cpp]] |
|---|---|---|---|---|---|
| Parallelism | **Yes (full GPU saturation)** | Limited | **No** | Modest | Tooling-dependent |
| OpenAI-compatible API | Yes | Yes | Yes | Yes | Yes (server mode) |
| Setup complexity | Medium-high (Docker fixes most) | Low | Lowest | Low | Medium |
| Mac support | No (Nvidia-focused) | Yes | Yes | Yes (limited GPU) | Yes |
| Best for | Production / multi-user / code completion | Standalone local chat | Standalone local chat | Container-native dev | Custom inference |

The decision tree:
- **Local chat, one user, Mac?** → Ollama or LM Studio
- **Container-native dev, modest concurrency?** → Docker Model Runner
- **Code completion, serious throughput, Nvidia GPU?** → **vLLM**
- **Multi-user serving in production?** → **vLLM**
- **Tinkering with custom inference primitives?** → llama.cpp directly

## Distributed inference (multi-node)

vLLM supports **horizontal scaling across multiple nodes** via a **Ray cluster** — `ray start --head` on the head node, `ray start --address=...` on workers — combining **tensor parallelism** (split model layers across GPUs in one node) and **pipeline parallelism** (split model depth across nodes). Per [[summary-bijan-bowen-vllm-distributed-inference|Bijan Bowen's walkthrough]] (2 nodes × 2 GPUs):

- **Identical Python envs** across nodes — Docker is the recommended way to enforce this
- **Identical model paths** across nodes
- **Network**: 2.5G switch is the practical minimum; mixing WiFi/Ethernet causes latency spikes
- **Heterogeneous GPU clusters** get bottlenecked by the weakest member — vLLM does not officially recommend mixed GPUs

**Practical takeaway**: distributed inference is for the case where your single best GPU isn't enough, not the case where you happen to have two GPUs lying around.

## Relationship to the Benchmarks Section

vLLM is what unlocks the top-tier scores for the [[benchmarks/rigs/proxmox-lenovo-p8-threadripper|Lenovo P8 Threadripper Proxmox host with RTX PRO 6000 Blackwell Max-Q]] in our [[benchmarks/index|hardware benchmarks]]. The Geekbench AI numbers reflect single-request throughput; vLLM with FP8 unlocks an *additional ~70x improvement* on concurrent workloads. This is the practical answer to "why pay $9,145 for the PRO 6000" — it's not the single-request speed, it's the parallelism + FP8 combination.

## See Also

- [[fp8-quantization]] — the quantization format that makes vLLM's throughput possible on Blackwell
- [[ollama]], LM Studio — the single-request alternatives
- [[docker-model-runner]] — adjacent container-native runtime, but with more limited parallelism
- [[llama-cpp]] — the lower-level engine vLLM is layered above (in part)
- [[turboquant]] — adjacent KV cache optimization for the same hardware
- [[gemma-4-vram-requirements]] — model sizing reference
- [[benchmarks/rigs/proxmox-lenovo-p8-threadripper]] — the rig vLLM unlocks the most value on
- [[alex-ziskind]] — primary advocate (single-node)
- [[bijan-bowen|Bijan Bowen]] — multi-node coverage
- [[summary-alex-ziskind-vllm-fp8|Source: vLLM + FP8 walkthrough]]
- [[summary-bijan-bowen-vllm-distributed-inference|Source: Multi-node vLLM via Ray cluster]]
