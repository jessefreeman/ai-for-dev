---
type: source-summary
sources: ["I built something.....md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, journey-kits, agent-packaging, registry, matthew-berman]
---

# I Built Something — Matthew Berman Introduces Journey Kits

**Source**: YouTube — [[matthew-berman|Matthew Berman]], published 2026-04-04
**Tool**: [[journey-kits|Journey / Journey Kits]] (`journeykits.ai`)

## Summary

[[matthew-berman|Matthew Berman]] launches **Journey**, a registry-and-package-manager for end-to-end AI agent workflows. The unit of distribution is a **kit** — a single installable bundle that contains everything an agent needs to reproduce a workflow: skills, tools (regular code), learnings, memories, services, schemas, tests, and failure examples. The pitch in one sentence: **"npm for agent workflows."** Built host-agnostic — kits adapt themselves to whatever harness you're running (OpenClaw, Nemoclaw, Hermes Agent, Claude Code, Claude Desktop, Cloud Co-work). The motivating use case is Berman's own knowledge-base RAG system (Telegram → ingest → vector store → agent query) which he wants his team to use without having to recreate from scratch.

## What's in a kit

A kit packages **everything** required to make a workflow reproducible across agents. Per Berman's walkthrough of the knowledge-base RAG kit:

- **Dependencies**: API keys, runtimes (Node), CLIs (`summarize`)
- **Verified harnesses**: Claude, plus a "this works in OpenClaw, Nemoclaw, ..." adaptability layer
- **Models**: main model + embeddings model (interchangeable; OpenAI, Google, Ollama nomic, etc.)
- **External services**: FX Twitter (parser), Firecrawl (scraper), Chrome DevTools (browser)
- **Failures overcome**: documented edge cases the publisher already solved, so the consumer doesn't burn tokens rediscovering them
- **`kit.md` file**: human-readable spec — goal, when to use, setup steps, validations, outputs, source files
- **Skills**: agent-side instruction documents (e.g., the "knowledgebase skill" telling the agent how to operate the DB)
- **Database schemas**: the actual SQL the publisher used; consumer can customize
- **Source files**: traditional code (tools) the agent can run
- **Versioning**: every release tracked; agents notify users on update with a changelog
- **Learnings**: post-install feedback from consumer agents flows back into the kit ("I'm on Node 20 + GPT-5.4 and it works fantastic") — kits get better over time

## How install works (agent-first)

The install pattern is **deliberately agent-first**: the user copies a single prompt and gives it to their agent, which then fetches the kit and self-installs. Example: *"fetch the journey kit from <URL> and follow it."* Optional CLI path: `npm install -g journey-kits`. Cloud Desktop has a custom guide.

Once installed, the **journey skill itself** is a kit, so the user can later say *"show me a kit that'll help me code better"* in natural language and the agent queries the registry, presents results, and can install discovered kits without ever leaving the agent surface.

## Team / org features

- **Organizations** (teams of agents) with per-agent permissions
- **Shared resources** — credentials and pointers to shared infra (databases, API keys, one-password vaults). Journey **does not store the credentials**; it stores the *pointer* to where the consuming agent should fetch them. This is the part most worth understanding for borrowable concepts — it's the "private registry without leaking secrets" pattern, applicable to any agent-team architecture.
- **Forking** public kits into private org-only variants
- **Audit log** of all team activity
- **Reputation scoring** for kit publishers — useful kits → higher reputation → more discoverability
- **Community spam/malicious flagging** + Berman's own pre-publication scanning

## Pricing (at recording)

- **Free** for discovery, install, publish on the public registry
- **Paid tier (future, undecided)** for team / enterprise features
- No credit card required to sign up; just an agent name

## Why this is in the wiki

Journey is the wiki's **first dedicated agent-workflow packaging format**. It sits at the intersection of three threads the wiki already tracks:

1. **[[agentic-harness-primitives|Agentic Harness Primitives]]** — Journey is a *user-facing implementation* of the registry / agent-type-system / tool-pool-assembly primitives Nate B Jones derived from the Claude Code leak. Where Cole Medin's [[ai-coding-workflow|PLANNING.md / TASK.md pattern]] is the lightweight in-repo version of "package a workflow," Journey is the cross-org distribution version.
2. **[[skills-sh|skills.sh]]** — same instinct (registry of installable agent capabilities), different scope. skills.sh ships *skills* (markdown + scripts) for a single host (Claude Code). Journey ships **everything that surrounds the skill** (dependencies, services, schemas, learnings, versioning, host-adaptation) and is **host-agnostic**. Journey is what skills.sh becomes when you take "publishable agent capability" seriously as a software-distribution problem.
3. **[[mcp|MCP]]** — Journey is *not* an MCP server; it's a packaging layer that often produces things which then *use* MCP. The two are complementary.

The user's stated interest is in **dissecting the kit format for borrowable concepts** — see the [[journey-kits]] entity page for the breakdown.

## Caveats

- Single-source coverage at recording time (Berman's own launch video). Treat capability claims as the publisher's marketing position until a third-party walkthrough lands.
- Hosted registry; the kit format is described but not formally specified at recording time. Long-term portability of kits depends on whether Berman publishes the format spec.
- "Free, but enterprise pricing TBD" framing is the standard pre-monetization SaaS pattern. Worth tracking whether the public registry stays free.

## See Also

- [[journey-kits|Journey Kits]] — entity page (with the "borrowable concepts" breakdown)
- [[matthew-berman|Matthew Berman]]
- [[agentic-harness-primitives|Agentic Harness Primitives]]
- [[skills-sh|skills.sh]] — sibling registry, narrower scope
- [[claude-code-subagents|Claude Code Sub-Agents]] — Anthropic's first-party multi-agent primitive (kits are arguably subagent specs in Journey form)
- [[archon-os|Archon OS]] — sibling "AI OS for AI coding" with overlapping packaging instincts
- [[mcp|MCP]] — complementary protocol; not a competitor
