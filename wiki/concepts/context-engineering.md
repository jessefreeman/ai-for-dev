---
type: concept
created: 2026-04-07
updated: 2026-04-07
tags: [concept, ai-coding, prompting]
---

# Context Engineering

The discipline of curating *all* the information an LLM needs to plausibly solve a task — state, history, prompts, tool definitions, RAG output, long-term memory — and feeding it in the right shape at the right step. Coined by Andrej Karpathy and amplified by Shopify CEO Tobi Lütke, who wrote: "I really like the term context engineering over prompt engineering. It describes the core skill better."

## Why it exists

The Qodo 2025 State of AI Code Quality survey found **76.4% of developers don't trust AI-generated code without human review** — primarily because of hallucinations. Hallucinations are mostly a context-starvation problem, not a model-quality problem. Context engineering is the response.

## Versus adjacent terms

| Term | Scope |
|---|---|
| Prompt engineering | Crafting one message to the model |
| Context engineering | Curating *everything* the model sees before generation: state, history, tools, retrieved docs, long-term memory |
| [[meta-prompting]] | Wrapping a sloppy user request in a structured instruction set (a tactic *within* context engineering) |
| Vibe coding | Single-prompt, no-structure prototyping (the thing context engineering replaces) |

## Canonical implementation: Cole Medin's template

[github.com/coleam00/context-engineering-intro](https://github.com/coleam00/context-engineering-intro) — works with [[claude-code]] but the pattern generalizes:

1. **`CLAUDE.md`** — global project rules: code structure, testing conventions, reliability rules, system rules
2. **`INITIAL.md`** — feature request with: clear feature description, reference example files, doc/API/MCP links, edge cases
3. **`.claude/commands/`** — custom slash commands (`/generate-prp`, `/execute-prp`)
4. **PRP (Product Requirement Prompt)** — generated artifact: docs + current codebase tree + desired codebase tree + validation commands. The plan the agent executes against.

## Sibling planning patterns

- [[bmad-method]] — six-persona Agile sequence (BA → PM → Architect → PO → SM → Dev)
- [[four-prompting-disciplines]] — Nate B Jones's prompt → context → intent → spec ladder
- [[ai-coding-workflow]] — Cole Medin's broader PLANNING.md + TASK.md + global rules pattern
- [[claude-code]] /ultra-plan — first-party Anthropic answer

These all converge on the same insight: **the AI doesn't need to be smarter, the input needs to be more structured.**

## Sources

- [[summary-worldofai-context-engineering|WorldofAI walkthrough of Cole Medin's template]]

## See Also

- [[ai-coding-workflow]]
- [[meta-prompting]]
- [[claude-code]]
