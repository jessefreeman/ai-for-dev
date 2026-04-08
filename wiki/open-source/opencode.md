---
type: entity
sources: ["OpenCode FASTEST AI Coder + Opensource! BYE Gemini CLI & ClaudeCode!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [open-source, ai-coding, cli, terminal]
---

# OpenCode

Open-source terminal-native AI coding agent from SST ([github.com/sst/opencode](https://github.com/sst/opencode)). Direct competitor to [[claude-code]] and Gemini CLI with three key differentiators: native themable terminal UI, parallel multi-agent on the same project, and 75+ LLM provider support via routers.

> **Disambiguation**: there was an earlier "OpenCode" project that's been abandoned. This is the newer SST project — more polished, actively developed.

## Key features

- **Native themable terminal UI** (vs plain text)
- **Parallel multi-agents** on the same project
- **Shareable session links** for collaboration
- **75+ LLM providers** via routers — Anthropic, OpenAI, Gemini, OpenRouter, Azure, Bedrock, Deepseek, [[ollama]], LM Studio, etc.
- **LSP-aware** code accuracy
- **MCP support** — configurable in `opencode.json`

## Free paths

- Google Gemini 2.5 Pro free tier via AI Studio key
- OpenRouter free DeepSeek tiers
- Local: Ollama / LM Studio

## Install

```
npm install -g opencode
opencode             # start in current dir
opencode --cwd path  # scope to project
```

## Sources

- [[summary-worldofai-opencode|WorldofAI OpenCode walkthrough]]

## See Also

- [[claude-code]] — primary competitor
- [[cline]], [[void-ide]] — sibling open-source agentic coders
- [[continue]] — IDE-extension competitor
