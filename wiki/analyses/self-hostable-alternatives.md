---
type: analysis
sources: ["Replace Your Expensive Cloud Tools With These (Self-Hostable) Alternatives.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [analysis, self-hosting, open-source, reference]
---

# Self-Hostable Alternatives

A running map of commercial cloud tools and the credible open-source self-hostable alternatives the wiki has captured. This is a **per-instance dev-tooling reference**, not a marketing page — entries land here only when an ingested source establishes that the alternative is real, maintained, and viable for the use case.

When you ingest a source that mentions a commercial tool with an OSS alternative, add the alternative as its own entity in [`wiki/open-source/`](../open-source/) and link it here in both directions.

## Map

| Commercial tool | Self-hostable OSS alternative | Captured by |
|---|---|---|
| **Notion** (docs/wiki portion) | [[docmost]] | [[summary-simon-hoiberg-self-hostable-alternatives]] |
| **Notion** (PM portion) / Jira / Linear / ClickUp | [[plane]] | [[summary-simon-hoiberg-self-hostable-alternatives]] |
| **Notion** (CMS portion) / Contentful / Sanity | [[strapi]] | [[summary-simon-hoiberg-self-hostable-alternatives]] |
| **Zapier** / **Make** | [[n8n]] | [[summary-simon-hoiberg-self-hostable-alternatives]], [[summary-zubair-trabzada-retell-voice-agent]], [[summary-tin-rovic-youtube-seo-blog]], [[summary-nate-herk-zep-memory]], [[summary-nate-herk-500-ai-workflows]] |
| **Airtable** | [[nocodb]] | [[summary-simon-hoiberg-self-hostable-alternatives]] |
| **PostHog** / Amplitude / Mixpanel | [[grafana]] (+ Postgres event logging) | [[summary-simon-hoiberg-self-hostable-alternatives]] |
| **OpenAI / Anthropic API** (hosted inference) | [[deepseek]] / [[qwen]] / [[llama]] / [[gemma-4]] / [[kimi-k2]] / [[minimax-m1]] on [[ollama]] / [[vllm]] / [[llama-cpp]] | [[summary-simon-hoiberg-self-hostable-alternatives]], [[summary-alex-ziskind-vllm-fp8]], multiple |
| **Cursor** / Windsurf / GitHub Copilot | [[cline]] + [[continue]], [[void-ide]], [[opencode]] | [[summary-nathan-sebhastian-vscode-cline-continue]], [[summary-worldofai-void-ide]], [[summary-worldofai-opencode]], [[summary-wolfgangs-channel-self-host-ai-code-assistant]] |
| **ChatGPT web UI** | [[open-webui]] (+ [[ollama]]) | multiple existing wiki sources |
| **ElevenLabs** (TTS) | [[voicebox]] | [[summary-dave-swift-voicebox]] |
| **Manus** (general agent) | [[openmanus]], [[agenticseek]], [[agent-zero]] | [[summary-worldofai-openmanus]], [[summary-agenticseek-manus-alternative]], [[summary-agent-zero-framework]] |
| **OpenAI Deep Research** / GenSpark / Perplexity Deep Research | [[deerflow]] | [[summary-deerflow-local-research-agent]] |
| **Cursor** / Claude Code (commercial) — additional alternatives | [[codename-goose]] (Block-backed TUI + desktop), [[task-master-ai]] (cost-routing layer over any host) | [[summary-codename-goose-claude-code-alternative]], [[summary-task-master-ai-cursor-cline]] |
| **browser-use commercial / Playwright cloud** | [[stagehand]] (Browserbase, MCP-native, self-healing) | [[summary-stagehand-v2-browser-automation]] |
| **Google Jules** (async coding agent) | [[open-swe]] | [[summary-worldofai-open-swe]] |
| **OpenClaw** (multi-agent runtime) | [[thepopebot]], [[paperclip]] | [[summary-stephen-g-pope-thepopebot]], [[summary-nate-herk-paperclip]] |
| **Hosted MCP servers** | [[mcp]] via Docker MCP Toolkit (containerized + secrets vault) | [[summary-worldofai-docker-mcp-toolkit]] |

## Editorial notes

- **n8n is a center of gravity** — half the rows above can route through it
- **Notion does not have a 1:1 replacement.** Three tools split the job (docs, PM, CMS). This is a real cost of escaping per-seat pricing.
- **Local AI inference is its own thread** — [[ollama]] is the most-cross-linked runtime, [[vllm]] is the throughput ceiling, [[llama-cpp]] is the engine underneath both
- **Adjacent dev-tooling scope** — non-AI entries (Docmost, Plane, Strapi, NocoDB, Grafana) live in this wiki because the per-CLAUDE.md scope statement extends to dev tooling that helps developers ship and self-host. Don't add tools here just because they're popular OSS — they need a wiki source establishing the use case.

## See Also

- [[saas-death-spiral]] — the macro thesis for why this map is interesting
- [[summary-simon-hoiberg-self-hostable-alternatives]] — the source that anchors most of these rows
