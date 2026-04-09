---
type: entity
sources: ["Andrej Karpathy Just 10x'd Everyone's Claude Code.md", "I Broke Down Anthropic's $2.5 Billion Leak. Your Agent Is Missing 12 Critical Pieces..md", "Ollama + Claude Code = 99% CHEAPER.md", "Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md", "Planning In Claude Code Just Got a Huge Upgrade.md", "I Tested Claude's New Managed Agents... What You Need To Know.md", "Every Claude Code Workflow Explained (& When to Use Each).md"]
created: 2026-04-06
updated: 2026-04-09
tags: [tool, ai, llm, anthropic]
---

# Claude Code

[[anthropic|Anthropic]]'s CLI tool for [[claude|Claude]] that operates directly on local files and directories. The primary engine used in the [[LLM Wiki Pattern]] for reading sources, generating wiki pages, and maintaining cross-references. See [[anthropic]] for the company-level entity (corporate structure, MCP standard, /loop, Ultra Plan, the architecture leak).

## Role in LLM Wiki

- Reads raw source documents and generates structured wiki pages
- Maintains cross-references, indexes, and logs
- Configured via `CLAUDE.md` schema files that define project conventions
- Can be pointed at wiki directories from other projects (e.g., an executive assistant referencing a knowledge base)

## Sub-Agents (July 2025)

See [[claude-code-subagents|Claude Code Sub-Agents]] for the full concept page on Anthropic's first-party multi-agent primitive.

Anthropic shipped first-class sub-agents: per-project or per-user specialist agents with their own system prompt, tool/MCP whitelist, and **isolated context window** (preserves the main thread). Managed via `/agents` in the Claude Code TUI.

- **Why** — solves three pain points at once: context-window pollution from off-task work, tool-call hallucination, and the lack of a clean delegation primitive
- **Setup** — `/agents` → New → project or user level → describe (recommended: let Claude generate, then customize) → tool whitelist → color tag
- **Marketplace** — community sub-agents at claudecodeagents.com (UX optimizer, Delegator, etc.)
- **Parallelism** — multiple sub-agents can work concurrently on the same project

See [[summary-worldofai-claude-code-subagents|Claude Code Sub-Agents walkthrough]].

## Internal Architecture (from leak)

In early 2026, Anthropic accidentally exposed Claude Code's source map via a build configuration error. [[Nate B Jones]] analyzed the leak and identified [[Agentic Harness Primitives]] — 12 production-grade infrastructure patterns Claude Code uses at scale.

Key structural facts from the leak:
- Two parallel registries: 207-entry command registry (user-facing) + 184-entry tool registry (model-facing)
- Six built-in agent types: Explore, Plan, Verify, Guide, General-purpose, Status-line-setup — each with distinct prompts, tools, and behavioral constraints
- Bash tool has an 18-module security architecture
- Sessions persisted as JSON, fully reconstructable after crashes
- Token budget tracked pre-turn with hard stops before API calls
- Typed streaming events including a crash event with reason

## Running with Non-Anthropic Models

Claude Code's model is configurable. The harness (Claude Code) and the engine (AI model) are decoupled. You can substitute any open-source or third-party model via environment variables — pointing `ANTHROPIC_BASE_URL` at [[Ollama]] (local) or [[OpenRouter]] (cloud). See [[Open-Source Model Integration]].

This is not against Anthropic's ToS. Practical result: 50–100x cost reduction for many workflows.

## /loop — Proactive Agent Scheduling

Shipped March 2026. The `/loop` command lets Claude Code run jobs on a repeating schedule without human interaction — the "heartbeat" for agents. Combined with a persistent memory system (like [[OpenBrain]]) and MCP tools, `/loop` enables agents that accumulate value across cycles.

Before `/loop`, developers needed external scaffolding (bash scripts, markdown context files, completion conditions) to achieve this. Now it's native to Claude Code. See [[/loop]] for full concept page.

**Limitations**: Session-scoped (stops when laptop closes), no built-in "done" signal.

## /ultra-plan — Cloud-Hosted Multi-Agent Planning

