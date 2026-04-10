---
type: entity
sources: ["Ollama + Claude Code = 99% CHEAPER.md", "Google just dropped Gemma 4... (WOAH).md", "EASIEST Way to Fine-Tune a LLM and Use It With Ollama.md", "Gemma 4 + SearXNG = 100% FREE & PRIVATE OpenClaw (Full Setup).md"]
created: 2026-04-06
updated: 2026-04-10
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

**Alternative**: [[docker-model-runner|Docker Model Runner]] is a competing local LLM runtime built into Docker Desktop. Use Docker Model Runner if you already live in containers; use Ollama if you don't. Both expose OpenAI-compatible APIs.

**Parallelism limit**: Ollama (like LM Studio) is designed for single-request workflows. For code completion or multi-user serving on Nvidia hardware, the upgrade path is [[vllm|vLLM]], which fully saturates a GPU with concurrent requests. See [[summary-alex-ziskind-vllm-fp8|Alex Ziskind's benchmark]] — same model + same hardware, vLLM hit ~5,800 tok/s vs LM Studio's ~80 tok/s on parallel workloads.

## Cloud Tier

Ollama offers a **$20/month cloud plan** for users on VPS or devices too small to run models locally. Per [[bart-slodyczka|Bart Slodyczka]]'s [[summary-bart-slodyczka-gemma4-searxng-openclaw|guide]], the plan should cover typical [[openclaw|OpenClaw]] daily usage and gives access to large models like Kimi K2.5, GLM 5, and MiniMax M2.7 — plus the ability to run [[gemma-4|Gemma 4]] 31B with full 256K context in the cloud. Models only available in the cloud tier will not show a size in Ollama's model list.

## Native OpenClaw Integration

Ollama has a native integration with [[openclaw|OpenClaw]] — `openclaw configure` auto-detects models from `ollama list`. Supports both local and cloud models. After configuration, `openclaw gateway restart` flushes the settings. See [[summary-bart-slodyczka-gemma4-searxng-openclaw|source]].

## Custom Models via Modelfile (loading fine-tuned GGUF)

Ollama can load any GGUF file as a custom model via a **Modelfile** — the same format Docker uses for image manifests. This is the bridge between [[fine-tuning|fine-tuning]] (via [[unsloth|Unsloth]] in Google Colab) and local inference.

Per [[summary-tech-with-tim-fine-tune-ollama|Tech With Tim's walkthrough]]: after exporting a fine-tuned model to `unsloth.q4_K_M.gguf`, drop it next to a `Modelfile` like:

```
FROM ./unsloth.q4_K_M.gguf
PARAMETER temperature 0.7
PARAMETER stop <|end|>
TEMPLATE "{{ .Prompt }}"
SYSTEM "You are a helpful AI assistant."
```

Then `ollama create <name> -f Modelfile && ollama run <name>` registers it as a local model. From that point on it behaves identically to a model pulled from `ollama.com`.

## Model Selection Guidance

- Look at SWE-bench verified scores or Arena AI ELO for coding tasks
- Check model size against your available RAM/GPU (rule of thumb: model needs ~1.5x its file size in RAM)
- Prefer models with `tools` indicator for Claude Code compatibility
- Ask Claude Code: *"Given my hardware specs, which Ollama model sizes should I target?"*

## Notable Models Available

- [[Gemma 4]] — Google's high-efficiency open-source family; 31B ranks #3 globally
- Qwen 3.5/3.6 — Strong coding models, available locally

## Context Window Note

[[TurboQuant]] (in progress, merging into llama.cpp) will enable 4x larger context windows on the same hardware. Models that currently max out at 8K context on your GPU will reach 32K. Watch for llama.cpp releases.

## See Also
- [[Claude Code]]
- [[OpenRouter]]
- [[Open-Source Model Integration]]
- [[Gemma 4]]
- [[TurboQuant]]
- [[fine-tuning]] — fine-tuned models land in Ollama via the Modelfile system
- [[unsloth]] — the typical fine-tuning library that produces Modelfile-loadable GGUFs
- [[summary-tech-with-tim-fine-tune-ollama|Source: Fine-Tune a LLM and Use It With Ollama]]
