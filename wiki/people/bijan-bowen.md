---
type: entity
sources: ["Run A Local LLM Across Multiple Computers! (vLLM Distributed Inference).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [person, engineer, local-ai, vllm, distributed-systems]
---

# Bijan Bowen

Engineer / YouTuber focused on **local LLM infrastructure and distributed inference**. The wiki tracks Bijan because his vLLM multi-node walkthrough is the first source covering **horizontal-scaling local AI** — pooling multiple GPU machines instead of relying on a single rig.

## Channels

- **YouTube**: Bijan Bowen — local AI inference, vLLM, distributed systems

## Content in This Wiki

- [[summary-bijan-bowen-vllm-distributed-inference|Run A Local LLM Across Multiple Computers]] (2024-12-04) — Multi-node [[vllm|vLLM]] via Ray cluster: tensor + pipeline parallelism across 2 nodes / 4 GPUs. Honest about setup fragility (identical envs, network config, all-or-nothing).

## Key Ideas

- **Horizontal scaling works, but only if the boring infrastructure pieces are perfect.** Identical Python environments, identical model paths, matched network speeds.
- **Heterogeneous GPU clusters get bottlenecked by the weakest member** — pooling a 4090 and a 3060 doesn't give you 1.5× a 4090; it gives you 2× a 3060 (with 4090-shaped extra memory you can't fully use).
- **Single-node-with-the-best-GPU-you-have** usually beats multi-node-with-cobbled-together-GPUs for homelab use cases. Multi-node is for the case where your "best GPU" already isn't enough.

## See Also

- [[vllm|vLLM]]
- [[alex-ziskind|Alex Ziskind]] — sibling local-AI hardware deep-dive voice (single-node focus)
- [[fp8-quantization|FP8 Quantization]]
