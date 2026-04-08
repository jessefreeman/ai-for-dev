---
type: entity
sources: ["Cline v3.18 HUGE UPDATE Fully FREE Autonomous AI Coding Agent! Gemini CLI + Claude Code!.md", "VSCode + Cline + Continue  NEVER PAY for CURSOR again. Use this OPEN SOURCE & LOCAL Alternative.md", "Claude 4 Sonnet & Opus + Cline FULLY FREE AI Coder! Develop a Full-stack App Without Code!.md", "Cline v3.13 UPDATE Fully FREE Autonomous AI Coding Agent! (Memory Bank, Slash Commands).md", "Cline v4.0 UPDATE Fully FREE Autonomous AI Coding Agent! (YOLO Mode, Browsing Agent, & Faster).md", "Readdy + Cline Develop HIGH QUALITY Full-stack Apps For FREE Without Writing Code!.md"]
created: 2026-04-07
updated: 2026-04-08
tags: [open-source, ai-coding, vscode-extension]
---

# Cline

Open-source autonomous AI coding agent that runs as a VS Code / Cursor / Windsurf extension. Creates and edits files, runs terminal commands, browses the web, and uses MCP — all with per-step approval or full autonomy. Bring-your-own-model: supports Anthropic, Google (Gemini CLI free tier), OpenAI, OpenRouter, Grok 3 free, [[ollama]] local, and SAP AI Core.

## Why it matters

Cline is the canonical free, open-source alternative to [[cursor]] for developers who want full data control and provider flexibility. Pairs with [[continue]] (autocomplete) for a complete cursor-replacement stack on top of plain VS Code.

## Release timeline

| Version | Date | Headline features |
|---|---|---|
| **v3.13** | 2025-05 | Memory Bank (markdown persistent context), slash-command framework, checkpoint system (infinite undo), prompt caching, Qwen 3 support. See [[summary-worldofai-cline-v313-memory-bank]]. |
| **v4.0** | 2025-04 | **YOLO Mode** (full autonomy, no permission prompts), **Chrome browser integration** (session-based debugging), 10× faster diff editing, redesigned visual checkpoints, Grok 3 Mini + ByteDance Doubao support. See [[summary-worldofai-cline-v4-yolo-mode]]. |
| **v3.18** | 2025-06 | **Gemini CLI provider** (1,000 free daily Gemini 2.5 Pro requests), Claude Code CLI as backend provider, Claude 4 diff-edit failure rate 10% → 6%, self-knowledge via web_fetch, 35 new MCP servers (AWS-heavy), auto-approve modes. See [[summary-worldofai-cline-v318]]. |

(Date order is per the WorldofAI walkthroughs; the version numbers diverge from semver because v4.0 was a parallel branch line that didn't subsume v3.x.)

## Combined with other tools

- **[[continue]]** — Continue handles autocomplete/inline-edit, Cline handles multi-file/agentic edits. The combo replaces Cursor entirely for free.
- **[[ollama]]** — drives Cline locally with DeepSeek, Qwen, etc.
- **[[openrouter]]** — unified API gateway including free DeepSeek tiers

## Free-API workarounds

Cline accepts any provider; users who want to skip Anthropic billing entirely can route through **Requesty** or **Kilo** (free-credit gateways), in addition to [[openrouter|OpenRouter]] and Gemini CLI's free tier. Gives Cline its "fully free" framing in three different WorldofAI walkthroughs.

## Sources in this wiki

- [[summary-worldofai-cline-v4-yolo-mode|Cline v4.0]] (WorldofAI, 2025-04-15) — YOLO Mode + Chrome
- [[summary-worldofai-readdy-cline-fullstack|Readdy + Cline full-stack]] (WorldofAI, 2025-04-21) — Cline as the backend half of a no-code stack
- [[summary-worldofai-cline-v313-memory-bank|Cline v3.13]] (WorldofAI, 2025-05-01) — Memory Bank, slash commands, checkpoints
- [[summary-worldofai-claude-4-opus-sonnet-cline|Claude 4 Opus/Sonnet + Cline]] (WorldofAI, 2025-05-23) — Claude 4 launch pricing + ~$2.60 SaaS-landing-page demo
- [[summary-worldofai-cline-v318|Cline v3.18 HUGE UPDATE]] (WorldofAI, 2025-06-27) — Gemini CLI provider + 35 new MCP servers
- [[summary-nathan-sebhastian-vscode-cline-continue|VSCode + Cline + Continue]] (Nathan Sebhastian, 2025-04-09)

## See Also

- [[cursor]] — commercial competitor Cline targets
- [[void-ide]] — competing fully-open-source alternative
- [[opencode]] — terminal-native competitor
