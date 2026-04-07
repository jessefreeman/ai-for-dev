---
title: Dolphin Llama 3 — Pre-Heretic Path to an Unaligned Model
summary: Before Heretic automated guardrail removal, the practical path was downloading a community fine-tune like Dolphin Llama 3 — the same Llama base retrained without alignment.
tags: [tool_dolphin_llama3, tool_heretic, tool_ollama, topic_uncensored_models, topic_local_ai, source_global_science_network_dolphin_llama3]
---

# Dolphin Llama 3 — Pre-Heretic Path to an Unaligned Model

## Context

From [[summary-global-science-network-dolphin-llama3|Global Science Network's Dolphin Llama 3 video]]. See also [[heretic]] for the modern automated approach.

## Content

**The two approaches to running an unaligned model**:

1. **Dolphin variants** (Eric Hartford / Cognitive Computations): pre-built community fine-tunes of Llama (and other base models) retrained with alignment removed at training time. Known artifact, documented behavior, works on day one. Dolphin Llama 3 8B is ~5 GB.
2. **[[heretic|Heretic]]** (modern): general-purpose guardrail-removal tool ("obliteration") applicable to any model. More flexible, but less established than the Dolphin family.

**Practical offline-from-USB stack** (per the video):
- Format flash drive **NTFS** so files >4 GB transfer cleanly
- Set `OLLAMA_MODELS` env var to the drive path
- Copy both the Ollama server binary and the model to the drive
- Run [[ollama|Ollama]] + [[anything-llm|AnythingLLM]] from the drive on a fully-offline laptop
- 128 GB drive holds the model (~5 GB) + AnythingLLM (~5.6 GB) comfortably

**Critical PowerShell gotcha**: launching PowerShell *as administrator* loaded the aligned Llama 3 instead of Dolphin. Run as a non-admin user to get the uncensored variant.

**Honest caveat**: removing alignment removes refusals, not training-data bias. Dolphin still carries whatever bias Meta's training corpus introduced.
