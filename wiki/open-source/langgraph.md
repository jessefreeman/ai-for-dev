---
type: entity
sources: ["Open-SWE Opensource Jules! FULLY FREE Async AI Coder IS INSANELY GOOD!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [open-source, ai, agent, framework, langchain, multi-agent, stateful, graph]
---

# LangGraph

Open-source Python framework from [[langchain|LangChain]] for building **stateful, multi-step agent workflows** as **directed graphs**. Built on top of the [[langchain-library|LangChain library]] but a separate package and a separate mental model — where LangChain (the library) is about composing chains of LLM calls, LangGraph is about coordinating an agent's state across many decision points, including loops, branching, and parallel execution.

- **License**: MIT
- **Site**: langchain-ai.github.io/langgraph
- **GitHub**: github.com/langchain-ai/langgraph
- **Vendor**: [[langchain|LangChain]] (the company)

## What it does

LangGraph models an agent's behavior as a **graph of nodes and edges**:

- **Nodes** are functions (often LLM calls or tool executions) that take state in and return state out
- **Edges** define which node runs next, including **conditional edges** that branch on state
- **State** is a typed dict (or Pydantic model) that flows through the graph and accumulates as nodes execute
- **Cycles are allowed** — the graph can loop back, which is what enables agent patterns like "plan → execute → check → re-plan if failed"

The graph abstraction makes complex agent control flow **inspectable and testable** in ways that vanilla [[langchain-library|LangChain library]] chains aren't. You can visualize the graph, simulate it with test inputs, and reason about state transitions explicitly.

## Why it exists (the LangChain → LangGraph evolution)

LangChain (the library) originally had its own agent abstractions ("ReAct agent," "Self-ask agent," etc.) built on chains. They worked for simple cases but **fell apart on complex workflows**: state management was implicit, error recovery required manual intervention, and parallel execution wasn't really supported. LangGraph was the explicit "we needed a different mental model for agents" answer — separate package, separate concepts, but built to interoperate with everything else in the LangChain ecosystem.

The split mirrors a pattern across multiple AI frameworks: the original chain/sequence abstraction works for prompting workflows, but **agent workflows need stateful control flow** (loops, retries, conditional branches based on intermediate results). Different frameworks landed on different solutions; LangGraph's is the "graph-as-state-machine" approach.

## Where the wiki references it

- **[[open-swe|Open-SWE]]** — LangChain's open-source asynchronous coding agent is **built on LangGraph**. The plan → execute → review → PR-open workflow is encoded as a LangGraph graph with separate nodes for the planning agent, execution agent, and review agent. Per [[summary-worldofai-open-swe|the WorldofAI walkthrough]], LangGraph is the framework that makes Open-SWE's async + multi-agent + state-managed architecture possible.

This is the only direct LangGraph reference in the wiki so far. As more LangGraph-built tools land, expand this section.

## How LangGraph fits among adjacent frameworks

| Framework | Form | Best for | Wiki example |
|---|---|---|---|
| **LangGraph** | Graph-of-nodes state machine | Stateful multi-step agents with control flow | [[open-swe\|Open-SWE]] |
| **[[langchain-library\|LangChain library]] chains** | Sequential pipeline | Simple LLM-call composition | [[summary-pixegami-python-rag-tutorial\|pixegami's RAG demo]] |
| **[[mcp\|MCP]]** | Protocol (not a framework) | Tool integration across LLM clients | Most of the wiki |
| **GEPA** ([[hermes-agent\|Hermes Agent]]) | Closed self-improvement loop | Agents that update their own prompts over time | [[hermes-agent]] |
| **Claude Code skills** | Plugin pattern | Composable behavior layered on a fixed agent harness | [[gstack]], [[superpowers]], [[agency]] |

LangGraph is the **most explicit "agent as state machine"** framework in the wiki. The other approaches are looser — closures and prompting patterns rather than typed graphs.

## Why this matters for the wiki's threads

- **Open-source agent frameworks** — LangGraph is one of a small number of widely-used frameworks for stateful agents. Knowing it underlies Open-SWE makes the comparison to [[hermes-agent|Hermes Agent]] (GEPA-loop), [[paperclip|Paperclip]] (multi-agent dashboard), and [[thepopebot|ThePopeBot]] (Docker + GitHub Actions) sharper — they're all solving the same coordination problem with different abstractions.
- **Inspectability + testability** — LangGraph's graph-as-data-structure approach is unusual in that you can serialize, visualize, and statically reason about the agent's control flow. Most other frameworks (Claude Code, Hermes Agent, Cursor's compose) give you "the agent does what the agent does" with limited introspection. Worth flagging for any future agent comparison analysis.

## Open questions

- **Performance / overhead** — what's the actual runtime cost of LangGraph's graph machinery vs raw Python control flow? Not covered in any current source.
- **Adoption beyond LangChain's own products** — who else is building on LangGraph? The wiki doesn't have visibility into this yet.
- **Migration patterns from LangChain agents → LangGraph** — for users on the older API.

## See Also

- [[langchain-library]] — the underlying framework LangGraph builds on
- [[langchain]] — the company shipping both
- [[open-swe]] — wiki's only direct LangGraph reference (for now)
- [[hermes-agent]], [[paperclip]], [[thepopebot]] — adjacent agent frameworks for comparison
- [[summary-worldofai-open-swe|Source: Open-SWE walkthrough]]
