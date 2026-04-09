---
type: source-summary
sources: ["Every Claude Code Workflow Explained (& When to Use Each).md"]
created: 2026-04-09
updated: 2026-04-09
tags: [video, youtube, claude-code, workflow, multi-agent, design-patterns]
---

# Every Claude Code Workflow Explained (& When to Use Each)

**Channel:** [[simon-scrapes|Simon Scrapes]]
**Format:** YouTube video
**URL:** https://www.youtube.com/watch?v=38t5UBCa4OI
**Length:** ~17 minutes
**Published:** 2026-04-07
**Sponsor:** none disclosed (Simon plugs his own Skool community "Agentic Academy")

## Summary

Walkthrough of **five named Claude Code workflow patterns** with explicit "when to reach for each." Anchors the wiki's new [[llm-design-patterns]] concept page — the first patterns library entry, structured for growth as future sources land. Also documents **two first-class Claude Code CLI flags** the wiki hadn't captured (`claude -w` for git work-trees, `claude -p` for headless execution), the **10 concurrent sub-agent limit**, and the **Agent Teams** experimental feature shipped with Opus 4.6.

## Key Points

### The 3 built-in Claude Code sub-agents (always-on)

Every Claude Code session is already using these automatically — you don't have to invoke them. They show up in the terminal when triggered.

| Sub-agent | Model | Capability | When invoked |
|---|---|---|---|
| **Explore** | Haiku (cheapest, fastest) | Read-only file/folder search | Automatically on questions like *"how does X work in this project?"* |
| **Plan** | (per-session) | Read-only research before strategy | Activated in plan mode (`/plan` or shift+tab twice) |
| **General-purpose** | Sonnet | Full read/write tool access | Automatically on complex multi-step tasks needing both exploration and changes |

Each runs in its **own isolated context window** so the main conversation stays clean. The wiki's existing [[claude-code-subagents]] page covers the user-defined sub-agent primitive; this source adds the always-on default trio that Claude routes to without user configuration.

### Pattern 1 — Sequential Flow

Single conversation, every task builds on the previous one's context. Output of task 1 feeds task 2 feeds task 3. **Ceiling**: the context window (the green bar at the bottom of the terminal). Past the ceiling, **context rot** sets in — Claude starts forgetting things or failing to find them. Mitigations: well-structured `CLAUDE.md`, well-described skills (Claude loads + offloads them at the right time), `/clear` and `/compact` commands. Even in sequential flow, Claude is already using the built-in sub-agents behind the scenes.

### Pattern 2 — The Operator (multi-terminal work-trees)

You as orchestrator running multiple terminals in parallel. Each terminal has its own Claude session, its own context window, and its own copy of the project. Claude Code now ships a built-in flag for this: **`claude -w <task-name>`** creates a **git work-tree** — a separate copy of the project on its own branch — and drops Claude straight into it. Auto-cleanup on close: if no changes, the work-tree is removed automatically; if there's work to keep, Claude prompts what to do.

**When to use**: parallel independent tasks (e.g., new onboarding flow + checkout bug fix + redesign settings page — none depend on each other). **Limit**: practical 4–5 terminals before flicking between them becomes unworkable.

### Pattern 3 — Split & Merge (single-session sub-agent fan-out)

Single Claude session that fans out work across multiple sub-agents in parallel. Hub-and-spoke topology: **sub-agents can only report back to the main agent; they cannot talk to each other**. Claude analyzes the task, decides it can be split, fans out, then merges results.

- **Hard limit**: **10 concurrent sub-agents.** Additional sub-agents queue.
- **Custom sub-agents** live in your `.claude/agents/` folder, with name + description + tool list (analogous to skills). Claude reads agent descriptions and routes automatically when a task matches, OR you can specify the sub-agent explicitly.
- **Builder-validator chain pattern**: sub-agent 1 builds → returns to main → main routes to sub-agent 2 (validator) → returns to main. Built-in quality check without you doing the review. The hub topology is the bottleneck (no direct communication between builder and validator).
- **Boris Cherny** (Claude Code creator) is named as having spun up 15 sub-agents at a time — though the source clarifies the actual limit is 10 concurrent.
- **GSD ("Get Shit Done") framework by Tash** name-checked as a comprehensive sub-agent framework example with detailed agents in a `.claude/agents/` folder.

### Pattern 4 — Agent Teams (NEW research preview, Opus 4.6)

