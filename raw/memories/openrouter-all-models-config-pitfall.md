---
title: OpenRouter Config Pitfall — Must Set ALL Model Variables
summary: If you only set ANTHROPIC_MODEL in OpenRouter config, Claude Code silently falls back to paid Anthropic Haiku for small tool calls.
tags: person_nate_herk, tool_claude_code, tool_openrouter, topic_cost_reduction, source_nate_herk_ollama
---

# OpenRouter Config Pitfall — Must Set ALL Model Variables

## Context

From [[summary-nate-herk-ollama-claude-code|Ollama + Claude Code = 99% CHEAPER]] by [[Nate Herk]]. See [[OpenRouter]] and [[Open-Source Model Integration]].

## Content

When configuring Claude Code to use OpenRouter free models, you **must** set ALL model environment variables, not just `ANTHROPIC_MODEL`.

**The pitfall**: Setting only `ANTHROPIC_MODEL` causes Claude Code to still use Anthropic Haiku or Sonnet for small tool calls (file searches, context lookups, etc.) — charging your Anthropic account without any visible indication.

**Correct config** in `.claude/settings.local.json`:
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

Nate discovered this from his own billing logs — Haiku kept appearing as a charge even after switching to free models.
