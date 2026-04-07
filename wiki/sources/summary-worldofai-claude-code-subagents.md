---
type: source-summary
sources: ["Claude Code Sub-Agents BEST AI Coder! SUPERCHARGE Claude Code and 10x Coding Workflow!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, claude-code, agents]
---

# Claude Code Sub-Agents

**Author / channel:** [[worldofai|WorldofAI]]
**Format:** video
**Source:** [Original](../../raw/archive/Claude%20Code%20Sub-Agents%20BEST%20AI%20Coder%21%20SUPERCHARGE%20Claude%20Code%20and%2010x%20Coding%20Workflow%21.md)
**Published:** 2025-07-29

## Summary

Anthropic shipped sub-agents in [[claude-code|Claude Code]]: project- or user-scoped specialist agents with their own system prompt, tool whitelist, and dedicated context window, invokable from the main session. WorldofAI walks the `/agents` UI, demos a UX-optimizer + UI agent running in parallel on a signup page, and points at the community marketplace at claudecodeagents.com.

## Key Points

- **Sub-agent definition** — each sub-agent has: a specific expertise area, an isolated context window (preserves main-thread context), an explicit tool/MCP whitelist, and a custom system prompt. Configurable at project level or user level.
- **Why it matters** — solves three Claude Code pain points at once: context-window pollution from off-task work, tool-call hallucination, and the lack of a clean delegation mechanism.
- **Setup flow** — `/agents` → New → choose level → describe (recommended: let Claude generate, then customize) → select tools → assign color tag.
- **Marketplace** — claudecodeagents.com hosts community sub-agents (e.g., UX-optimizer, Delegator). The Delegator demo'd here researches a task, writes specs, and dispatches background agents — an in-terminal AI project manager.
- **Parallelism** — multiple sub-agents can work in parallel on the same project (UX-optimizer + UI-designer running concurrently on a signup flow).

## Connected Pages

- [[claude-code]] — sub-agents are now a first-class Claude Code feature alongside `/loop` and `/ultra-plan`
- [[multi-agent-orchestration]] — sub-agents are Anthropic's first-party answer to this pattern
- [[skills-sh]] — adjacent ecosystem (skills vs sub-agents distinction)
- [[worldofai|WorldofAI]] — author hub
