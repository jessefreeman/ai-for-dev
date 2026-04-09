---
title: AIMock — unified mock server for the entire agentic AI stack
summary: CopilotKit's open-source mock server covering LLMs, MCP, A2A, vector DBs, and search/rerank/moderation services. The wiki's first deterministic-CI primitive for the full agentic request path.
tags: [tool_aimock, org_copilotkit, concept_testing, concept_ci, concept_mocking, source_anmol_aimock_launch]
---

# AIMock — unified mock server for the agentic stack

## Context

From [[summary-anmol-aimock-launch|AIMock launch (CopilotKit / Anmol Baranwal)]]. See also [[aimock]], [[copilotkit]], [[ag-ui]].

## Content

**AIMock** (`@copilotkit/aimock`, open source) is the first wiki-tracked mock server that covers the **entire** 2026 agentic AI request path — not just the LLM. The thesis: a realistic agent request touches 6–7 services (LLM + MCP tool server + vector DB + reranker + web search + moderation + sub-agent over A2A); existing mocking libraries cover one piece each, so most teams stitch 3–4 libraries together and still have gaps.

**5 mock surfaces** unified on one port + one config file:
- **LLMock** — 10 LLM providers (OpenAI/Claude/Gemini/Bedrock/Azure/Vertex/Ollama/Cohere/OpenRouter/Anthropic Azure) + any OpenAI-compatible endpoint. Real HTTP server, full streaming, tool calls, reasoning, WebSocket APIs.
- **MCPMock** — local MCP server speaking full JSON-RPC 2.0 + Streamable HTTP spec. **First MCP-mocking primitive in the wiki.**
- **A2AMock** — mock for the [[a2a-protocol|A2A protocol]] (agent card discovery, message routing, SSE streaming). **First A2A reference in the wiki.**
- **VectorMock** — Pinecone, Qdrant, ChromaDB API formats.
- **Services** — Tavily search, Cohere rerank, OpenAI moderation. *"The APIs everyone forgets to mock."*

**Production user**: [[ag-ui|AG-UI]] (the open agent↔frontend protocol adopted by LangGraph, CrewAI, Mastra, Google ADK, AWS Bedrock AgentCore) uses AIMock for its end-to-end test suite. Strongest signal that AIMock works at scale outside CopilotKit's own marketing.
