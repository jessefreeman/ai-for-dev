---
title: The wiki now has a complete self-hosted AI infrastructure recipe stack
summary: Cole's local-AI-packaged + Wolfgang/NetworkChuck SSL + Bijan multi-node vLLM + Docker Model Runner Mac path = full path from "try local AI" to "household uses it on phones."
tags: [topic_local_ai, topic_self_hosting, tool_supabase, tool_open_webui, tool_vllm, source_cole_medin_local_supabase_rag]
---

# The wiki's complete self-hosted AI infrastructure recipe stack

## Context

From [[summary-cole-medin-local-supabase-rag]], [[summary-wolfgangs-channel-local-ssl-homelab]], [[summary-networkchuck-open-webui-domain-ssl]], [[summary-bijan-bowen-vllm-distributed-inference]], [[summary-docker-model-runner-mac-playground]]. See also [[supabase]], [[open-webui]], [[vllm]], [[docker-model-runner]], [[self-hostable-alternatives]].

## Content

After the 2026-04-08 batch, the wiki has the full path from **"I want to try local AI"** to **"my household uses it on their phones from cellular"**, broken into four cleanly composable layers:

### Layer 1 — model runtime
Pick one based on your hardware:
- **Apple Silicon Mac**: [[docker-model-runner|Docker Model Runner]] (beta, official Docker support, `model-runner.docker.internal` hostname for app code)
- **Single Nvidia GPU + serious throughput**: [[vllm|vLLM]] in Docker with FP8 quantization
- **Single Nvidia GPU + light use**: [[ollama|Ollama]] or LM Studio
- **Multiple GPU machines you want to pool**: [[summary-bijan-bowen-vllm-distributed-inference|multi-node vLLM via Ray cluster]] (caveat: heterogeneous GPUs get bottlenecked by the weakest member; Ray is fragile to env mismatches; usually not worth it unless your single best GPU genuinely isn't enough)

### Layer 2 — full local-AI stack
**[[summary-cole-medin-local-supabase-rag|Cole Medin's `local-ai-packaged`]]** — single docker-compose with:
- **n8n** (workflow / agent runtime)
- **Postgres** (chat history, agent state)
- **Self-hosted Supabase** (auth, REST API, storage, **PGVector for RAG**)
- **Ollama** (LLM + `nomic-embed-text` 768-dim embeddings)
- **Open WebUI** (chat UI)
- **Flowise** (visual agent builder, optional)
- **Qdrant** (alternative vector DB, optional)

Repo: `github.com/coleam00/local-ai-packaged`. Cole's PGVector-as-vector-store choice is the connection point back to [[open-brain|OpenBrain]] (Postgres + PGVector + MCP as agent memory) — same database, different access pattern.

### Layer 3 — exposing it to family / team
Localhost is fine for the developer who installed it, useless for everyone else. Two recipes:
- **[[summary-wolfgangs-channel-local-ssl-homelab|Wolfgang's homelab SSL guide]]** — generic Nginx Proxy Manager + Let's Encrypt DNS-01 challenge for valid SSL on private IPs. Supports wildcard certs.
- **[[summary-networkchuck-open-webui-domain-ssl|NetworkChuck's Open WebUI domain + SSL]]** — same pattern but specifically tuned for Open WebUI: Cloudflare DNS + Nginx Proxy Manager + subdomain like `ai.yourdomain.com`.

Both recipes use the same Nginx Proxy Manager + Let's Encrypt pattern. Difference is just the DNS provider (DuckDNS / Namecheap vs Cloudflare). Either works.

### Layer 4 — knowledge base for the agent
**[[summary-cole-medin-crawl4ai-v2|Crawl4AI v2]]** for building the corpus → choose your downstream:
- **Vector store** (Supabase PGVector / Qdrant) for traditional RAG
- **Long-context model** ([[gemini]] 2.0 Flash) for [[context-augmented-generation|CAG]]
- **Curated MCP server** ([[context7]]-style)
- **This wiki's own ingest pipeline** for manual curation

The **synthesis**: the wiki had pieces of this story before, but the 2026-04-08 batch is the first time you can read the wiki and walk through the complete recipe end-to-end without filling in gaps from elsewhere.
