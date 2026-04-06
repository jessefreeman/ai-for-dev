---
type: source-summary
sources: ["Ollama + Claude Code = 99% CHEAPER.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, claude-code, ollama, openrouter, open-source, cost, video, transcript]
---

# Summary: Nate Herk — Ollama + Claude Code = 99% Cheaper

[[Nate Herk]] demonstrates two methods for running [[Claude Code]] with non-Anthropic models to eliminate or drastically reduce API costs. The framing: Claude Code is the car (harness), the AI model is the engine — you can swap the engine.

## Core Concept

Claude Code is a harness that wraps around a model. By default it uses Anthropic's Opus/Sonnet/Haiku. By redirecting to a local model or OpenRouter, you substitute a different engine while keeping the Claude Code tooling, file system access, and workflow intact.

**Why open-source models aren't perfect substitutes:**
- May not have been trained on Claude Code's tool-calling conventions
- May have context windows too small for Claude Code's system prompt
- May not follow the exact JSON protocol Claude Code expects

Despite this, modern open-source models (Qwen, Gemma 4) are closing the gap with closed-source models rapidly. Qwen 3.5 outperforms Claude Sonnet 3.7 on SWE-bench verified — a model that was considered state-of-the-art at release.

**Using this is not against Anthropic's ToS** — you're using Anthropic's agent harness, just with a different model.

## Method 1: Local Models via Ollama

1. Download [[Ollama]] from ollama.com
2. Pull a model: `ollama pull qwen3.5` (or chosen model)
3. Launch Claude Code with Ollama: `ollama launch claude` → select model at startup
4. For auth: requires a one-time $5 Anthropic API credit deposit (never actually consumed when using local models)

**Context window issue**: Ollama may default to a small context window even if the model supports more. Fix by creating a custom model config that sets `num_ctx` explicitly. Ask Claude Code: *"I'm pulling a model from Ollama and want to increase the context window — what command do I run?"*

**Trade-offs of local models:**
- Slower than cloud (Anthropic servers vs. local hardware)
- Fully private — nothing leaves your machine
- Less visibility into tool calls (doesn't stream tool steps the same way)
- Quality capped by your hardware (RAM, GPU)

## Method 2: OpenRouter

[[OpenRouter]] hosts hundreds of models (including many free ones) behind a single API. Configure Claude Code to point to OpenRouter instead of Anthropic.

**Setup** (in `.claude/settings.local.json`):
```json
{
  "env": {
    "ANTHROPIC_BASE_URL": "https://openrouter.ai/api/v1",
    "ANTHROPIC_AUTH_TOKEN": "<your-openrouter-api-key>",
    "ANTHROPIC_MODEL": "qwen/qwen3-6b:free",
    "ANTHROPIC_SMALL_FAST_MODEL": "qwen/qwen3-6b:free"
  }
}
```

**Critical:** Must set ALL model variables (not just the primary). If you only set `ANTHROPIC_MODEL`, Claude Code still uses Anthropic Haiku/Sonnet for small tool calls and charges you without warning.

**Rate limits on free models:**
- Without deposit: 50 requests/day
- With $5–10 deposit: 1,000 requests/day (free models still cost $0)

## When to Use Open-Source Models

**Good fits:**
- Low-stakes, high-volume: summarizing files, grepping codebases, generating code scaffolding
- Research and information gathering: web searches, summarizing emails, pulling docs
- Organization tasks: categorizing, triaging, filing
- Simple tests and bug reviews
- Fallback when Anthropic is down (check status.claude.com) or session limit is hit

**Not recommended for:**
- Heavy, high-stakes coding work (use Opus 4.6 or equivalent)
- Tasks where missing a step is costly

## The Real Cost Trade-Off

"There's no such thing as free." The actual costs shift to:
- **Local**: hardware (RAM, GPU) to run larger models
- **Ollama cloud**: subscription for higher usage
- **VPS**: hosting cost for self-hosted inference

The realistic benefit: **50–100x cost reduction** using cheap-but-not-free OpenRouter models rather than eliminating cost entirely.

## See Also
- [[Claude Code]]
- [[Ollama]]
- [[OpenRouter]]
- [[Open-Source Model Integration]]
- [[Gemma 4]]
- [[summary-nate-jones-12-agent-primitives|Source: 12 Agent Primitives]]
