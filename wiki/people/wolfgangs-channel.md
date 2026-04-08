---
type: entity
sources: ["Host Your Own AI Code Assistant with Docker, Ollama and Continue!.md", "Quick and Easy Local SSL Certificates for Your Homelab!.md"]
created: 2026-04-07
updated: 2026-04-08
tags: [person, homelab, self-hosting, local-ai, youtube]
---

# Wolfgang's Channel

YouTube creator focused on **homelab and self-hosting**, with strong opinions about running services on your own hardware rather than renting them. Editorial position is privacy-and-control-first, similar in spirit to [[crosstalk-solutions|Crosstalk Solutions]] and [[joshua-clarke|Joshua Clarke]] but with a sharper "this is a homelab channel, you've been looking for stuff to self-host anyway" framing.

## Channels

- **YouTube**: Wolfgang's Channel — homelab, self-hosting, Docker, Linux, hardware reviews

## Content in This Wiki

- [[summary-wolfgangs-channel-self-host-ai-code-assistant|Host Your Own AI Code Assistant with Docker, Ollama and Continue!]] — Real-world comparison of self-hosting a local Copilot replacement on a 7900XTX gaming PC vs a LattePanda Sigma MiniPC. Hard data on power consumption (130W vs 4.6W idle), and the practical conclusion that **without a real GPU, local code assistance is unusable**. Introduces the [[continue|Continue]] VS Code extension as the local-Copilot frontend and walks through the Docker Compose recipe with ROCm device passthrough for AMD GPUs.
- [[summary-wolfgangs-channel-local-ssl-homelab|Quick and Easy Local SSL Certificates for Your Homelab]] (2023-05-15) — Nginx Proxy Manager + Let's Encrypt DNS-01 challenge for valid SSL on private IPs; supports wildcard certs and works with private/local hostnames. The generic homelab version of the same pattern [[networkchuck|NetworkChuck]] applies to Open WebUI.

## Key Ideas

- **GitHub Copilot leaked API keys → self-hosting became a requirement** for code assistance, not just a preference. The privacy threat is concrete, not abstract.
- **"What I want from an AI code assistant is more intelligent, context-aware auto-suggestions, not whole-code generation"** — Wolfgang's framing is anti-vibe-coding: he wants the machine to suggest the boilerplate it knows he's about to type, not write the program for him. This is closer to JetBrains' historical line completion than to Cursor's compose.
- **The GPU vs MiniPC gap is a cliff, not a slope** — at 130W average draw the gaming rig produces useful suggestions, at 4.6W idle the MiniPC produces unusable hallucinations. There is no middle ground for the workloads he tested. Aligns with [[summary-alex-ziskind-vllm-fp8|Alex Ziskind's vLLM analysis]] about why parallelism matters even for solo developers.
- **AMD ROCm is fully supported by Ollama on Ubuntu** (not Debian — community consensus is to use Ubuntu for ROCm). The 7900XTX is a viable alternative to NVIDIA for local AI if you're willing to debug ROCm setup.
- **"Run Ollama on a separate device so you can share it with a friend or use it on multiple devices"** — homelab framing, treats local AI as shared infrastructure, not per-device

## See Also

- [[continue]] — the VS Code extension Wolfgang uses
- [[ollama]] — the local LLM runtime
- [[open-webui]] — the chat UI Wolfgang pairs with Ollama in Docker Compose
- [[crosstalk-solutions]], [[joshua-clarke]] — adjacent self-hosting / homelab voices in the wiki
- [[alex-ziskind]] — adjacent local-AI hardware deep-dives (Wolfgang's power-vs-throughput conclusions corroborate Alex's vLLM benchmarks)
- [[summary-wolfgangs-channel-self-host-ai-code-assistant]]
