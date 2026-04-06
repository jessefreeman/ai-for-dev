---
type: entity
sources: ["Ollama + Claude Code = 99% CHEAPER.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [tool, ai, api, open-source, cost]
---

# OpenRouter

A unified API gateway that provides access to hundreds of AI models (open-source and proprietary) through a single OpenAI-compatible endpoint. Includes many free models and a model ranking/comparison interface.

## Use with Claude Code

Configure [[Claude Code]] to route requests through OpenRouter instead of Anthropic's API. Enables access to free and cheap models without running anything locally.

**Key configuration** (`.claude/settings.local.json`):
```json
{
  "env": {
    "ANTHROPIC_BASE_URL": "https://openrouter.ai/api/v1",
    "ANTHROPIC_AUTH_TOKEN": "<your-openrouter-api-key>",
    "ANTHROPIC_MODEL": "<model-id>:free",
    "ANTHROPIC_SMALL_FAST_MODEL": "<model-id>:free"
  }
}
```

**Critical:** Set ALL model env vars. Omitting `ANTHROPIC_SMALL_FAST_MODEL` causes Claude Code to silently fall back to paid Anthropic Haiku/Sonnet for small tool calls.

Get your API key from: openrouter.ai → Credits → API Keys.

## Free Model Tier

- Append `:free` to any free model's ID
- OpenRouter also offers a free router (`openrouter/auto`) that dynamically selects the most available free model
- Rate limits: 50 requests/day with no deposit; 1,000 requests/day with any deposit ($5+)
- Free models still cost $0 even with a deposit — the deposit only unlocks rate limits

## Model Discovery

OpenRouter's website shows rankings by category (programming, reasoning, etc.) with ELO scores and pricing. Useful for comparing open-source and proprietary models side by side.

## Trade-Offs vs Local (Ollama)

| | OpenRouter | Local (Ollama) |
|--|--|--|
| Privacy | Data leaves your machine | Fully local |
| Speed | Fast (cloud inference) | Depends on hardware |
| Cost | Free or very cheap | Hardware cost |
| Model quality | Access to large models | Capped by local RAM/GPU |

## See Also
- [[Claude Code]]
- [[Ollama]]
- [[Open-Source Model Integration]]
