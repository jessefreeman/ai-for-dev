---
type: entity
sources: ["Every AI Model Explained in 20 Minutes.md", "Claude 4 Sonnet & Opus + Cline FULLY FREE AI Coder! Develop a Full-stack App Without Code!.md", "Claude Just Told Us to Stop Using Their Best Model.md"]
created: 2026-04-06
updated: 2026-04-10
tags: [tool, llm, anthropic, frontier-model]
---

# Claude

[[anthropic|Anthropic]]'s frontier LLM family. Widely considered the best model for work tasks and coding. Distinct from [[Claude Code]], which is the CLI agent harness built on top of Claude models. See [[anthropic]] for the company-level entity.

## Claude 4 (May 2025 generation — launch pricing)

| Tier | Input | Output | Notable |
|---|---|---|---|
| **Opus 4** | $15/1M | $75/1M | #1 SWE-bench Verified at launch; one-shot full-stack capability |
| **Sonnet 4** | $3/1M | $15/1M | Faster than Opus; ~$2.60 to generate a SaaS landing page via Cline ([[summary-worldofai-claude-4-opus-sonnet-cline|source]]) |

The model family later evolved into the 4.5 / 4.6 line that powers [[claude-code|Claude Code]] today. **Current-generation API pricing** (significantly lower for Opus) is in the [[#advisor-strategy-messages-api-beta|Advisor Strategy]] section below.

## Strengths

- **Work tasks**: Modifying Excel documents, writing Word documents, analyzing large amounts of data
- **Coding**: Strong coding performance across the model family
- **Integrations and tools**: Supports pluggable integrations (Gmail, Notion, Figma, Slack, HubSpot, and many more) directly from the Claude web interface
- **Skills**: Users can define reusable skills that customize Claude's behavior (e.g., a "humanizer" skill to reduce AI-sounding writing)

## Tiers (as of early 2026)

| Plan | Price | Notable |
|------|-------|---------|
| Free | $0 | Web, iOS, Android, desktop; code gen and writing; not the frontier model |
| Pro | $17–20/month | Claude Code, Claude co-work, unlimited projects, research, frontier models, Excel/PowerPoint integration |
| Max | $100/month | Everything in Pro, much more usage |
| Heavy | $200/month | Maximum usage tier |

The jump from free to Pro ($20/month) is described as significant — unlocks Claude Code and many use cases unavailable on free tier.

## Advisor Strategy (Messages API, beta)

The Advisor Strategy pairs an expensive model (Opus) as an **advisor** with a cheaper model (Sonnet or Haiku) as the **executor**. The executor handles every request and only escalates to the advisor when it self-assesses a task as difficult. API-level feature — add `type: "advisor_2026_03_01"`, `name: "advisor"`, and optionally `max_uses` to the Messages API request.

**API token pricing (4.5/4.6 generation):**

| Tier | Input / 1M tokens | Output / 1M tokens |
|---|---|---|
| Opus | $5 | $25 |
| Sonnet | $3 | $15 |
| Haiku | $1 | $5 |

**Benchmarks from Anthropic's evaluations:**
- Sonnet + Opus advisor = +2.7pp on SWE-bench over Sonnet alone, −12% cost per agentic task
- Haiku + Opus advisor = 41.2% on BrowseComp vs 19.7% solo (>2× performance)

The `max_uses` parameter caps advisor calls per request for budget control. Escalation is non-deterministic — the executor's self-assessment of difficulty varies by model and prompt. Test extensively before production.

See [[llm-design-patterns#pattern-6-advisor-strategy]] for the full pattern breakdown. For the Claude Code equivalent (`/model opus-plan`), see [[claude-code#advisor-strategy-in-claude-code]].

Source: [[summary-nate-herk-advisor-strategy]].

## Model Family

The Claude family includes multiple tiers (Haiku, Sonnet, Opus) at different capability and cost levels. See the model IDs used in Claude Code for specifics.

## Claude vs Claude Code

- **Claude**: The model family; conversational interface at claude.ai
- **[[Claude Code]]**: A CLI agent harness that wraps Claude models with tools, file access, and agentic capabilities for software development

## Compared to Other Frontier Models

According to [[Matthew Berman]]:
- Claude: best for **work and coding**
- [[ChatGPT]]: best for **ease of use**
- [[Gemini]]: best for **search and deep research**

## See Also

- [[Claude Code]] — the CLI agent harness built on Claude
- [[ChatGPT]] — OpenAI's alternative
- [[Gemini]] — Google's alternative
- [[Open-Source Model Integration]] — running Claude Code with cheaper models
- [[Matthew Berman]] — source
- [[summary-matthew-berman-ai-models|Source: Every AI Model Explained]]
- [[summary-worldofai-claude-4-opus-sonnet-cline|Source: Claude 4 Opus/Sonnet + Cline]] — Claude 4 pricing + cost-of-build data
- [[summary-nate-herk-advisor-strategy|Source: Claude Just Told Us to Stop Using Their Best Model]] — Advisor Strategy demo + benchmarks
- [[llm-design-patterns]] — Pattern 6: Advisor Strategy
