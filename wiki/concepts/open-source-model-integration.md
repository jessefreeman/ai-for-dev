---
type: concept
sources: ["Ollama + Claude Code = 99% CHEAPER.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, claude-code, open-source, ollama, openrouter, cost]
---

# Open-Source Model Integration

The practice of substituting open-source or third-party models in place of Anthropic's native models inside [[Claude Code]]. The harness (Claude Code) handles file access, tooling, and workflow; the model handles reasoning.

Analogy from [[Nate Herk]]: Claude Code is the car, the AI model is the engine. You can swap the engine without changing the car.

## Why It Works

Claude Code uses Anthropic's API by default. That API endpoint, auth token, and model selection are all environment variables. Override them to point anywhere: a local [[Ollama]] server, [[OpenRouter]], or any OpenAI-compatible endpoint.

Using third-party models is not against Anthropic's ToS — you're using Anthropic's agent harness.

## Method 1: Local via Ollama

Run an open-source model entirely on your own hardware.

**Setup:**
1. Install Ollama
2. Pull a model: `ollama pull <model-name>`
3. Launch Claude Code via Ollama: `ollama launch claude` → select model
4. Requires a one-time $5 Anthropic API credit deposit (never consumed — required for auth setup only)

**Context window fix:** Ollama may default to a small context window. Create a custom model config with `num_ctx` set explicitly. Ask Claude Code how to do this.

**Characteristics:**
- Fully private (nothing leaves your machine)
- No per-token cost beyond hardware
- Slower than cloud inference
- Less tool call visibility in some models
- Quality limited by local hardware (RAM, GPU)

## Method 2: Cloud via OpenRouter

Route requests to OpenRouter's model catalog, which includes hundreds of free and cheap models.

**Setup** (`.claude/settings.local.json`):
```json
{
  "env": {
    "ANTHROPIC_BASE_URL": "https://openrouter.ai/api/v1",
    "ANTHROPIC_AUTH_TOKEN": "<openrouter-api-key>",
    "ANTHROPIC_MODEL": "<model-id>:free",
    "ANTHROPIC_SMALL_FAST_MODEL": "<model-id>:free"
  }
}
```

**Critical:** Set ALL model variables. If only `ANTHROPIC_MODEL` is set, Claude Code still uses Anthropic Haiku/Sonnet for small tool calls and charges you silently.

**Free model rate limits:**
- No deposit: 50 requests/day
- $5–10 deposit: 1,000 requests/day (free models remain $0)

## When to Use Open-Source Models

| Use case | Recommended? |
|----------|-------------|
| Summarizing/reading files | Yes |
| Grepping/searching codebases | Yes |
| Code scaffolding (repetitive) | Yes |
| Research, email triage | Yes |
| Heavy coding, high-stakes work | No — use Opus 4.6 |
| Fallback when Anthropic is down | Yes |
| Fallback when session limit hit | Yes |

## The Real Cost Trade-Off

No option is truly free:
- **Local**: pay in hardware (GPU/RAM)
- **Ollama cloud**: pay subscription for higher usage
- **VPS**: pay for hosted inference

Realistic benefit: **50–100x cost reduction** using cheap OpenRouter models over full Anthropic API pricing — not elimination, but significant optimization.

## Model Compatibility Notes

Open-source models may:
- Not follow Claude Code's exact JSON tool-calling protocol
- Have insufficient context for Claude Code's system prompt
- Lack native web search capability (can still use via Brave, Tavily, etc.)

Larger models (e.g., 70B+) generally behave more reliably with Claude Code's harness.

## Relevant Models

- [[Gemma 4]] — highlighted as motivating example; small size, high quality, good tool calling
- [[minimax-m2-7|MiniMax M2.7]] — claims to outperform Opus 4.6 on SWE benchmarks; 20x cheaper, 3x faster; subscription-based pricing
- Qwen 3.5/3.6 — strong open-source coding models, available on Ollama and OpenRouter

## Context Window Improvements

[[TurboQuant]] (April 2026, Google Research) dramatically improves the practical context window of local models — 4x more tokens in the same RAM. A model previously capped at 8K context on consumer hardware can now reach 32K. Being merged into llama.cpp. This significantly expands the range of tasks suitable for local inference.

## See Also
- [[Claude Code]]
- [[Ollama]]
- [[OpenRouter]]
- [[Gemma 4]]
- [[TurboQuant]]
- [[Agentic Harness Primitives]]
- [[summary-nate-herk-ollama-claude-code|Source: Ollama + Claude Code]]
