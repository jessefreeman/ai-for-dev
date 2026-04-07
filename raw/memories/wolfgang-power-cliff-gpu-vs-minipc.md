---
title: Wolfgang's GPU-Cliff Data — Local Code Assistance Needs a Real GPU
summary: Hard power-consumption + usability data showing there's no middle ground between a gaming-class GPU and a MiniPC for self-hosted code assistance. 130W gaming PC produces useful suggestions; 4.6W MiniPC produces hallucinations.
tags: [person_wolfgangs_channel, topic_local_ai, topic_hardware, topic_power_consumption, source_wolfgangs_channel_self_host]
---

# Wolfgang's GPU-Cliff Data — Local Code Assistance Needs a Real GPU

## Context

From [[summary-wolfgangs-channel-self-host-ai-code-assistant|Wolfgang's Channel walkthrough]]. See also [[continue]], [[ollama]], adjacent [[summary-alex-ziskind-vllm-fp8|Alex Ziskind's vLLM analysis]] which shows the same conclusion from a parallelism angle.

## Content

**The hardware comparison**:

| Setup | Idle power | During code generation | Result |
|---|---|---|---|
| **Ryzen 7 5800X3D + 7900XTX 24GB gaming PC** | 63W | **110–425W spike, ~130W average** | Code completion is accurate and fast. CodeBooga 34B correctly identifies Ansible playbook context. CodeLlama 7B is roughly as good with lower latency. Both produce usable Python suggestions. |
| **LattePanda Sigma MiniPC (i5-1340P, 16GB RAM, no dGPU)** | **4.6W** | **40–60W** | **CodeBooga 34B won't even load** (needs 20GB RAM, only 16 available). CodeLlama 7B loads but is "very slow." Starcoder 3B is faster but produces "two pages of the worst hallucinations I've ever seen" before giving up. **Unusable for code completion.** |

**Notable**: the 7900XTX averaged the same 130W whether running CodeLlama 7B or CodeBooga 34B — the bottleneck isn't the model size, it's the GPU power state during inference. Loading bigger models doesn't add proportional power draw.

**The "cliff, not slope" finding**: there is no middle-ground hardware that gets you usable local code assistance. You need a real GPU or you need to give up. Wolfgang spends most of the video proving this — and it corroborates [[summary-alex-ziskind-vllm-fp8|Alex Ziskind's vLLM analysis]] from a different angle (Wolfgang shows the GPU dependency at the single-user code-completion level; Alex shows the same dependency at the parallelism / throughput level).

**The honest conclusion** from the source: *"If you already have a decent gaming or workstation PC, this could probably save you a subscription. But building a thousand-euro-plus computer just to get better code suggestions in your IDE is probably not the smartest idea ever."* — the cost-benefit is real but only good if you've already bought the hardware for other reasons.

**ROCm note**: the 7900XTX is fully supported by Ollama on **Ubuntu** (not Debian — community consensus). AMD is a viable alternative to NVIDIA for local AI if you're willing to debug ROCm setup.
