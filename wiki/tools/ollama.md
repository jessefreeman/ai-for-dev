---
type: entity
sources: ["Ollama + Claude Code = 99% CHEAPER.md", "Google just dropped Gemma 4... (WOAH).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [tool, ai, open-source, local, inference]
---

# Ollama

A local model runner that makes it easy to download and run open-source LLMs on consumer hardware. Available for macOS, Windows, and Linux. Also provides an optional cloud tier for models too large to run locally.

## Core Commands

```bash
ollama pull <model-name>     # Download a model
ollama run <model-name>      # Chat with a model interactively
ollama launch claude         # Launch Claude Code with model selection
```

## Use with Claude Code

Ollama integrates with [[Claude Code]] to substitute open-source models for Anthropic's paid models. After pulling a model, `ollama launch claude` presents a model picker — Claude Code runs with the selected model, costing nothing per token. See [[Open-Source Model Integration]] for full setup.

**Context window note:** Ollama may default to a small context window regardless of what the model supports. Fix by creating a custom model config with `num_ctx` set to the desired size.

## Cloud Tier

Ollama also hosts cloud models (e.g., MiniMax M 2.7) that can be used without local hardware. Free usage is limited; paid subscription unlocks higher throughput. Models only available in the cloud tier will not show a size in Ollama's model list.

## Model Selection Guidance

- Look at SWE-bench verified scores or Arena AI ELO for coding tasks
- Check model size against your available RAM/GPU (rule of thumb: model needs ~1.5x its file size in RAM)
- Prefer models with `tools` indicator for Claude Code compatibility
- Ask Claude Code: *"Given my hardware specs, which Ollama model sizes should I target?"*

## Notable Models Available

- [[Gemma 4]] — Google's high-efficiency open-source family; 31B ranks #3 globally
- Qwen 3.5/3.6 — Strong coding models, available locally

## See Also
- [[Claude Code]]
- [[OpenRouter]]
- [[Open-Source Model Integration]]
- [[Gemma 4]]