Shipped April 2026 (research preview). The **Ultra Plan** feature offloads the planning phase to a cloud-hosted **Opus 4.6** instance with **multi-agent exploration**: 3 parallel exploration agents + 1 critique agent collaborate on the plan, then teleport it back to the local terminal for execution (or execute remotely). Demonstrated by [[Nate Herk]] in a side-by-side dashboard build:

- **Local plan mode**: ~45 minutes total (planning + execution)
- **Ultra Plan**: ~10–15 minutes total — *both planning AND execution were faster*

Why execution is also faster: the plan is so much clearer that the local execution agent has less to figure out at runtime. "Give me 6 hours to chop down a tree and I will spend the first four sharpening the axe."

### How it works

| | Local Plan | Ultra Plan |
|---|---|---|
| Runs in | Your terminal | Anthropic cloud container runtime |
| Model | Whatever your session uses | Opus 4.6 (always) |
| Approach | Single agent, linear thinking | 3 parallel exploration agents + 1 critique agent |
| Max compute time | Bounded by session | 30 min cap |
| Terminal blocking | Yes (session blocks) | No (you can keep working in the terminal) |
| Review surface | Text dialogue | Doc-style web UI with comments + emoji reactions on individual sections |

### Triggering and review loop

- `/ultra-plan <prompt>` or include the keyword "ultra plan" anywhere in a CLI prompt → Claude offers to run it
- Plan drafts on the web; you review with comments and emoji reactions on individual sections
- Approve plan → teleports back to the terminal for local execution, OR execute remotely in the cloud
- Iterate via comments — Claude does another pass on the plan based on feedback

### Requirements & limits

- **Project must be synced to a git/GitHub repo** — Claude needs to read the codebase from the cloud. If your project is local-only, ultra plan refuses with "you can't do this on the web yet."
- **Only works in the CLI** — VS Code extension and desktop app don't trigger Ultra Plan even if you type the command
- **Requires Pro or Max subscription** — API billing doesn't work; you need a cloud-attached account
- **Token usage is opaque** — Nate's tests showed it consumed ~1% of his Max 20x plan per ultra-plan run, but no explicit token counter
- **Skills aren't always invoked** — even though Ultra Plan can see your whole project, it sometimes needs explicit prompting to use a specific skill

### When it's worth it

Ultra Plan uses more tokens upfront because it's running multi-agent exploration in parallel. Worth it when:
- Building a non-trivial feature where plan quality dramatically affects execution quality
- You want a richer review surface than the terminal offers (comments, emoji, doc layout)
- You have enough subscription headroom to spend the extra tokens

Skip it for trivial changes — local plan mode is fine and doesn't need the cloud roundtrip.

## Workflow patterns (the 5-pattern ladder)

The wiki tracks five named Claude Code workflow patterns, captured in detail on **[[llm-design-patterns]]** (the canonical patterns library). They form a progression — climb only as high as the task requires:

1. **Sequential Flow** — single conversation; ceiling is the context window + context rot
2. **The Operator** — multiple parallel terminals via the **`claude -w`** git work-trees flag (auto-cleanup on close)
3. **Split & Merge** — single session fanning out to sub-agents; **hard limit 10 concurrent**, hub-and-spoke topology
4. **Agent Teams** — peer-to-peer agent collaboration via shared task list; **research preview** in Opus 4.6
5. **Headless** — **`claude -p <prompt>`** for non-interactive autonomous execution; designed to plug into cron / Task Scheduler

Source: [[summary-simon-scrapes-claude-code-workflows|Simon Scrapes — Every Claude Code Workflow Explained]].

### CLI flags (workflow primitives)

