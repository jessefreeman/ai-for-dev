---
title: Running Claude Code Free with Ollama Local Models
summary: Step-by-step method for swapping Claude Code's model engine to a local open-source model via Ollama.
tags: person_nate_herk, tool_claude_code, tool_ollama, topic_cost_reduction, topic_local_ai, source_nate_herk_ollama
---

# Running Claude Code Free with Ollama Local Models

## Context

From [[summary-nate-herk-ollama-claude-code|Ollama + Claude Code = 99% CHEAPER]] by [[Nate Herk]]. See [[Ollama]] and [[Open-Source Model Integration]].

## Content

Steps to run Claude Code with a local model instead of Anthropic's paid API:

1. Download Ollama from ollama.com
2. Pull a model: `ollama pull <model-name>` (e.g. `qwen3.5`, `gemma4`)
3. Launch Claude Code via Ollama: `ollama launch claude` → select model at startup
4. One-time requirement: a $5 Anthropic API credit deposit for auth setup — this is never actually consumed when using local models

**Context window fix**: Ollama may default to a small context despite the model supporting more. Create a custom model config with `num_ctx` set explicitly. Ask Claude Code: *"I'm pulling a model from Ollama and want to increase the context window — what command do I run?"*

**Trade-offs**: Fully private (nothing leaves your machine), zero per-token cost, but slower than cloud and quality is capped by local hardware.

Using third-party models in Claude Code is not against Anthropic's ToS.
