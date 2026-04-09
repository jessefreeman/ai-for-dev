---
type: entity
sources: ["AIMock One Mock Server For Your Entire AI Stack.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, ai, testing, mocking, ci, agent-infrastructure, copilotkit]
---

# AIMock

Open-source unified mock server for the **entire agentic AI stack**, by [[copilotkit|CopilotKit]]. Launched April 2026 (as a strict superset of the earlier `@copilotkit/llmock`). The wiki's first tracked entry for **deterministic CI across the full agentic request path** — and the first piece of infrastructure that explicitly enables the [[saas-death-spiral#shadow-factory-thread|shadow factory operating model]] by making CI determinism affordable for tiny teams shipping complete agentic products.

```
npm install @copilotkit/aimock
```

- **GitHub**: [github.com/CopilotKit/aimock](https://github.com/CopilotKit/aimock)
- **Docs**: [aimock.copilotkit.dev](https://aimock.copilotkit.dev/)
- **License**: open source (per the launch post — verify the specific license against the repo before relying on it for licensing decisions)
- **Docker**: `ghcr.io/copilotkit/aimock` — runs as plain HTTP, language-agnostic

![hero-aimock.png](../../raw/assets/anmol-aimock-launch/hero-aimock.png)

## The thesis

A realistic 2026 agent request touches **6–7 services** before it returns:

```
User message
→ LLM decides to use a tool
→ Tool call via MCP (file system, database, calendar)
→ RAG retrieval from Pinecone or Qdrant
→ Web search via Tavily
→ Cohere reranker to sort results
→ Back to LLM with full context
```

Each arrow is a live network call. Each one can fail, return something slightly different, or cost tokens. **Most teams mock the LLM and leave the other six live**, which makes their test suite a lie. AIMock is the first wiki-tracked tool that takes the full request path seriously.

## The 5 mock surfaces

| Module | Surface |
|---|---|
| **LLMock** | 10 LLM providers (OpenAI, Claude, Gemini, Bedrock, Azure, Vertex AI, Ollama, Cohere, OpenRouter, Anthropic Azure) + any OpenAI-compatible endpoint (Mistral, Groq, Together AI, vLLM). Full streaming, tool calls, reasoning, structured outputs, multi-turn, WebSocket APIs. One fixture format works across all providers. |
| **MCPMock** | Local MCP server speaking full JSON-RPC 2.0 with the Streamable HTTP spec — tools, resources, prompts, full session lifecycle. **The first [[mcp\|MCP]]-mocking primitive in the wiki.** |
| **A2AMock** | Mock server for the [[a2a-protocol\|Agent2Agent (A2A)]] protocol — agent card discovery, message routing, task management, SSE streaming. **First A2A reference in the wiki.** |
| **VectorMock** | Mock vector database supporting Pinecone, Qdrant, and ChromaDB API formats. Solves the dev/staging/prod-index-mismatch problem for RAG pipelines. |
| **Services** | Tavily search, Cohere rerank, OpenAI moderation. *"The APIs everyone forgets to mock."* |

![stack-overview.png](../../raw/assets/anmol-aimock-launch/stack-overview.png)

All five run on **one port via one config file**:

```json
{
  "llm": { "fixtures": "./fixtures/llm", "providers": ["openai", "claude", "gemini"] },
  "mcp": { "tools": "./fixtures/mcp/tools.json" },
  "a2a": { "agents": "./fixtures/a2a/agents.json" },
  "vector": { "path": "/vector", "collections": [] }
}
```

```
npx aimock --config aimock.json --port 4010
```

## The three load-bearing primitives (no other AI mock library has these)

### 1. Drift Detection

Three-way comparison run daily in CI against live providers:

1. **SDK types** — what TypeScript says the response shape should be
2. **Real API responses** — actual live calls to OpenAI / Anthropic / Gemini
3. **AIMock output** — what the mock returns

If any of the three disagree → test fails within 24 hours of the provider changing something. **Critical** severity = mock mismatches reality, fail immediately. **Warning** = provider added a field neither SDK nor mock knows about, log as early warning. The wiki's first concrete answer to *"how do you keep mocks from going stale silently?"*

### 2. Record and Replay

VCR-style fixture capture: on a fixture miss, AIMock proxies to the configured upstream provider, relays the response immediately, **and saves the response as a fixture for future runs**. Stream collapsing across six formats (OpenAI SSE, Anthropic SSE, Gemini SSE, Cohere SSE, Ollama NDJSON, Bedrock EventStream). Auth headers are forwarded upstream but never saved in fixtures.

CI mode: **`--strict`** turns unmatched requests into 503s that fail tests immediately, so missing fixtures can't slip through.

### 3. Chaos Testing

Inject failures at three levels (server-wide, per fixture, per individual request via `x-aimock-chaos-*` headers) at three modes:
- **drop** — HTTP 500 with chaos error
- **malformed** — HTTP 200 with invalid JSON
- **disconnect** — destroy TCP connection with no response

All chaos events tracked in the journal and counted in Prometheus metrics. **The offensive-side complement to [[ai-personal-agent-hardening]]**: hardening covers what attacks look like; chaos covers how to verify your defenses survive provider failures.

## Other primitives

- **Embeddings** — `POST /v1/embeddings` with deterministic vectors generated from input hash (default 1536 dimensions)
- **WebSocket APIs** — OpenAI Realtime, OpenAI Responses, Gemini Live (raw RFC 6455)
- **Sequential Responses** — different response per successive call to the same prompt (retry logic, multi-turn workflows)
- **Streaming Physics** — configurable `ttft`, `tps`, `jitter` with pre-built profiles (fast model, reasoning model, overloaded system)
- **Prometheus Metrics** at `/metrics`
- **Programmatic API** with `enableRecording()` and `requestTransform` for normalizing dynamic data like timestamps

## Production user: AG-UI

[[ag-ui|AG-UI]] — the open protocol connecting AI agents to frontend applications, adopted by [[langgraph|LangGraph]], CrewAI, Mastra, Google ADK, and AWS Bedrock AgentCore — uses AIMock for its end-to-end test suite. **The strongest signal** that AIMock works at scale: a real production user from outside CopilotKit's own marketing surface.

Reference setup: [github.com/ag-ui-protocol/ag-ui/tree/main/apps/dojo/e2e/fixtures/openai](https://github.com/ag-ui-protocol/ag-ui/tree/main/apps/dojo/e2e/fixtures/openai)

## Why this matters for the wiki — the shadow factory connection

The wiki's [[saas-death-spiral]] thread tracks the shift toward 3-person agentic teams shipping complete products (per [[attractor|the StrongDM 3-person factory pattern]] in [[summary-nate-b-jones-five-levels|5 Levels of AI Coding]]). The user has flagged shadow-factory operating models as a personal vision worth tracking. **AIMock is the first wiki-tracked piece of infrastructure that takes the constraints of that operating model seriously**:

- A 3-person team has *no ops capacity* to debug flaky tests across six services
- A 3-person team cannot afford to find out a provider changed something when a customer files a bug → drift detection
- A 3-person team cannot afford to hand-write fixtures for multi-turn agent conversations → record & replay
- A 3-person team cannot afford to ship without verifying the failure modes → chaos testing

The wiki tracks AIMock as **enabling infrastructure for the shadow factory pattern**, sibling to [[trigger-dev|trigger.dev]] (cron primitive for `claude -p`-style autonomous agents), [[supabase|Supabase]] (memory + auth backbone for [[open-brain|OpenBrain]] / [[archon-os|Archon OS]]), and [[mcp|MCP]] (universal tool protocol). All four are infrastructure primitives a 3-person team can rely on without an ops team.

## Migration paths

The official docs include guides for:
- **MSW** — keep MSW for general REST/GraphQL, use AIMock for AI endpoints only
- **VidaiMock**, **mock-llm**, **Mokksy**, **Python mocks** — full migration guides
- **`@copilotkit/llmock`** — find-and-replace upgrade; the `LLMock` class, fixture formats, and programmatic API are unchanged

## See Also

- [[copilotkit]] — vendor
- [[ag-ui]] — flagship production user (open protocol)
- [[a2a-protocol]] — Agent2Agent protocol (A2AMock surface)
- [[mcp]] — MCPMock is the first MCP-mocking primitive in the wiki
- [[saas-death-spiral]] — shadow factory thread; AIMock is enabling infrastructure
- [[attractor]] — StrongDM 3-person factory; conceptual sibling
- [[ai-personal-agent-hardening]] — chaos testing is the offensive-side complement
- [[llm-design-patterns]] — adjacent (deterministic mocks are infrastructure for testing the workflow patterns)
- [[trigger-dev]] — sibling 3-person-team infrastructure (cron primitive)
- [[supabase]] — sibling 3-person-team infrastructure (memory + auth backbone)
- [[summary-anmol-aimock-launch|Source: AIMock launch on dev.to]]
