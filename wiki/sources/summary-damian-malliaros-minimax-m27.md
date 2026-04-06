---
type: source-summary
sources: ["I Cut Claude Code Costs by 95% (Mini Max 2.7).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, claude-code, minimax, cost, video, transcript]
---

# Summary: Damian Malliaros — Cut Claude Code Costs 95% with MiniMax M2.7

[[Damian Malliaros]] demonstrates building a full ClickUp clone using [[Claude Code]] with [[MiniMax M2.7]] as the model — achieving roughly 20x cost reduction and 3x speed improvement over Opus 4.6 while claiming superior benchmark performance.

## Why MiniMax M2.7

- **Benchmarks**: Outperforms Opus 4.6 on SWE benchmarks (coding/logic tasks)
- **Cost**: ~$1 per hour of use; ~20x cheaper than Opus 4.6
- **Speed**: ~3x faster than Opus 4.6 in practice
- **Built for**: Logic and coding tasks specifically

Damian's claim: MiniMax M2.7 is better than Opus 4.6 for coding, not just cheaper.

## Setup: Connecting MiniMax to Claude Code

Unlike [[Ollama]] or [[OpenRouter]], Damian uses a different approach — he tells Claude Code directly to configure the integration:

1. Get API key from platform.minimax.io → API Platform → Create Key
2. Tell Claude Code: *"I want to use MiniMax M2.7 as my model. Here's my API key: [key]. Go configure this for me."*
3. Claude Code reads the MiniMax docs, writes the config files, and sets it up automatically
4. Restart Claude Code session — MiniMax M2.7 appears in `/models`

This is a notable workflow: using Claude Code itself to set up its own alternative model configuration.

## Build Demo: ClickUp Clone

Full app built from prompt to deployed MVP:

1. **Research phase**: Ask Claude Code to research ClickUp features and suggest differentiators
2. **Design inspiration**: Screenshot from Dribbble → upload to Claude Code for UI direction
3. **Plan mode** (high effort): Generates detailed plan with phases, features, design system — human reviews and gives feedback before execution
4. **Build**: Claude executes phases, checking off tasks. Noticeably faster than with Opus/Sonnet.
5. **Parallel instances**: Two simultaneous Claude Code sessions — one fixing the AI assistant integration, one improving the UI. No waiting for sequential completion.
6. **Supabase MCP**: Claude Code connects to Supabase MCP server via token, creates project, generates all 12 tables, sets up auth — fully automated.
7. **Result**: Dark/light mode toggle, AI task assistant (using MiniMax API directly), fully functional CRUD with Supabase backend.

## Speed Observation

The build was "at least 2x faster" than Damian's normal experience with Sonnet or Opus 4.6. He attributes this to MiniMax's response speed, not just the model architecture.

## MiniMax Pricing Plans

Subscription-based (not pure pay-per-token):
- **Starter**: $10 — used in this demo, had usage remaining after full app build
- **Plus / Max / Plus High Speed**: mid-range tiers
- **Max High Speed**: $80 — 15,000 model requests per 5 hours (~unlimited for coding)
- **Ultra High Speed**: $150 — 30,000 requests per 5 hours

Compared to Claude Code Max plan ($200/month with limits), the $80 tier offers effectively unlimited throughput at lower cost.

## Other MiniMax Products Mentioned

- **MaxClaw**: MiniMax's own OpenClaw clone — same idea but runs against MiniMax models. Accessible via web interface.
- **MiniMax Agent**: Web-based agent interface for creating Chrome jobs, automations.

## See Also
- [[MiniMax M2.7]]
- [[Damian Malliaros]]
- [[Open-Source Model Integration]]
- [[Claude Code]]
- [[summary-nate-herk-ollama-claude-code|Source: Ollama + Claude Code]]
