---
title: The three 2026 agent connective protocols — MCP, A2A, AG-UI
summary: The 2026 agentic stack has converged on a three-protocol connective layer — MCP for agent↔tools, A2A for agent↔agents, AG-UI for agent↔frontend.
tags: [concept_protocols, tool_mcp, tool_a2a, tool_ag_ui, concept_agent_architecture, source_anmol_aimock_launch]
---

# The three 2026 agent connective protocols

## Context

From [[summary-anmol-aimock-launch|AIMock launch]] which surfaces all three in one source. See also [[mcp]], [[a2a-protocol]], [[ag-ui]].

## Content

The 2026 agentic stack has converged on a **three-protocol connective layer**, each handling a different relationship the agent has with its environment:

| Protocol | Connects | Direction | Wiki entry |
|---|---|---|---|
| **MCP** (Model Context Protocol) | Agents ↔ tools / data sources | Agent reaches out to capabilities | [[mcp]] (canonical concept page; the wiki's deepest single-concept coverage) |
| **A2A** (Agent2Agent) | Agents ↔ other agents | Agent collaborates with peers across runtimes | [[a2a-protocol]] (stub; first wiki appearance) |
| **AG-UI** | Agents ↔ frontend applications | Agent surfaces to a human user | [[ag-ui]] (stub; first wiki appearance) |

**Why this matters**: until April 2026 the wiki tracked MCP as a singular Anthropic-published standard. The AIMock launch source surfaces two adjacent protocols (A2A from `a2aproject/A2A`, AG-UI adopted by LangGraph/CrewAI/Mastra/Google ADK/AWS Bedrock AgentCore) that together complete the connective layer. The wiki should track adoption of all three as separate threads going forward — each one becoming standard means a different category of integration cost goes away for agent builders.

**The cross-runtime multi-agent angle**: A2A is the **architectural successor** to the wiki's existing multi-agent coverage. Where [[claude-code-subagents]] and [[paperclip]] track multi-agent patterns *inside* a single tool's runtime, A2A is the **wire protocol** for multi-agent coordination *across* runtimes — a Claude Code agent talking to a LangGraph agent talking to a Mastra agent. The wiki should track A2A adoption as the indicator for whether multi-agent systems become genuinely portable across vendors or stay siloed in each tool's harness.

**Connection to LLM design patterns**: A2A is the protocol-layer enabler for [[llm-design-patterns#pattern-4-agent-teams]]. Claude Code's experimental Agent Teams primitive runs inside one Claude Code instance; A2A is the cross-runtime version of the same pattern.
