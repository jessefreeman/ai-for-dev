---
type: concept
sources: ["Claude Code Sub-Agents BEST AI Coder! SUPERCHARGE Claude Code and 10x Coding Workflow!.md", "Every Claude Code Workflow Explained (& When to Use Each).md"]
created: 2026-04-08
updated: 2026-04-09
tags: [concept, claude-code, multi-agent, anthropic]
---

# Claude Code Sub-Agents

Anthropic's first-party multi-agent primitive for [[claude-code|Claude Code]], shipped July 2025. A sub-agent is a project- or user-scoped specialist that the main Claude Code session can delegate work to. Each sub-agent has its own **isolated context window**, an explicit **tool / MCP whitelist**, and a **custom system prompt** that scopes its expertise.

## Why it exists

Sub-agents solve three Claude Code pain points at once:

1. **Context-window pollution** — off-task work eats the main session's context. Isolated context windows make this go away.
2. **Tool-call hallucination** — exposing every tool to every step makes the model invent calls. Per-agent whitelists keep the surface narrow.
3. **No clean delegation primitive** — Claude Code lacked a first-class way to say "have a specialist handle this step". Sub-agents are that primitive.

## Anatomy

| Property | Notes |
|---|---|
| **Scope** | Project (committed to `.claude/agents/`) or user (global) |
| **Context window** | Isolated from the main session |
| **System prompt** | Custom; bounds expertise area |
| **Tool / MCP whitelist** | Explicit allowlist; no fallthrough |
| **Color tag** | Visual marker in the TUI |
| **Parallelism** | Multiple sub-agents can run concurrently on the same project — **hard limit: 10 concurrent**; additional queue |

## Setup

```
/agents → New → choose level (project or user)
       → describe (recommend: let Claude generate, then customize)
       → select tools / MCPs
       → assign color tag
```

## The 3 always-on built-in sub-agents

Separately from user-defined sub-agents in `.claude/agents/`, every Claude Code session uses **three always-on built-in sub-agents** that Claude routes to automatically. Per [[summary-simon-scrapes-claude-code-workflows|Simon Scrapes]]:

| Sub-agent | Model | Capability | Auto-invoked when |
|---|---|---|---|
| **Explore** | Haiku | Read-only file/folder search | You ask *"how does X work in this project?"* |
| **Plan** | (per-session) | Read-only research before strategy | You enter plan mode (`/plan` or shift+tab twice) |
| **General-purpose** | Sonnet | Full read/write tool access | Claude detects a complex multi-step task needing both exploration and changes |

Each runs in its **own isolated context window** so the main conversation stays clean. These overlap with the 6 built-in agent types from the [[agentic-harness-primitives|leaked Claude Code architecture]] — Explore, Plan, Verify, Guide, General-purpose, Status-line-setup. The 3 above are the user-facing always-on trio.

## The builder-validator chain

The canonical sub-agent pattern surfaced by [[summary-simon-scrapes-claude-code-workflows|Simon Scrapes]]: sub-agent 1 builds → returns to main → main routes to sub-agent 2 (validator) → returns. Built-in quality check without you doing the review. The hub-and-spoke topology (sub-agents can only talk to the main agent, not each other) is the bottleneck — this is exactly the constraint **Agent Teams** ([[llm-design-patterns#pattern-4-agent-teams]]) is designed to remove.

## Marketplace

Community sub-agents are catalogued at **claudecodeagents.com** — UX optimizer, Delegator (an in-terminal AI project manager), and others. Adjacent ecosystem: [[skills-sh|skills.sh]].

## Sub-agents vs skills

These are *different primitives*, not competitors:

- **[[skills-sh|Skills]]** — reusable behaviors (a "humanizer skill" that rewrites text in a less-AI-sounding way). They're prompt + light tooling, invoked from the main session.
- **Sub-agents** — separate identities with separate context windows. They're delegation targets, not behavior overlays.

A workflow can use both: invoke a skill to format output, delegate to a sub-agent to do the implementation.

## Connection to existing wiki threads

- [[multi-agent-orchestration]] — sub-agents are Anthropic's first-party answer to this pattern, joining [[paperclip]] and [[hermes-agent]]
- [[agentic-harness-primitives]] — the leak revealed Claude Code already had six built-in agent types internally (Explore, Plan, Verify, Guide, General-purpose, Status-line-setup); sub-agents expose this primitive to users
- [[claude-code]] — `/agents` is now a first-class Claude Code feature alongside `/loop`, `/ultra-plan`, and skills

## Sources

- [[summary-worldofai-claude-code-subagents|WorldofAI walkthrough of sub-agents]] — primary source for the user-defined primitive
- [[summary-simon-scrapes-claude-code-workflows|Simon Scrapes — Every Claude Code Workflow Explained]] — adds the 3 always-on built-in sub-agents, the 10 concurrent limit, the builder-validator chain pattern, and the connection to [[llm-design-patterns]]

## See Also

- [[claude-code]]
- [[llm-design-patterns]] — sub-agents are the implementing primitive for Pattern 3 (Split & Merge)
- [[multi-agent-orchestration]]
- [[skills-sh]]
- [[agentic-harness-primitives]]
