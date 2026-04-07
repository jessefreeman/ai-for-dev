---
title: Open-SWE — LangChain's Open-Source Async Jules Alternative
summary: LangChain's Open-SWE is an open-source asynchronous AI coding agent built on LangGraph. Plans, writes, tests, opens PRs autonomously. Bring-your-own-API-key (Anthropic, OpenAI, Google), or use OpenRouter free tier, or fully local via Ollama. Self-hostable, free.
tags: [tool_open_swe, org_langchain, topic_agentic_coding, topic_async_agents, source_worldofai_open_swe]
---

# Open-SWE — LangChain's Open-Source Async Jules Alternative

## Context

From [[summary-worldofai-open-swe|WorldofAI's Open-SWE walkthrough]]. See also [[open-swe]] (entity), [[langchain]] (org page).

## Content

**What it is**: open-source asynchronous AI coding agent built on **LangGraph** by **[[langchain|LangChain]]**. Positioned explicitly as a free alternative to Google's Jules (which moved features behind a paywall).

**The async framing**: you queue it up and walk away. Open-SWE plans the work, executes it, runs tests, iterates on failures, and opens a GitHub pull request when done. You're not watching it work — you check back later and review the PR. This is **a different category from** [[continue|Continue]] (interactive autocomplete) and [[cursor|Cursor]] (interactive compose).

**Capabilities**:
- Codebase understanding (clones and reads the repo before planning)
- Plan-first execution (step-by-step plan for human review before any code is written)
- Multi-file edits across the whole repo
- Test execution + iteration on failures
- Self-review (separate "review" agent checks the work)
- Automatic GitHub PR opening
- Token usage + cost visibility per generation

**Backend flexibility** (the standout feature):
- Bring your own API key (Anthropic, OpenAI, Google, etc.)
- Use [[openrouter|OpenRouter]] free tier for cost-free remote inference
- Run fully local via [[ollama|Ollama]]

**No vendor lock-in**, unlike Jules (Gemini-only) or Claude Code (Claude-default).

**Where to run it**:
- **Cloud**: swe.langchain.com (free tier with limits)
- **Self-host**: clone `langchain-ai/open-swe`, `yarn install`, configure dual `.env` files, create a GitHub App, configure webhooks via ngrok for local, run `yarn dev` in two terminals (LangGraph agent + web app)

**Why it matters in the wiki**: another data point in the [[saas-death-spiral|fragmenting agentic-coding market]], distinctive for being **async + open-source + self-hostable + bring-your-own-model** — no other tracked tool checks all four boxes simultaneously.
