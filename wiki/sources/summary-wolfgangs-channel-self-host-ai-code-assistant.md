---
type: source-summary
sources: ["Host Your Own AI Code Assistant with Docker, Ollama and Continue!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, ai, local-ai, ollama, continue, homelab, docker, self-hosting]
---

# Host Your Own AI Code Assistant with Docker, Ollama and Continue!

**Channel:** [[wolfgangs-channel|Wolfgang's Channel]]
**Format:** YouTube tutorial + hardware comparison
**Published:** 2024-08-24
**Sponsor:** Docker (Docker Scout segment) — disclosed midroll, separate from the technical content

## Summary

Real-world walkthrough of building a self-hosted Copilot alternative using **[[ollama|Ollama]] + [[continue|Continue]] (VS Code extension) + Docker Compose**, then comparing two hardware setups: a Ryzen 7 5800X3D + 7900XTX 24GB gaming PC vs a LattePanda Sigma MiniPC (12-core Intel i5-1340P, 16 GB RAM, no discrete GPU). Includes hard power-consumption measurements and arrives at the practical conclusion that **without a real GPU, local code assistance is unusable** — and builds the wiki's bridge between the local-AI hardware thread and the agentic-coding thread.

## Key Points

- **Motivation**: GitHub Copilot leaked API keys from Github repositories, making self-hosting a requirement (not a preference) for any user with privacy concerns about their codebase. The privacy threat is concrete.
- **Wolfgang's framing of "AI code assistant"**: not vibe-coding. He wants context-aware autocomplete that suggests the boilerplate he was going to type anyway (e.g., file owner/group/permissions on an Ansible task), not whole-program generation. Closer to JetBrains' historical line completion than to Cursor's compose.
- **Software stack**: Ubuntu Server 22.04 (not Debian — ROCm doesn't support Debian per community consensus), Docker + Docker Compose, Ollama in a Docker container (ROCm version for AMD GPU), [[open-webui|Open WebUI]] for chat, [[continue|Continue]] in VS Code for IDE integration.
- **Docker Compose recipe** (the wiki's first complete one): ROCm version of `ollama/ollama` container, `/dev/kfd` and `/dev/dri` device passthrough for the AMD GPU, Open WebUI on port 8080, Ollama API on port 11434. Persistent volume mounts for both. Wolfgang publishes the full file in the description.
- **Models tested**: CodeLlama 7B, oobabooga's CodeBooga 34B, Starcoder 3B. CodeBooga is the standout for chat; CodeLlama 7B for autocomplete.
- **Continue config**: separate models for tab autocomplete (3B–7B) vs chat (34B+). The split is intentional — latency matters more for tab, depth matters more for chat.
- **Gaming PC results**: code suggestions are accurate and fast. CodeBooga 34B correctly recognizes Ansible playbook context and suggests `hosts: all`. CodeLlama 7B is roughly as good with lower latency. Both produce usable Python suggestions in the small testing window Wolfgang shows.
- **Power consumption** (the part that anchors this in the wiki's hardware thread):
  - Gaming PC at idle: **63W**
  - Gaming PC during code generation: **110W–425W spike, ~130W average**
  - Lighter model (CodeLlama 7B) and heavier model (CodeBooga 34B) both averaged the same 130W — the bottleneck isn't the model, it's the GPU power state during inference
  - LattePanda Sigma at idle: **4.6W**
  - LattePanda Sigma during code generation: **40–60W**
- **MiniPC results**: **CodeBooga (34B, needs ~20 GB RAM) won't even load** — the LattePanda has 16 GB. CodeLlama 7B loads but text generation is "very slow." Starcoder 3B is faster but produces "two pages of the worst AI hallucinations I've ever seen" before giving up entirely. **Conclusion: without a GPU, local code assistance is unusable.**
- **The cliff, not a slope**: Wolfgang spends most of the video showing that there is no middle-ground hardware that gets you usable local code assistance. You need the GPU or you need to give up. This corroborates [[summary-alex-ziskind-vllm-fp8|Alex Ziskind's vLLM analysis]] from a different angle: Wolfgang shows the GPU dependency at the *single-user code-completion* level, Alex shows the same dependency at the *parallelism / throughput* level.
- **Editorial conclusion**: "If you already have a decent gaming or workstation PC, this could probably save you a subscription. But building a thousand-euro-plus computer just to get better code suggestions is probably not the smartest idea ever." Honest about the cost-benefit.

## Sponsorship & Bias Notes

**Sponsor:** Docker, specifically the **Docker Scout** product (container security scanning + CVE detection + policy enforcement). **Not added to the wiki** per sponsorship rule. Featured in a clean midroll segment from ~8:18–9:17, separate from the Ollama technical content. Discount any claims about Docker Scout's positioning vs alternatives; the Docker Compose technical content is unaffected.

**Product placement / affiliations:** None observed beyond the disclosed Docker sponsorship. Wolfgang's hardware (LattePanda Sigma, 7900XTX) is his own; no review-unit framing. The 7900XTX recommendation over NVIDIA is genuine ("AMD was the best bang for the buck for my personal needs at the time").

**Comparison bias:** Wolfgang explicitly frames himself as a "homelab channel" viewer — he assumes the audience already wants to self-host things and is looking for new candidates. That framing shapes the conclusion ("if you already have the hardware, this is great") in a way that under-weights the cost of the GPU for users who *don't* already have one. Worth noting when reading the cost analysis.

## Notable Quotes

> "Every time I hear about Github Copilot, I think to myself 'hm, it would be nice to have a similar service' but one that I can host locally, with no need to send data to Microsoft."

> "Building a thousand-euro-plus computer just to get some better code suggestions in your IDE is probably not the smartest idea ever."

> "What do you guys think? Would you run this set up yourself, or are you a neovim chad?"

## Connected Pages

- [[continue]] — entity page anchored on this source
- [[wolfgangs-channel]] — author hub
- [[ollama]] — the local LLM runtime
- [[open-webui]] — paired chat UI in Wolfgang's Compose recipe
- [[alex-ziskind]] — adjacent local-AI hardware analysis (different angle, same conclusion)

## See Also

- [[summary-alex-ziskind-vllm-fp8|Alex Ziskind on vLLM + FP8]] — same "GPU is the cliff" finding from a parallelism / throughput angle
- [[summary-tech-with-tim-fine-tune-ollama|Tech With Tim on Fine-Tuning]] — adjacent local-AI workflow (training instead of inference)
- [[summary-joshua-clarke-local-ai-cybersec|Joshua Clarke on Local AI for Cybersec]] — adjacent privacy-first local-LLM use case
