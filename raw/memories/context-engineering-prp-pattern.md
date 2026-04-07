---
title: Context engineering and the PRP pattern
summary: Cole Medin's context-engineering-intro template introduces the PRP (Product Requirement Prompt) — a generated artifact between INITIAL.md and Claude execution that contains docs, codebase tree, and validation commands.
tags: [concept_context_engineering, tool_claude_code, person_cole_medin, source_worldofai_context_engineering]
---

# Context engineering and the PRP pattern

## Context

From [[summary-worldofai-context-engineering|WorldofAI walkthrough]] of [[cole-medin|Cole Medin]]'s [`context-engineering-intro`](https://github.com/coleam00/context-engineering-intro) template. Concept page: [[context-engineering]].

## Content

**Context engineering** (Karpathy / Tobi Lütke) is the discipline of curating *all* the information an LLM needs — state, history, user prompt, available tools, RAG, long-term memory — and feeding it in the right shape at the right step. It's the successor to prompt engineering and the antidote to vibe coding's hallucination tax. Backed by Qodo 2025: 76.4% of developers don't trust AI-generated code without review (the gap is context, not model quality).

**Cole Medin's template** structures Claude Code projects as:

1. **`CLAUDE.md`** — global project rules (code structure, testing, reliability)
2. **`INITIAL.md`** — feature request: clear description + reference example files + doc/API/MCP links + edge cases
3. **`.claude/commands/`** — custom slash commands `/generate-prp` and `/execute-prp`
4. **PRP (Product Requirement Prompt)** — the *generated* artifact between INITIAL.md and execution. Contains: documentation refs, current codebase tree, desired codebase tree, validation commands. Effectively a PRD for an AI coding agent.

**Why it matters**: PRP plays the same role as Claude Code's [[claude-code|Ultra Plan]] does — multi-step planning before code generation. It's the third member of the planning-discipline cluster alongside [[bmad-method]] and [[meta-prompting]]. Demo build: multi-agent research+email system end-to-end for $3.32 in tokens.
