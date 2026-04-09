---
title: LLM Design Patterns is a load-bearing user-flagged pillar in the wiki
summary: The user explicitly flagged llm-design-patterns as a core pillar to flesh out over time. Future ingests on workflow patterns extend the existing page rather than fragmenting.
tags: [concept_design_patterns, topic_methodology, topic_wiki_structure, source_simon_scrapes_claude_code_workflows]
---

# LLM Design Patterns — load-bearing pillar page

## Context

From the 2026-04-09 Simon Scrapes ingest. User instruction: *"this is a core pillar — LLM Design Patterns which I want to flesh out over time."* See [[llm-design-patterns]].

## Content

[[llm-design-patterns]] is the wiki's canonical library of **named patterns for working with LLMs and agents**. It's structurally distinct from other wiki concept pages because it's **the wiki's first concept page primarily about patterns/techniques rather than products, organizations, or threats.**

**It joins two other "framework" pages in the concept tier**:
- [[four-prompting-disciplines]] — Nate B Jones's prompt-craft → context-engineering → intent-engineering → specification-engineering ladder. Different axis: how to *talk to* the model in any workflow.
- [[agentic-harness-primitives]] — Nate B Jones's 12 primitives from the leaked Claude Code architecture. Different layer: the *infrastructure underneath* any harness.

LLM Design Patterns is the third corner: the *patterns users compose with that infrastructure*.

**The page is built for growth.** Every entry follows a strict template: *what it is / when to use / when NOT to use / architectural sketch / cost profile / implementations / source(s)*. There's an explicit "**how to extend this page**" footer that defines the contribution rules:

1. **Same pattern, new source** → extend the existing entry. Don't create a duplicate under a different name.
2. **Same pattern, different name** → add to "Also known as" line. Keep the canonical entry under the original name.
3. **New pattern not covered here** → add a new top-level section using the template. Update the selection ladder.
4. **Pattern that crosses tools** → record implementations across every tool that supports it. The point is the cross-tool vocabulary.
5. **Patterns that turn out to be the same as existing ones under fancier names** → fold them in. ReAct, Reflexion, Agentic RAG Loop, etc. should map to existing entries unless genuinely orthogonal.

**Future ingests should treat this page as the default destination** for any workflow-pattern content from any tool (Claude Code, Cursor, Cline, Codex, Claude Agent SDK, generic LLM-app patterns from academic literature, etc.). Resist filing patterns only on individual tool entity pages — the cross-tool vocabulary is the load-bearing value.
