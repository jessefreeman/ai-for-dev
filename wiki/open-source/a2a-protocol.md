---
type: entity
sources: ["AIMock One Mock Server For Your Entire AI Stack.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, ai, agent, protocol, multi-agent]
---

# A2A Protocol (Agent2Agent)

**Open protocol for agent-to-agent discovery and communication.** Handles agent cards, message routing, task management, and SSE streaming responses between agents. The wiki's first reference; first appeared via [[aimock]]'s A2AMock surface in the [[summary-anmol-aimock-launch|AIMock launch source]].

> Stub — first appearance in the wiki via the AIMock launch. Will grow when a primary source covers A2A directly.

- **GitHub**: [github.com/a2aproject/A2A](https://github.com/a2aproject/A2A)

## What it provides

- **Agent card discovery** — agents publish a `.well-known/agent-card.json` describing their identity, skills, and capabilities
- **JSON-RPC message routing** — structured request/response between agents
- **Task management** — long-running tasks with incremental status updates and artifact streaming
- **SSE streaming** — server-sent events for incremental task progress and partial results

## Why it's in the wiki

A2A is the **agent-to-agent counterpart** to [[mcp|MCP]] (agent-to-tools) and [[ag-ui|AG-UI]] (agent-to-frontend). Together they form the connective layer of the 2026 agentic stack:

| Protocol | Connects |
|---|---|
| **[[mcp\|MCP]]** | Agents ↔ tools |
| **A2A** | Agents ↔ other agents |
| **[[ag-ui\|AG-UI]]** | Agents ↔ frontend applications |

A2A is also the **architectural successor** to the wiki's existing multi-agent coverage. Where [[claude-code-subagents]] and [[paperclip]] track multi-agent patterns inside a single tool's runtime, A2A is the **wire protocol** for multi-agent coordination *across* runtimes — a Claude Code agent talking to a LangGraph agent talking to a Mastra agent. The wiki should track A2A adoption as the indicator for whether multi-agent systems become genuinely portable across vendors or stay siloed in each tool's harness.

## Connection to LLM design patterns

A2A is the protocol-layer enabler for [[llm-design-patterns#pattern-4-agent-teams]]. Claude Code's experimental Agent Teams primitive runs inside one Claude Code instance; A2A is the cross-runtime version of the same pattern. If A2A adoption grows, expect agent-team-style coordination to become a generic capability rather than a per-tool feature.

## See Also

- [[aimock]] — A2AMock is the first wiki-tracked test primitive for A2A
- [[mcp]] — sibling protocol (agent ↔ tools)
- [[ag-ui]] — sibling protocol (agent ↔ frontend)
- [[claude-code-subagents]] — single-runtime multi-agent primitive (compare/contrast)
- [[llm-design-patterns]] — Pattern 4 (Agent Teams) is the in-runtime version of what A2A enables across runtimes
- [[multi-agent-orchestration]]
- [[summary-anmol-aimock-launch|Source: AIMock launch (first A2A reference)]]
