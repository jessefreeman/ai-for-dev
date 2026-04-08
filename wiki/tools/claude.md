---
type: entity
sources: ["Every AI Model Explained in 20 Minutes.md", "Claude 4 Sonnet & Opus + Cline FULLY FREE AI Coder! Develop a Full-stack App Without Code!.md"]
created: 2026-04-06
updated: 2026-04-08
tags: [tool, llm, anthropic, frontier-model]
---

# Claude

[[anthropic|Anthropic]]'s frontier LLM family. Widely considered the best model for work tasks and coding. Distinct from [[Claude Code]], which is the CLI agent harness built on top of Claude models. See [[anthropic]] for the company-level entity.

## Claude 4 (May 2025 generation)

| Tier | Input | Output | Notable |
|---|---|---|---|
| **Opus 4** | $15/1M | $75/1M | #1 SWE-bench Verified at launch; one-shot full-stack capability |
| **Sonnet 4** | $3/1M | $15/1M | Faster than Opus; ~$2.60 to generate a SaaS landing page via Cline ([[summary-worldofai-claude-4-opus-sonnet-cline|source]]) |

The model family later evolved into the 4.5 / 4.6 line that powers [[claude-code|Claude Code]] today.

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
