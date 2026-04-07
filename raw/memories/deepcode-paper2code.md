---
title: DeepCode — Multi-Agent Coding with Paper2Code Pipeline
summary: HKUDS's open-source DeepCode is a multi-agent coding platform whose standout feature is Paper2Code — converting academic research papers into working implementations through a document-parsing → algorithm-extraction → code-synthesis → QA chain.
tags: [tool_deepcode, topic_coding_agents, topic_research_to_code, source_worldofai_deepcode]
---

# DeepCode — Multi-Agent Coding with Paper2Code Pipeline

## Context

From [[summary-worldofai-deepcode|WorldofAI's DeepCode walkthrough]]. See also [[deepcode]].

## Content

**Origin**: HKUDS (Hong Kong University Data Science). Open source. CLI + Streamlit web dashboard.

**Standout feature — Paper2Code**: research-to-production pipeline that's not in any commercial coding agent ([[claude-code|Claude Code]], [[cursor|Cursor]], [[augment-agent]], [[firebase-studio]]). Document parsing → algorithm extraction → code synthesis → quality assurance, dispatched across specialized agents.

**Other capabilities**: Text2Web (frontend gen from descriptions or wireframes), Text2Backend (scalable backends with auth/microservices/MCP-referenced data sources), Code Planning (architecture + tech stack design), Reference Mining (build a knowledge graph of best libraries for the task), Code Indexing (project-wide retrieval).

**Multi-agent architecture, not a copilot**: DeepCode dispatches specialized agents per task (document parsing, intent understanding, code planning, reference mining, code generation, quality assurance) — coordinator pattern, not a single LLM call.

**Setup**: `git clone HKUDS/DeepCode`, three install paths (source, `uv`, `pip install`), configure `mcp_agent.config.yaml` and `mcp_agent.secrets.yaml` with API keys (OpenAI / Anthropic / [[ollama|Ollama]]), launch web UI with `deepcode` command at localhost:8501.

**Recommended models**: Anthropic Sonnet/Opus or Kimi K2 (free, locally installable) for the Text2Web flow.

**Where it fits in the wiki**: alongside [[archon-os]], [[claude-code]], [[cursor]], [[firebase-studio]], [[augment-agent]] in the agentic-coding-platform space, but uniquely targeted at **research-to-implementation workflows** rather than business app generation.
