---
type: entity
sources: ["AIMock One Mock Server For Your Entire AI Stack.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [org, ai, agent-infrastructure, open-source, testing]
---

# CopilotKit

Open-source AI agent infrastructure company. Best known for **AI agent frontend frameworks** (the namesake `CopilotKit` library that connects React frontends to agent backends) and now for **[[aimock|AIMock]]** — the first wiki-tracked unified mock server for the entire agentic AI stack. Ships open-source under the `@copilotkit/*` npm scope and on GitHub at [github.com/CopilotKit](https://github.com/CopilotKit).

> Stub — first appearance in the wiki via the AIMock launch. Will grow as the wiki tracks more of CopilotKit's products.

## Products tracked in this wiki

- **[[aimock|AIMock]]** (`@copilotkit/aimock`) — open-source unified mock server for the agentic stack: LLMock + MCPMock + A2AMock + VectorMock + Services. Ships drift detection, record/replay, and chaos testing as first-class primitives. Supersedes the earlier `@copilotkit/llmock` package as a strict superset.
- **CopilotKit (the framework)** — name-checked but not yet covered as its own entity. The React-side framework that connects agent backends to frontend applications. Likely to come into wiki scope when a primary source covers it directly.

## Adjacent ecosystem

CopilotKit is one of the maintainers of (or closely affiliated with) **[[ag-ui|AG-UI]]** — the open protocol that connects AI agents to frontend applications, adopted by [[langgraph|LangGraph]], CrewAI, Mastra, Google ADK, and AWS Bedrock AgentCore. AG-UI's end-to-end test suite is the canonical production user of AIMock, which is the strongest signal that CopilotKit's mocking infrastructure ships at scale.

## Editorial framing

CopilotKit is an **interested party** in any discussion of AIMock or AG-UI. First-party launch posts (like the AIMock dev.to article that anchors this page) are positioning content — treat capability claims as verifiable from the public repo, treat comparison tables and "no other tool does this" claims as marketing position. The strongest signal that products are real: prior packages (`@copilotkit/llmock`) have public migration histories that can be checked.

## See Also

- [[aimock]] — primary product tracked here
- [[ag-ui]] — adjacent open protocol
- [[anmol-baranwal]] — author of the AIMock launch post
- [[summary-anmol-aimock-launch|Source: AIMock launch (dev.to)]]
