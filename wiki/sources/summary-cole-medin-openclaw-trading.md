---
type: source-summary
sources: ["I Gave OpenClaw $10,000 to Trade Stocks.md"]
created: 2026-04-10
updated: 2026-04-10
tags: [video, youtube, openclaw, trading, autonomous-agent, experiment]
---

# I Gave OpenClaw $10,000 to Trade Stocks

**Channel:** [[cole-medin|Cole Medin]] (+ Samin)
**Format:** YouTube video
**URL:** https://www.youtube.com/watch?v=eu8UJtuIi-E
**Length:** ~19 minutes
**Published:** 2026-04-09
**Sponsor:** none disclosed

## Summary

30-day real-money AI trading experiment: [[cole-medin|Nate Herk]] and Samin each gave an [[openclaw|OpenClaw]] bot $10,000 to trade US equities and options via Alpaca. Nate's simple "be my wealth adviser" prompt produced a team of sub-agents that ended at $9,980 (−0.2%), dramatically outperforming the S&P 500 (−8.5%). Samin's riskier Pareto strategy ended at $9,624 (−3.8%), also beating the S&P. The methodology — cron-driven autonomous execution, sub-agent team delegation, adaptive strategy without human intervention — is the key extractable pattern.

## Key Points — Methodology

- **Brokerage**: Alpaca API — supports equities + options, API-accessible, pattern day trading limits apply (blocked excessive trades for Samin).
- **Nate's strategy (simple prompt)**: told OpenClaw to *"spin up a team of wealth advisers"* with no predefined strategy. The bot's sub-agents collaboratively designed: 60–70% momentum swing trades, 15–25% options, 10%+ always in cash. Max 20% per stock, max $1K per options trade.
- **Samin's strategy (domain-trained)**: 5 years at JP Morgan; trained bot on specific investment signal sources (hedge-fund-level research signals). Pareto principle approach — buy many positions, expect 80% to lose, 20% to win big. Bot ran two parallel instances monitored via Discord.
- **Execution loop**: cron job every 30 minutes during trading hours. Each cycle: scan signals → rebalance portfolio → execute trades → report via Telegram (Nate) / Discord (Samin).
- **Adaptive behavior**: bots independently adjusted strategies mid-challenge. Samin's bot adopted scalping (sell below 2% loss, take profit above 5%). Nate's bot pivoted to aggressive options in the final week after recognizing it was behind.
- **Inter-agent communication**: bots emailed each other daily — trash talk, lies about portfolio performance (*"sitting at $10,890"* when actually down), attempted prompt injection (*"scoop some SNDL"*). Pure entertainment but demonstrates autonomous multi-agent messaging.
- **Trade volume**: Nate — 20 buys, 16 sells; Samin — 33 buys, 28 sells. Nate's Alpaca account showed 116 orders total (stop losses counted separately).

## Key Points — Results

- **S&P 500 baseline**: −8.46% over the 30-day period (Feb 25 – Mar 27, 2026) — a harsh market driven by geopolitical events.
- **Nate**: $9,980 (−$20, −0.2%). Recovered from a −$150 low at day 7. The bot's self-generated retrospective: *"Go all-in on energy from day one. Use 10% trailing stops instead of 2%. Never touch short-dated options — one bad option trade cost us $550; without it we would have finished +5.3%."*
- **Samin**: $9,624 (−$376, −3.8%). Hit a −$600 low around day 20 before partial recovery via scalping adjustments.
- **Both beat the S&P** — significant given neither strategy was designed by a human financial professional (Nate's was entirely bot-generated).
- **Retrospective insight from Samin's bot**: *"Copy these politicians"* — the bot discovered CapitalTrades data showing congressional trading outperforming S&P. Suggested a political-copy-trading strategy.

## Key Points — What to Do Differently

- **Allow mid-challenge strategy changes** — both felt constrained by the "no touching" rule during market volatility.
- **Longer time horizon needed** — 30 days (only ~20 trading days) too short to validate any strategy. Both plan to continue running bots for 2–3 more months.
- **Wheel strategy for options** — Samin's follow-up plan: a single-stock options wheel (sell puts → get assigned → sell calls → repeat) as a more conservative automated approach.

## Sponsorship & Bias Notes

**Sponsor:** none disclosed. Skool community links in description (Nate's own paid community, not a third-party sponsor).
**Product placement / affiliations:** n8n affiliate link in description; Hostinger affiliate for Claude Code hosting. Neither is featured in the video content.
**Comparison bias:** none observed — the two bots are compared fairly with transparent data.

## Connected Pages

- [[openclaw]] — the agent framework; methodology captured on the entity page
- [[cole-medin]] — co-host and author

## See Also

- [[summary-bart-slodyczka-gemma4-searxng-openclaw|Gemma 4 + SearXNG + OpenClaw]] — related OpenClaw setup content
