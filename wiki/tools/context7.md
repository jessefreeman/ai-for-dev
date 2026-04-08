---
type: entity
sources: ["This MCP Server for AI Coding Assistants Will 10x Your Productivity.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [tool, mcp, rag, ai-coding, documentation, hallucination-fix]
---

# Context7

**MCP server hosting curated, version-correct documentation for 1,856+ frameworks and tools.** Drop into any MCP host (Cursor, Windsurf, Cline, Claude Code) and the agent queries Context7 for the actual docs of whatever framework it's using — instead of hallucinating APIs from training data. The wiki's strongest data point for "the right way to do RAG is to curate the corpus."

- **Coverage**: 1,856+ frameworks/tools at recording time (Supabase, Next.js, React, LangGraph, Pydantic AI, MongoDB, MCP itself, and the long tail)
- **Transport**: MCP server (JSON config drop-in)
- **Pricing**: free at the time of [[summary-cole-medin-context7-mcp|the source]]
- **Setup**: copy the JSON config from the GitHub README → paste into the host's MCP config → refresh

## Why it solves the AI-coding hallucination problem

The biggest failure mode of AI coding agents is **hallucinated framework APIs** — the agent confidently calls a function that exists in a different version, or doesn't exist at all. Context7 fixes this by giving the agent a tool to **look up the actual docs of the actual version** it's targeting. The agent decides retrieval depth per query (typically 5K-20K tokens).

Context7 is **curated**, not crawled. That's the structural difference vs general-web RAG: someone selected the docs that matter and chunked them with framework awareness. The wiki's [[context-augmented-generation|CAG]] entry argues for the opposite (dump the whole corpus into context), and [[rag-vs-wiki|RAG vs Wiki]] argues for structured links. All three are valid; Context7 wins for the *coding-agent-needs-to-look-up-an-API* use case specifically.

## Position in the wiki's RAG-skepticism / RAG-defense thread

| Pattern | Best for | Example |
|---|---|---|
| **Curated MCP RAG (Context7)** | Coding agents needing exact framework APIs | This page |
| **[[context-augmented-generation\|CAG]]** | Bounded datasets that fit the context window | API doc dumps |
| **[[rag-vs-wiki\|LLM Wiki]]** | Personal knowledge bases | This wiki itself |
| **General web RAG** | Massive unstructured corpora | [[dify\|Dify]] |

Context7 is the **counterpoint to the wiki's RAG skepticism**: it shows that RAG works well *when someone curates the corpus*. The hallucination-fixing thesis is the part the wiki cares about — and it's the part the other patterns can't replicate cheaply.

## Sources

- [[summary-cole-medin-context7-mcp|This MCP Server Will 10x Your Productivity]] ([[cole-medin|Cole Medin]], 2025-04-20)

## See Also

- [[mcp|MCP]]
- [[summary-cole-medin-mcp-server-template|MCP server template]] — sibling Cole video (build your own)
- [[cursor|Cursor]] / [[cline|Cline]] / [[claude-code|Claude Code]] — primary MCP hosts
- [[context-augmented-generation|CAG]] — the alternative for bounded datasets
- [[rag-vs-wiki|RAG vs Wiki]]
