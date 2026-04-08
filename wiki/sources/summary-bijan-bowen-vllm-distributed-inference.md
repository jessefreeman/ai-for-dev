---
type: source-summary
sources: ["Run A Local LLM Across Multiple Computers! (vLLM Distributed Inference).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, vllm, distributed-inference, ray, multi-node, gpu]
---

# Run a Local LLM Across Multiple Computers (vLLM Distributed Inference)

**Source**: YouTube — [[bijan-bowen|Bijan Bowen]], published 2024-12-04
**Tools**: [[vllm|vLLM]], Ray (orchestration), Docker

## Summary

[[bijan-bowen|Bijan Bowen]] demonstrates **multi-node, multi-GPU [[vllm|vLLM]]** distributed inference using a **Ray cluster**: two computers with 2 GPUs each (4 GPUs total) serving the same model via **tensor parallelism + pipeline parallelism**. Walks through the setup pain points (identical Python environments across nodes, network configuration, Ray cluster orchestration), tests with **Microsoft Phi 3.5 Mini** as a lightweight proof, then scales to larger models that expose memory and bandwidth limits. Confirms the wiki's existing vLLM coverage from a different angle: **horizontal scaling works, but only if the boring infrastructure pieces (env, network, drivers) are perfect.**

## Key facts

- **Hardware**: 2 nodes × 2 GPUs = 4 GPUs
- **Orchestration**: Ray cluster — `ray start --head` on the head node, `ray start --address=...` on workers
- **Parallelism strategies**: tensor parallel (split model layers across GPUs) + pipeline parallel (split model depth across nodes)
- **Environment requirement**: **identical** Python / conda / paths on all nodes — Docker is the recommended path to enforce this
- **Network**: WiFi + Ethernet mismatch causes latency spikes; 2.5G switch is the practical minimum, single-1G is too slow
- **Test model**: Microsoft Phi 3.5 Mini — small enough to fit on the weakest node
- **Memory observation**: ~12GB allocation; heterogeneous GPU clusters get bottlenecked by the weakest member

## Why it matters

This is the wiki's **first source on multi-node vLLM** — until now [[vllm]] coverage has been single-node, single-host (the [[summary-alex-ziskind-vllm-fp8|Alex Ziskind RTX PRO 6000 walkthrough]]). Bijan's video extends the practical envelope: if you have multiple GPU machines lying around, you don't have to pick one and ignore the others — you can pool them.

The honest framing is the part most worth keeping: **vLLM does support distributed inference, but heterogeneous GPU setups are not officially recommended**. The setup is fragile: identical Python envs, identical model paths, careful network config, all-or-nothing. For most homelab users, **single-node-with-the-best-GPU-you-have** beats two-node-with-cobbled-together-GPUs. The video is honest about that.

## See Also

- [[vllm|vLLM]] — single-node coverage
- [[summary-alex-ziskind-vllm-fp8|Alex Ziskind: vLLM + FP8 (single node)]]
- [[bijan-bowen|Bijan Bowen]]
- [[fp8-quantization|FP8 Quantization]]
