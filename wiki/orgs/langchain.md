---
type: entity
sources: ["Open-SWE Opensource Jules! FULLY FREE Async AI Coder IS INSANELY GOOD!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [org, ai, open-source, frameworks, agents]
---

# LangChain

US AI infrastructure company that ships open-source frameworks and tooling for building LLM-powered applications. **The wiki's anchor for "ecosystem-of-open-source-LLM-libraries-from-one-vendor"** — distinct from the frontier labs ([[anthropic|Anthropic]], [[openai|OpenAI]], [[google|Google]]) because LangChain doesn't train models, and distinct from [[nous-research|Nous Research]] because LangChain is a commercial entity with a clear product strategy around its open-source releases.

- **Founded**: 2022 (Harrison Chase et al.)
- **Corporate structure**: VC-backed company
- **Sites**: langchain.com, blog.langchain.com, docs.langchain.com
- **GitHub**: github.com/langchain-ai
- **Strategy**: ship open-source frameworks (LangChain library, LangGraph), then sell hosted observability/orchestration on top (LangSmith)

## Products tracked in this wiki

- **[[open-swe|Open-SWE]]** — open-source asynchronous AI coding agent built on LangGraph. Positioned as a free alternative to Google's Jules. Plans → writes → tests → opens PRs autonomously. Local via [[ollama|Ollama]] or remote via [[openrouter|OpenRouter]]. The wiki's first first-party LangChain-shipped product entry.

## Frameworks LangChain ships (referenced but not yet entity pages)

- **LangChain** (the library) — the original Python/JavaScript framework for chaining LLM calls with tools, prompts, retrievers, etc. Heavily referenced in adjacent threads but doesn't have its own page yet.
- **LangGraph** — the agent-orchestration framework underlying Open-SWE. Stateful multi-step agent workflows. Worth a separate page once the wiki has more LangGraph-built tools to reference.
- **LangSmith** — hosted observability and evaluation platform for LLM apps. The commercial product LangChain monetizes around the open-source frameworks. Out of wiki scope until a source covers it directly.

## Where LangChain fits in the wiki's threads

- **Open-source agent frameworks** — alongside [[hermes-agent|Hermes Agent]] (Nous Research), [[paperclip|Paperclip]], [[thepopebot|ThePopeBot]], the [[gstack|GStack]] / [[superpowers|Superpowers]] / [[agency|Agency]] / [[hermes-agent|Hermes]] cluster of Claude Code skills, and now [[open-swe|Open-SWE]]. LangChain's distinguishing feature in this group is that it ships **the framework** (LangGraph) that other tools could build on, not just the agent itself.
- **Agentic coding platform proliferation** — Open-SWE is another data point in the [[saas-death-spiral|fragmenting agentic-coding market]], joining [[claude-code|Claude Code]], [[cursor|Cursor]], [[augment-agent|Augment Agent]], [[firebase-studio|Firebase Studio]], [[archon-os|Archon OS]], and [[deepcode|DeepCode]].

## How LangChain differs from the other AI orgs in the wiki

| | LangChain | [[anthropic\|Anthropic]] / [[openai\|OpenAI]] / [[google\|Google]] | [[nous-research\|Nous Research]] |
|---|---|---|---|
| Form | Commercial company | Commercial frontier lab | Open-source collective |
| Trains models | No | Yes | No |
| Ships frameworks | **Yes (LangChain, LangGraph)** | No (mostly APIs and products) | No (ships agents, not frameworks) |
| Open-source product strategy | Open-source frameworks + paid hosted observability | Closed weights + paid APIs | Fully open-source |
| Commercial product | LangSmith | API platforms | None tracked |

LangChain is **the framework vendor** in a market where most tracked orgs are model vendors or single-product agent vendors.

## Open questions

- **LangChain (the library) → wiki page**: it's referenced indirectly across many wiki sources but doesn't have its own page. Should be added when a source covers it directly.
- **LangGraph → wiki page**: same situation. Open-SWE is built on LangGraph, several other tools in the agent space are too. Worth a dedicated page.
- **LangSmith and the LangChain commercial strategy**: out of scope until a source covers it.
- **LangChain's relationship to Harrison Chase as a person**: not yet captured. He's a public figure in the AI dev community.

## See Also

- [[open-swe]] — primary product tracked in this wiki
- [[anthropic]], [[openai]], [[google]], [[nous-research]] — other AI orgs in the wiki for comparison
- [[summary-worldofai-open-swe|Source: Open-SWE walkthrough]]