The newest addition. **Currently experimental research preview**, requires opt-in via env var:
```
CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1
```
in `settings.json`. Then specify *"use an agent team"* explicitly in your prompt (Claude won't auto-route to it).

**Key architectural difference from Split & Merge**: agents share a **task list** and can **send messages directly to each other**, bypassing the main-agent funnel. They no longer interact only through the team lead. Navigate teammates with **shift+up / shift+down** in the terminal; message a teammate directly or talk to the team lead.

**Cost**: **4–7× more tokens than a single session** because of cross-agent back-and-forth + each teammate is a full Claude Code instance with its own context window.

**When to use**: complex projects where genuine cross-collaboration is needed (front-end + back-end + test agents that have to coordinate as they build). **When NOT to use**: anything sub-agents or a single session could handle. *"A lot of people in the community are saying this is just a way to produce large quantities of work very quickly which isn't necessarily a good thing. You still need the work to be the right work."* The wiki should treat Agent Teams as a power-user tool with a high cost ceiling, not the default.

### Pattern 5 — Headless (`claude -p`)

Claude working without you. **`claude -p <prompt>`** runs Claude in non-interactive mode: no conversation, no approvals, full permissions, return result when done. The flag is the bridge from "tool you sit with" to "team member that goes and works independently."

**The unlock is scheduling.** Combine `claude -p` with cron (Mac/Linux) or Task Scheduler (Windows) and Claude runs automatically on any cadence. *"At 7am every day, fire this command, generate the morning report."* Chain headless prompts together to ship full pipelines (e.g., pull yesterday's transcript → run through Claude with a specific prompt → generate social posts → save to file).

**Trust is the limitation.** Best for tasks where output is easy to verify; avoid for anything hard to undo. **Guardrails**: `--allowed-tools` to restrict capabilities (e.g., read-only).

**The Ralph loop** is referenced as a community pattern: re-feed the same prompt back to Claude until output meets criteria; each iteration sees the previous cycle's work. People have used this to ship entire projects overnight.

### Pattern selection ladder

The five patterns aren't alternatives — they're a **progression**. The video implicitly frames it as:

- Start with **Sequential** until you hit context rot
- Move to **Operator** for independent parallel work
- Move to **Split & Merge** when Claude itself can fan out and you don't need to babysit terminals
- Move to **Agent Teams** only when genuine cross-collaboration is required (and budget the 4–7× token cost)
- Move to **Headless** when you no longer need to be in the loop at all

This ladder is the wiki's canonical framework for choosing a Claude Code workflow.

## Sponsorship & Bias Notes

**Sponsor:** none disclosed.

**Product placement / affiliations:** Simon plugs his own paid Skool community "Agentic Academy" at the open and close, with a "full Claude Code track" reference. First-party self-promotion of his own product, not an undisclosed affiliation. The video itself is content-dense and reads as a genuine taxonomy walkthrough; the Skool plug is the conversion call-to-action, not the editorial driver.

**Comparison bias:** none observed. The five patterns are described with explicit costs and limitations; the source repeatedly emphasizes **when *not* to use** the more advanced patterns (especially Agent Teams) — *"a lot of people in the community are saying this is just a way to produce large quantities of work very quickly."* Treat the editorial framing as honest, capability claims as descriptive, and the "agent teams costs 4–7× tokens" number as a community estimate, not a benchmark.

## Notable Quotes

> "If you're still using Claude Code one conversation at a time, you're using it wrong."

> "Sub-agents can only report back to the main agent. So they can't actually talk to each other. It's this hub-and-spoke methodology where the main agent is the hub."

> "Agent Teams are roughly 4 to 7 times more tokens than a single session. You don't need agent teams for most of your work. You should only reach for them when sub-agents or even a single session couldn't do the job."

> "Headless is where Claude Code goes from being a tool you sit with to a team member that's going to go and work independently."

## Connected Pages

- [[llm-design-patterns]] — primary concept page anchored by this source
- [[claude-code]] — primary tool; new CLI flags + Agent Teams documented from this source
- [[claude-code-subagents]] — the user-defined sub-agent primitive; this source adds the always-on default trio + 10 concurrent limit
- [[multi-agent-orchestration]] — higher-level concept; the new design-patterns page is the more granular breakdown
- [[agentic-harness-primitives]] — Nate B Jones's framework from the Claude Code leak; the 6 built-in agent types in the leak overlap with the 3 always-on sub-agents Simon documents
- [[simon-scrapes]] — channel
- [[anthropic]] — vendor
- [[claude]] — Opus 4.6 ships Agent Teams as research preview

## See Also
- [[summary-worldofai-claude-code-subagents|WorldofAI: Claude Code Sub-Agents]] — adjacent source on the user-defined sub-agent primitive
- [[summary-nate-jones-12-agent-primitives|Nate B Jones: 12 Agent Primitives]] — the leaked-architecture context for what Claude Code already does internally
- [[summary-nate-herk-ultra-plan|Nate Herk: Ultra Plan]] — adjacent multi-agent feature (cloud-hosted Opus 4.6 with parallel exploration)
- [Original](../../raw/archive/Every%20Claude%20Code%20Workflow%20Explained%20%28%26%20When%20to%20Use%20Each%29.md)
