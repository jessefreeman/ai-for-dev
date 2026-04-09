---
type: entity
sources: ["The Only Claude Skills You Need in 2026.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, repo, research-agent, plugin]
---

# GPT Researcher

Open-source autonomous research agent. Give it a topic, it researches autonomously, cross-references multiple sources, and compiles a full report. **Model-agnostic despite the name** — works with any LLM, not just GPT.

## What it does

- Takes a research topic as input
- Plans queries, executes them, reads results
- Cross-references findings across sources
- Outputs a structured report you could send to someone

## Type and platform

- **Type:** repo
- **Platforms:** model-agnostic (works with Claude, GPT, Gemini, Ollama, etc.)
- **Status:** tracked

## Position vs related tools

- **vs [[deep-research-skill]]** — that's Claude Code-native; GPT Researcher runs as a standalone process, output piped wherever.
- **vs [[autoresearch]]** — autoresearch is a research *loop* (overnight iteration); GPT Researcher is a single-shot research *agent* (one report per run).

## Hands-on notes

*(empty)*

## Sources

- [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08)

## See Also

- [[agent-plugins]]
- [[deep-research-skill]]
- [[autoresearch]]
