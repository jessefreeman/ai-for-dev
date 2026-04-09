---
type: entity
sources: ["AIMock One Mock Server For Your Entire AI Stack.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, ai, agent, protocol, frontend]
---

# AG-UI

**Open protocol that connects AI agents to frontend applications.** Adopted by [[langgraph|LangGraph]], CrewAI, Mastra, Google ADK, and AWS Bedrock AgentCore. The wiki's first reference to AG-UI; first appeared in the [[summary-anmol-aimock-launch|AIMock launch source]] as a flagship production user of [[aimock]].

> Stub — first appearance in the wiki via the AIMock launch. Will grow when a primary source covers AG-UI directly.

- **GitHub**: [github.com/ag-ui-protocol/ag-ui](https://github.com/ag-ui-protocol/ag-ui)

## Why it's in the wiki

AG-UI is the **frontend-side counterpart** to [[mcp|MCP]] (which connects agents to *tools*) and [[a2a-protocol|A2A]] (which connects agents to *other agents*). The three protocols together form the connective layer of the 2026 agentic stack:

| Protocol | Connects | Direction |
|---|---|---|
| **[[mcp\|MCP]]** | Agents ↔ tools / data sources | Agent reaches out to capabilities |
| **[[a2a-protocol\|A2A]]** | Agents ↔ other agents | Agent collaborates with peers |
| **AG-UI** | Agents ↔ frontend applications | Agent surfaces to a human user |

The wiki should treat AG-UI as the third leg of this stool. As it gains adoption (already in 5 named frameworks), it becomes the standard way to ship agent UIs — important for any wiki coverage of agent frontend frameworks, [[copilotkit|CopilotKit]] specifically, and the broader 2026 "agentic UX" thread.

## Production use

AG-UI's end-to-end test suite uses [[aimock|AIMock]] with fixture-driven responses across LLM providers. The reference setup at [`apps/dojo/e2e/fixtures/openai`](https://github.com/ag-ui-protocol/ag-ui/tree/main/apps/dojo/e2e/fixtures/openai) is the canonical "AIMock at scale" example.

## See Also

- [[aimock]] — used in AG-UI's E2E tests
- [[copilotkit]] — closely affiliated with AG-UI's development
- [[mcp]] — sibling protocol (agent ↔ tools)
- [[a2a-protocol]] — sibling protocol (agent ↔ agents)
- [[langgraph]] — adoption framework
- [[summary-anmol-aimock-launch|Source: AIMock launch (first AG-UI reference)]]
