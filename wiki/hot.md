---
type: hot-cache
created: 2026-04-06
updated: 2026-04-07
---

# Hot Cache

## Current State

**68 sources ingested** (after a 17-source batch ingest on 2026-04-07), 6 org pages. Strongest threads: planning-first AI coding (Claude Code, BMAD, meta-prompting, Ultra Plan, **context-engineering / PRP**), local-AI throughput stack (Ollama, vLLM+FP8, Docker Model Runner, Continue, Unsloth), **n8n-centered AI automation** (newly anchored), the **free-cursor-alternative cluster** (Cline + Continue, Void IDE, OpenCode), and the **general AI agent landscape** (Manus, OpenManus, Flowith).

## Most Active Pages

- [[claude-code|Claude Code]] — primary tool; sub-agents, /loop, /ultra-plan, skills, marketplace
- [[mcp|MCP]] — canonical concept; foundational; now with Docker MCP Toolkit
- [[n8n]] — newly created; convergence point for 5+ sources from this batch
- [[ollama]] — most-cross-linked local runtime; Modelfile section for fine-tuned models
- [[cline]] — newly created; the canonical free agentic VS Code extension
- [[void-ide]] / [[opencode]] — new entries in the open-source coding-tool cluster
- [[context-engineering]] — new concept; sibling of [[bmad-method]] / [[meta-prompting]]
- [[saas-death-spiral]] — market thesis tying it all together

## Most Recently Added (the 17-source batch)

The largest single batch in wiki history. Highlights:
- **n8n finally has a first-class page** after being referenced repeatedly. Anchors voice agents ([[retell-ai]]), Zep long-term memory ([[zep]]), content-repurposing, and the AI-automation-agency playbook.
- **Free coding cluster filled out**: [[cline]] (Cline v3.18 + Cline+Continue tutorial = 2 sources); [[void-ide]] (full-app open-source IDE with Gather Mode); [[opencode]] (SST terminal coder, 75+ providers); plus [[claude-code]] sub-agents added as a section.
- **General-agent cluster**: [[manus]], [[openmanus]], [[flowith]] now form a coherent thread alongside [[devin]] and [[deepcode]].
- **New open-weights models**: [[kimi-k2]] (Moonshot, ~10× cheaper than Sonnet), [[minimax-m1]] (1M context hybrid attention).
- **New concept**: [[context-engineering]] (Karpathy/Lütke) — Cole Medin's PRP template walkthrough.
- **New people**: [[simon-hoiberg]], [[beyond-fireship]], [[zubair-trabzada]], [[tin-rovic]], [[nathan-sebhastian]].
- **Memory thread expansion**: [[zep]] joins [[open-brain|OpenBrain]] as the hosted-knowledge-graph alternative; Nate Herk's cost-trap fix is documented.

## Open Gaps

- **Long-standing primary sources**: Karpathy's gist, AI 2027, Dan Shapiro, StrongDM, METR study
- **Jules (Google)** — still mentioned as the thing Open-SWE replaces; no primary ingest yet
- **CAISI** — referenced in OpenAI's industrial policy paper; needs corroboration
- **Manus** — only secondary references (via OpenManus); no first-party Manus source
- **Cline** — has 2 sources but no first-party blog/release-notes ingest yet

## Architectural Threads to Watch

- **Free coding-tool fragmentation**: extension-stack (Cline+Continue) vs full-app (Void) vs terminal (OpenCode, Claude Code, Gemini CLI). Each has trade-offs; user choice is becoming workflow-defining.
- **Context engineering convergence**: [[context-engineering]] + [[ai-coding-workflow]] + [[bmad-method]] + [[meta-prompting]] + Claude Code Ultra Plan all converge on "structure the input, not the model"
- **n8n as the no-code runtime layer**: the wiki's lower half — voice, content, memory, business automations — increasingly all routes through [[n8n]]
- **Agent memory pattern split**: [[zep]] (hosted knowledge graph) vs [[open-brain]] (DIY Postgres + MCP). Both viable; the trade is control vs maintenance