| Flag | Purpose | Pattern |
|---|---|---|
| **`claude -w <task-name>`** | Create a git **work-tree** (separate copy + branch) and start a new Claude session inside it. Auto-cleanup: empty work-trees removed on close; non-empty prompt before discarding. | [[llm-design-patterns#pattern-2-the-operator]] |
| **`claude -p <prompt>`** | Run Claude in **non-interactive mode** — no conversation, no approvals, full permissions, return result when done. Combine with cron / Task Scheduler for autonomous workflows. | [[llm-design-patterns#pattern-5-headless]] |
| **`--allowed-tools <list>`** | Restrict the tools available in headless mode (e.g., read-only). Guardrail for `-p` use. | Pattern 5 hardening |

### Agent Teams (research preview, Opus 4.6)

The newest workflow primitive. Currently experimental — opt in via:

```
CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1
```

in `settings.json`. Then specify *"use an agent team"* explicitly in your prompt — Claude does NOT auto-route to it. Navigate teammates with **shift+up / shift+down** in the terminal; message a teammate directly or talk to the team lead. Costs **4–7× more tokens** than a single session because of cross-agent messaging + each teammate is a full Claude Code instance with its own context window. **When to use**: complex multi-discipline projects where genuine cross-collaboration is needed (front-end + back-end + test that have to coordinate as they build). **When NOT to use**: anything sub-agents or a single session could handle. See [[llm-design-patterns#pattern-4-agent-teams]] for the full architectural breakdown.

### The 3 always-on built-in sub-agents

Every Claude Code session uses these automatically — you don't have to invoke them. They show up in the terminal when triggered:

- **Explore** (Haiku, read-only) — fast cheap scout for file/folder search; auto-invoked on questions like *"how does X work in this project?"*
- **Plan** (per-session, read-only) — research before strategy; activates in plan mode (`/plan` or shift+tab twice)
- **General-purpose** (Sonnet, full tool access) — heavy lifting for complex multi-step tasks needing both exploration and changes

These overlap with the 6 built-in agent types from the [[agentic-harness-primitives|leaked Claude Code architecture]] (Explore, Plan, Verify, Guide, General-purpose, Status-line-setup). The 3 above are the user-facing always-on trio. User-defined sub-agents (separate from these) live in `.claude/agents/` per [[claude-code-subagents]] — and across both, the **hard concurrent limit is 10**; additional sub-agents queue.

## Managed Agents CLI Integration

The `anthropic` CLI lets you build [[managed-agents|Managed Agents]] from inside Claude Code, using the project's existing context (CLAUDE.md, codebase) to write much more specific system prompts than the web quick-start produces. Two patterns this enables: (1) build a frontend in Claude Code that calls a Managed Agent endpoint for the actual work, keeping local context lean; (2) point Claude Code at API endpoints for sub-agents instead of co-locating them in `agents/` (which eats context). **Credential warning**: CLI-built agents may default to embedding plaintext API keys in the system prompt rather than using MCP OAuth — prefer OAuth flows.

## Skills Ecosystem

Claude Code has a growing ecosystem of installable skills and plugins:
- [[skills-sh|skills.sh]] — open directory for agent skills (150k+ installs for [[Remotion]])
- [[GStack]] — YC startup methodology (~50k stars)
- [[Superpowers]] — TDD-enforcing plugin (115k stars)
- [[Impeccable]] — frontend design skill (17 commands)
- [[Agency]] — role-based agent templates
- **Excalidraw Diagram Skill** — [[Cole Medin]]'s visual validation workflow for generating diagrams

## Notable

- [[Nate Herk]] demonstrated ingesting 36 YouTube transcripts in ~14 minutes and a single long article in ~10 minutes.
- Runs in VS Code, terminal, or JetBrains IDEs.
- $2.5B run rate as of early 2026.

## See Also
- [[LLM Wiki Pattern]]
- [[Obsidian]]
- [[Agentic Harness Primitives]]
- [[Open-Source Model Integration]]
- [[Ollama]]
- [[OpenRouter]]
- [[/loop]] — proactive scheduling command
- [[OpenBrain]] — personal agent memory via SQL + MCP
- [[AutoResearch and Evals]] — methodology for self-improving skills
- [[summary-karpathy-10x-claude-code|Source: Karpathy 10x'd Claude Code]]
- [[summary-nate-jones-12-agent-primitives|Source: 12 Agent Primitives]]
- [[summary-nate-herk-ollama-claude-code|Source: Ollama + Claude Code]]
- [[summary-nate-b-jones-loop-openbrain|Source: /loop + OpenBrain]]
- [[summary-nate-herk-ultra-plan|Source: Planning In Claude Code Just Got a Huge Upgrade]]
- [[ai-coding-workflow]] — Cole Medin's process discipline that pairs naturally with Ultra Plan
- [[bmad-method]] — heavier alternative to Ultra Plan's automatic multi-agent approach
- [[agent-plugins]] — canonical index of installable Claude Code skills, MCPs, and companion CLIs
