---
type: source-summary
sources: ["THIS is the REAL DEAL 🤯 for local LLMs.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, ai, local-ai, vllm, fp8, quantization, nvidia, blackwell, alex-ziskind]
---

# THIS is the REAL DEAL 🤯 for local LLMs

**Channel:** [[alex-ziskind|Alex Ziskind]]
**Format:** YouTube video benchmark + walkthrough
**Published:** 2025-09-12
**Sponsor:** None disclosed (recommends Docker Desktop in the description, no affiliate disclosed)

## Summary

Alex Ziskind walks through the **vLLM + Docker + FP8 quantization stack** on an RTX PRO 6000 Blackwell, hitting **5,800+ tokens/sec sustained** with Quen 3 Coder 30B FP8 across 256 concurrent users. The video systematically benchmarks the same model across LM Studio, Docker Model Runner, and vLLM to show that **LM Studio cannot parallelize requests** (queues them serially) and that vLLM is the only runtime that fully saturates a modern GPU. Critical context for serious local-AI workflows: the gap between "casual local chat" tooling and "production-grade local serving" is enormous and almost entirely about parallelism + quantization. See [[vllm]], [[fp8-quantization]], and [[alex-ziskind]] for the absorbed entity pages.

## Key Points

- **The benchmark setup**: same model (Quen 3 Coder 30B), same hardware (RTX PRO 6000 Blackwell), tested across three runtimes
- **LM Studio @ 1 user**: ~80 tok/s
- **LM Studio @ 4 users**: still ~80 tok/s — **does not parallelize, queues requests one by one** despite using llama.cpp under the hood. "Generating two queued" — proof on screen.
- **llama.cpp Bench**: ~78 tok/s for the same model
- **[[docker-model-runner|Docker Model Runner]] @ 4 users**: ~88 tok/s — modest parallelism via runtime flags
- **vLLM @ 4 users**: **298 tok/s** — first runtime that meaningfully scales
- **vLLM @ 256 users**: **5,800–6,000 tok/s** — full GPU saturation
- **Why parallelism matters even for solo developers**: code completion fires multiple concurrent requests as you type. Chat is one request at a time, but completion is bursty. Without parallelism, requests queue and latency explodes.
- **Docker is how vLLM becomes practical**: raw vLLM setup is intricate; the `vllm/vllm-openai` Docker image abstracts that and works across RTX 40, 50, Pro 6000, Blackwell
- **Quen 3 Coder 30B is fill-in-the-middle (FIM)** — specifically designed for code completion scenarios, which is the use case where this stack pays off most
- **FP8 vs Int8 explainer** (Alex's clearest segment):
  - Both use 8 bits per weight
  - **Int8 spreads values evenly** across the 8-bit space
  - **FP8 is fluid** — sign + exponent + mantissa, adapts precision to value range
  - Result: FP8 retains more reasoning quality at the same memory footprint, *and* runs faster on Blackwell tensor cores because the math is native
- **FP4 is even faster** — Alex teases a follow-up video on it
- **Apple Silicon caveat**: Macs only support GGUF, safe tensors, and Apple's own MLX quantizations. **No FP8 native support.** This is a structural reason Macs lag Nvidia on parallelism-bound workloads despite being fast on single-request benchmarks.
- **Hardware**: the demo runs on a Linux box with an RTX PRO 6000 Blackwell — the same card class that holds the top spot in our [[benchmarks/index|personal hardware benchmarks]]

## Notable Quotes

> "LM Studio uses Llama CPP, the popular library, as a backend. It's not able to run multiple queries in parallel, which holds it back a bit." — Alex Ziskind

> "When you're doing code completion, it's sending tons of data to your provider. GPU stays saturated, queuing drops down, and latency drops down as well." — Alex Ziskind

> "Macs are pretty good and pretty fast, but they have an issue with parallelism." — Alex Ziskind

## Sponsorship & Bias Notes

**Sponsor:** None disclosed. The description recommends Docker Desktop with what appears to be a tracked link (`dockr.ly/4mOdGMO`), but this isn't called out as a sponsorship in the video itself. Standard YouTube member-perks plug.

**Product placement / affiliations:** Alex regularly benchmarks his own DIY ML rigs on the channel. The RTX PRO 6000 he's testing is from a build video he made. No vendor relationship disclosed. The benchmarks are reproducible and the methodology is sound.

**Comparison bias:** None observed in the methodology — same model, same hardware, three runtimes, real numbers. The framing ("REAL DEAL," 🤯 emoji) is standard YouTube hook, not editorial bias affecting the data.

## Connected Pages

- [[vllm]] — entity (full runtime page)
- [[fp8-quantization]] — concept (full quantization page)
- [[alex-ziskind]] — author hub
- [[docker-model-runner]] — directly compared; updated with parallelism findings
- [[ollama]], LM Studio — single-request alternatives shown to lag
- [[llama-cpp]] — the lower-level engine LM Studio wraps
- [[gemma-4-vram-requirements]] — sister quantization reference (integer/GGUF side)
- [[benchmarks/rigs/proxmox-ultra7-265k]] — the rig where this stack matters most

## See Also

- [[summary-tim-carambat-turboquant|TurboQuant]] — complementary KV cache optimization
- [[summary-worldofai-docker-model-runner|Docker Model Runner walkthrough]] — earlier WorldofAI coverage that didn't address parallelism limits
- [[summary-gemma4guide-vram-requirements|Gemma 4 VRAM Requirements]] — the integer quantization counterpart this video pushes past
