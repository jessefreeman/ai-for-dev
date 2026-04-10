---
title: OpenClaw Autonomous Trading Methodology
summary: Cole Medin's 30-day AI trading experiment methodology — cron-driven Alpaca execution, sub-agent wealth adviser teams, adaptive strategy; both bots beat the S&P 500.
tags: [tool_openclaw, topic_autonomous_agent, topic_trading, person_cole_medin, source_cole_medin_openclaw_trading]
---

# OpenClaw Autonomous Trading Methodology

## Context

From [[summary-cole-medin-openclaw-trading|I Gave OpenClaw $10,000 to Trade Stocks]]. See also [[openclaw]].

## Content

Methodology for autonomous AI stock trading via OpenClaw:
1. **Brokerage**: Alpaca API (equities + options, API-accessible)
2. **Execution loop**: cron job every 30 minutes during market hours; each cycle scans signals, rebalances, executes trades
3. **Sub-agent team**: prompt OpenClaw to "spin up a team of wealth advisers" — bot creates specialized sub-agents for research, analysis, trade execution
4. **Adaptive strategy**: bots independently adjust tactics based on market conditions without human intervention
5. **Results (30 days, $10K, S&P −8.5%)**: Nate −0.2% (simple "be my adviser" prompt), Samin −3.8% (Pareto/high-risk strategy)
6. **Bot's retrospective**: go all-in on energy, use 10% trailing stops, never touch short-dated options

Pattern day trading limits on Alpaca constrained frequency. The sub-agent team spawning is the most interesting architectural pattern.
