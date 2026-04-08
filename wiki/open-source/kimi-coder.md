---
type: entity
sources: ["Kimi Coder FULLY FREE + FAST AI Coder! High Quality Apps With No Code! (Opensource).md"]
created: 2026-04-07
updated: 2026-04-07
tags: [open-source, ai-coding, web-app]
---

# Kimi Coder

Open-source web app that turns natural-language prompts into deployable single-page apps. Fork of Nutlope's [Llama Coder](https://github.com/nutlope/llamacoder), repointed at [[kimi-k2|Kimi K2]] via Together AI. Free hosted tier at llamacoder.together.ai; self-host with `npm` against a Together API key (or substitute [[ollama]] / [[openrouter]] / Groq).

## Modes

- **Low quality** — fast prototype, single-shot generation
- **High quality** — slower, more careful generation

## Notable feature

Image attachment: paste a UI screenshot, get a working replica with drag-drop and edit-in-place.

## Why it's faster than Cline+K2

Dedicated single-shot generation pipeline avoids the per-tool-call latency of agentic loops — the right shape when you want an SPA, not when you want repo edits.

## Sources

- [[summary-worldofai-kimi-coder|WorldofAI Kimi Coder walkthrough]]

## See Also

- [[kimi-k2]] — the underlying model
- [[cline]], [[opencode]], [[void-ide]] — agentic alternatives for repo work
