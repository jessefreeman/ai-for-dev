---
type: entity
sources: ["I Tested Claude's New Managed Agents... What You Need To Know.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [tool, automation, cron, trigger]
---

# trigger.dev

Cloud platform for hosting code that runs on schedules, webhooks, and other event triggers. Used by [[nate-herk|Nate Herk]] as the **trigger layer** for [[claude-agent-sdk]] / [[claude-code|Claude Code]] agents — the piece [[managed-agents|Anthropic's Managed Agents]] conspicuously lacks. Open source with a hosted plan; cheaper than building agents inside Managed Agents for use cases that require a heartbeat.

> Stub page — first appearance in the wiki via Nate Herk's Managed Agents review. Will grow as more sources reference it.

## Why it appears in the wiki

Nate Herk's structural argument in [[summary-nate-herk-managed-agents|the Managed Agents review]]: *"I'd just rather use trigger.dev because it lets me host my code on the cloud, set up crons and things like that, and delegate to different scripts. It's also a lot cheaper than Managed Agents."* The wiki tracks trigger.dev as the **canonical external trigger primitive** that closes the gap left by Managed Agents until/unless Anthropic ships a native cron.

## Pattern

1. Build an agent locally with [[claude-code|Claude Code]] using the Claude Agent SDK
2. Deploy the agent script to trigger.dev
3. Configure a trigger.dev schedule (cron, webhook, event) that invokes the script

This gives you Managed Agents-style "agent runs in the cloud" without paying $0.08/hr per session, *and* with native triggers.

## See Also

- [[managed-agents]] — the Anthropic product that lacks the trigger primitive trigger.dev provides
- [[claude-code]] — the local build environment for the agents trigger.dev runs
- [[slash-loop|/loop]] — Claude Code's local-only equivalent (laptop-bound)
- [[nate-herk|Nate Herk]] — primary source
- [[summary-nate-herk-managed-agents|Source: I Tested Claude's New Managed Agents]]
