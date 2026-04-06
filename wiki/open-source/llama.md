---
type: entity
sources: ["Every AI Model Explained in 20 Minutes.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [open-source, llm, meta, model]
---

# Llama

Meta's open-weights language model family. The first widely accessible locally-runnable LLM — it demonstrated that large language models could run on consumer hardware and catalyzed the open-source AI ecosystem.

## Historical Significance

Llama was the first open-source model that showed the world you could run these models on your own computer. Its release (circa 2023-2024) changed what was possible for local AI and sparked the ecosystem that now includes [[DeepSeek]], [[Qwen]], and many others.

## Current Status (early 2026)

Llama has fallen behind the frontier of open-source models. Chinese AI labs (DeepSeek, MiniMax, Qwen) and others have produced models that outperform Llama in most benchmarks. Llama is still widely used due to its ecosystem, tooling, and familiarity, but it is no longer the recommended choice for best-in-class open-source performance.

## Running Llama

Available in GGUF format via [[llama.cpp]], or through [[Ollama]] for easier setup. Most models available on Hugging Face.

## Model Naming

Llama models follow the `Llama-[version]-[parameter-count]B[-instruct]` pattern (e.g., Llama-3.1-8B-Instruct).

## See Also

- [[DeepSeek]] — stronger current alternative
- [[Qwen]] — stronger current alternative
- [[llama.cpp]] — inference engine that popularized running Llama locally
- [[Ollama]] — easiest way to run Llama locally
- [[Open-Source Model Integration]] — using open-source models with Claude Code
- [[Matthew Berman]] — source
- [[summary-matthew-berman-ai-models|Source: Every AI Model Explained]]
