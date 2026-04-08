---
type: entity
sources: ["AgentZero ALL-IN-ONE AI Multi Agent Can DO ANYTHING With MCP Support & Plugins! (Opensource).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [open-source, multi-agent, framework, mcp, autonomous-agent, self-hostable]
---

# AgentZero

Self-organizing open-source multi-agent framework. Designed as a personal "do anything" assistant where the agent topology adapts to the user's workflow rather than being hardcoded. Plugin- and MCP-extensible by design — every capability (web browsing, code execution, PDF extraction, search, memory) is a plugin or MCP server, not a built-in.

- **Repo**: github.com/frdel/agent-zero
- **License**: open-source (check repo)
- **Install**: `docker run -it --rm -p 7860:80 -v $(pwd)/a0:/a0 frdel/agent-zero-run` → web UI on localhost:7860

## Architecture

- **Multi-tier LLM slots**: main, utility (cheaper, for routing), embedding, web-browsing, speech-to-text. Same cost-routing pattern as [[task-master-ai|Task Master AI]].
- **MCP-first** extensibility: Perplexity search demoed as a free MCP integration; the framework treats MCP as the canonical growth surface.
- **Persistent memory** across sessions
- **Web browsing** via `browser-use`
- **Multi-agent cooperation**: a coordinator can spawn sub-agents with their own tools

## Position in the general-agent landscape

Sibling to [[manus|Manus]], [[openmanus|OpenManus]], [[flowith|Flowith]]. Distinguishing factors:

- **vs Manus** — fully local + free (no $200/mo paywall)
- **vs OpenManus** — UI-first (OpenManus is a loop with no UI)
- **vs Flowith** — local-first (Flowith is hosted, infinite-canvas)
- **vs [[hermes-agent|Hermes Agent]]** — no self-improvement loop (no GEPA equivalent); relies on plugins/MCP for capability growth instead

## Sources

- [[summary-agent-zero-framework|AgentZero ALL-IN-ONE AI Multi Agent]] — [[worldofai|WorldofAI]] walkthrough; Docker install, multi-tier LLM config, YouTube transcription demo

## See Also

- [[multi-agent-orchestration|Multi-Agent Orchestration]]
- [[mcp|MCP]]
- [[manus]], [[openmanus]], [[flowith]]
- [[hermes-agent|Hermes Agent]] — closest "self-improving" sibling
- [[self-hostable-alternatives|Self-Hostable Alternatives]]
