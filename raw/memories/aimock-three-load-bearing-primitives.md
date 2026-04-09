---
title: AIMock's three load-bearing primitives — drift detection, record/replay, chaos
summary: The three things no other AI mocking tool ships. Drift detection catches provider changes within 24h via three-way comparison (SDK types vs real API vs mock).
tags: [tool_aimock, concept_testing, concept_ci, concept_drift_detection, concept_chaos_engineering, source_anmol_aimock_launch]
---

# AIMock's three load-bearing primitives

## Context

From [[summary-anmol-aimock-launch|AIMock launch (CopilotKit)]]. See also [[aimock]], [[ai-personal-agent-hardening]].

## Content

The three primitives that distinguish [[aimock]] from every other AI mocking tool. Each maps to a specific failure mode that traditional mocking ignores.

### 1. Drift Detection — three-way comparison

Runs daily in CI against live providers. For each request, compares:
1. **SDK types** — what TypeScript says the response shape should be
2. **Real API responses** — actual live calls to OpenAI/Anthropic/Gemini
3. **AIMock output** — what the mock returns

If any disagree → test fails within **24 hours** of the provider changing something. Severity levels: critical (fail), warning (provider added a field neither SDK nor mock knows about), OK (all three agree). **The wiki's first concrete answer to *"how do you keep mocks from going stale silently?"*** Every mock library in history has had the same bug: fixtures go stale silently. Drift detection treats fixture staleness as a first-class CI failure.

### 2. Record and Replay — VCR-style fixture capture

On a fixture miss, AIMock proxies to the configured upstream provider, relays the response, **and saves it as a fixture for future runs**. Stream collapsing across six formats (OpenAI SSE, Anthropic SSE, Gemini SSE, Cohere SSE, Ollama NDJSON, Bedrock EventStream). Auth headers forwarded upstream but never saved in fixtures.

CI mode: **`--strict`** turns unmatched requests into 503s that fail tests immediately, so missing fixtures can't slip through silently.

### 3. Chaos Testing — inject failures at three levels

Three failure modes:
- **drop** — HTTP 500 with chaos error code
- **malformed** — HTTP 200 with invalid JSON
- **disconnect** — destroy TCP connection with no response

Three injection levels: server-wide rates, per-fixture rates, per-request via `x-aimock-chaos-*` headers. All chaos events tracked in journal with `chaosAction` field, counted in Prometheus metrics.

**Connection to defensive security**: chaos testing is the **offensive-side complement to [[ai-personal-agent-hardening]]**. The hardening page captures *what attacks look like and how to defend*; chaos testing captures *how to verify your defenses survive provider failures*. Together they're the wiki's first concrete answer to "is this agent production-ready?"
