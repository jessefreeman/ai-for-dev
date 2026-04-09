---
type: entity
sources: ["Every Claude Code Workflow Explained (& When to Use Each).md"]
created: 2026-04-09
updated: 2026-04-09
tags: [person, ai, claude-code, agent, educator]
---

# Simon Scrapes

YouTube creator focused on **agentic systems for business**, with practical Claude Code workflow content. Runs the **Agentic Academy** on Skool — a paid community with a "full Claude Code track" that teaches building with Claude Code, sub-agents, skills, and design patterns. The wiki tracks Simon as the **primary source for the [[llm-design-patterns]] thread** — his Claude Code workflow taxonomy is the seed source for the new patterns library page.

> Stub — first appearance via the workflow patterns video. Will grow as more sources land.

## Channels

- **YouTube**: [Simon Scrapes](https://www.youtube.com/@simonscrapes) — agentic systems and Claude Code
- **Community**: Agentic Academy on Skool — paid, with a Claude Code track

## Content in This Wiki

- [[summary-simon-scrapes-claude-code-workflows|Every Claude Code Workflow Explained (& When to Use Each)]] — Walkthrough of **5 named Claude Code workflow patterns** (Sequential / Operator / Split & Merge / Agent Teams / Headless) with explicit when-to-use and when-not-to-use guidance. Anchors the wiki's new [[llm-design-patterns]] concept page. Also documents: the **`claude -w` git work-trees flag**, the **`claude -p` headless flag**, the **10 concurrent sub-agent limit**, the **Agent Teams** experimental research preview shipped with Opus 4.6 (`CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`), and the 3 always-on built-in sub-agents (Explore / Plan / General-purpose).

## Key Ideas

- **The pattern selection ladder** — five Claude Code workflow patterns aren't alternatives but a progression. Climb only as high as the task requires: Sequential → Operator → Split & Merge → Agent Teams → Headless. Most users default too low (sequential one-conversation flow) and never explore the higher rungs.
- **"If you're still using Claude Code one conversation at a time, you're using it wrong."** — opening framing
- **Hub-and-spoke vs peer-to-peer is the architectural distinction** between sub-agents (Pattern 3) and Agent Teams (Pattern 4). Sub-agents can only report to the main agent; agent teams can message each other directly via a shared task list.
- **Agent Teams are 4–7× more tokens** than a single session. Only worth it for genuine cross-discipline coordination (front-end + back-end + test that have to talk as they build). Most users should never reach for them.
- **Headless (`claude -p`) becomes powerful when scheduled.** Plug into cron / Mac Task Scheduler / Windows Task Scheduler and Claude runs autonomously on any cadence. The bridge from tool you sit with to team member that works independently.

## Editorial framing the wiki applies to Simon's content

- Simon plugs his own Skool community at the open and close of his videos. First-party self-promotion, not undisclosed affiliation. Treat capability claims as descriptive (the video is content-dense and explicitly emphasizes when *not* to use the more advanced patterns), and the Skool plug as the conversion call-to-action.
- His framing is action-oriented and tool-pragmatic — closer to [[nate-herk|Nate Herk]] in tone than to [[nate-b-jones|Nate B Jones]]'s strategic analysis. The wiki uses Simon as the **pattern taxonomy source** rather than the strategy source.

## See Also

- [[llm-design-patterns]] — primary concept page anchored by Simon's source
- [[claude-code]]
- [[claude-code-subagents]]
- [[multi-agent-orchestration]]
- [[summary-simon-scrapes-claude-code-workflows|Source: Every Claude Code Workflow Explained]]
