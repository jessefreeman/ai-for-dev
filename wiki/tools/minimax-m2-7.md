---
type: entity
sources: ["I Cut Claude Code Costs by 95% (Mini Max 2.7).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [tool, ai, llm, model, api]
---

# MiniMax M2.7

Closed-source AI model from MiniMax, released early 2026. Claims to outperform Opus 4.6 on SWE benchmarks while being 20x cheaper and 3x faster. Purpose-built for logic and coding tasks. Accessible via API at platform.minimax.io.

## Performance Claims

- Outperforms Opus 4.6 on SWE benchmarks (as of April 2026)
- ~20x cheaper than Opus 4.6
- ~3x faster response time than Opus 4.6
- Optimized specifically for coding and logic reasoning

These claims come from [[Damian Malliaros]]'s demo video — independent verification not yet in this wiki.

## Use with Claude Code

Can be connected to [[Claude Code]] as an alternative model via API key. Setup approach used by Damian Malliaros: tell Claude Code to configure it automatically.

1. Get API key from platform.minimax.io
2. Prompt Claude Code: *"I want to use MiniMax M2.7. Here's my API key. Configure this for me."*
3. Claude Code reads MiniMax docs and writes the configuration
4. Restart session — model appears in `/models`

See [[Open-Source Model Integration]] for the general pattern.

## Pricing

Subscription-based coding plans (not pure pay-per-token):

| Plan | Price | Requests per 5 hrs |
|------|-------|--------------------|
| Starter | $10 | — |
| Max High Speed | $80 | 15,000 |
| Ultra High Speed | $150 | 30,000 |

The Max High Speed plan (~15K requests/5 hours) is effectively unlimited for most coding workflows, at less than half the price of Claude Code Max ($200/month).

## Other MiniMax Products

- **MaxClaw** — MiniMax's clone of OpenClaw; runs autonomous agents against MiniMax models via web interface
- **MiniMax Agent** — web-based agent for Chrome automations and repetitive tasks

## See Also
- [[Open-Source Model Integration]]
- [[Claude Code]]
- [[Damian Malliaros]]
- [[summary-damian-malliaros-minimax-m27|Source: Cut Claude Code Costs 95%]]
