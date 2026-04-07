---
type: entity
sources: ["7 new open source AI tools you need right now….md", "How To Run Private & Uncensored LLMs Offline  Dolphin Llama 3.md"]
created: 2026-04-06
updated: 2026-04-07
tags: [open-source, model-modification, uncensoring]
---

# Heretic

An open-source tool that removes safety guardrails from language models using a technique called "obliteration." Fully automatic, requires no expensive post-training — run it from the command line on any model.

## How It Works

Takes a censored model (e.g., Google's Gemma) and applies obliteration to remove the guardrails that prevent it from responding to certain types of requests. The output is a model that obeys any command without refusal.

## Use Case

For researchers, developers, or users who need unrestricted model outputs — e.g., creative writing without content filters, security research, red-teaming, or applications where model refusals interfere with legitimate work.

## Note

This tool raises obvious safety and ethical considerations. Removing guardrails from a capable model creates a system with no behavioral constraints. Users should consider the implications before deploying uncensored models, especially in any user-facing application.

## Pre-Heretic Approach: Dolphin Fine-Tunes

Before tools like Heretic automated guardrail removal, the practical path to an unaligned model was downloading a community fine-tune with the alignment removed at training time. The most common family is **Dolphin** (Eric Hartford / Cognitive Computations), e.g. **Dolphin Llama 3** — the same Meta Llama base, retrained to be "not aligned" so it answers questions a stock model refuses.

**Trade-off vs Heretic:** Dolphin variants are pre-built downloads with documented behavior; Heretic is general-purpose obliteration applicable to any model. Dolphin gives you a known artifact; Heretic gives you flexibility.

**Practical setup** (per [[summary-global-science-network-dolphin-llama3|Global Science Network's video]]): Dolphin Llama 3 8B is ~5 GB — small enough to run from a USB 3.0 flash drive via [[ollama|Ollama]] + [[anything-llm|AnythingLLM]] on a fully-offline laptop. Pair the model and the AnythingLLM frontend (~5.6 GB) on a 128 GB drive, format NTFS so files >4 GB transfer cleanly, and `ollama serve` reads from the external drive via the `OLLAMA_MODELS` environment variable. **Gotcha:** running PowerShell as administrator caused the *aligned* Llama 3 to load instead of Dolphin — Global Science Network reports launching as a non-admin user fixes it.

**Why people want this:** privacy from cloud LLMs, access to information cloud providers censor or won't return, and a hedge against future regulation. Limitations are unchanged: the model is still trained on whatever its base lab used, so removing guardrails doesn't remove training-data bias.

## See Also

- [[Fireship]] — source for Heretic itself
- [[summary-fireship-7-open-source-tools|Source: 7 Open-Source AI Tools]] — Heretic
- [[summary-global-science-network-dolphin-llama3|Source: Dolphin Llama 3 offline]] — Dolphin variants
- [[ollama]], [[anything-llm]] — common stack for running uncensored models
- [[llama]] — Dolphin's base model family
