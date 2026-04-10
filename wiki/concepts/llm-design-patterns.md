---
type: concept
sources: ["Every Claude Code Workflow Explained (& When to Use Each).md", "coleam00Archon The first open-source harness builder for AI coding. Make AI coding deterministic and repeatable..md"]
created: 2026-04-09
updated: 2026-04-10
tags: [concept, design-patterns, llm, agent, workflow, claude-code, framework]
---

# LLM Design Patterns

The wiki's canonical library of **named patterns for working with LLMs and agents**. A framework page in the same tier as [[four-prompting-disciplines]] and [[agentic-harness-primitives]] — it captures *patterns*, not products. Each pattern has a name, a *when-to-use*, a *when-not-to-use*, an architectural sketch, a cost profile, and the primitives that implement it across the tools the wiki tracks.

> **Built to grow.** This page starts with a single source ([[summary-simon-scrapes-claude-code-workflows|Simon Scrapes's Claude Code workflow taxonomy]]) and the 5 Claude Code-specific patterns it names. Future ingests on workflow patterns from other surfaces (Cursor, Cline, Codex, the Claude Agent SDK, generic LLM-app patterns) extend this page rather than fragmenting. See **[[#how-to-extend-this-page]]** for the contribution rules.

## Why this page exists

The wiki tracks dozens of LLM tools, agent harnesses, and orchestration frameworks. Each one ships its own vocabulary for the same handful of underlying patterns — Claude Code calls something "sub-agents," Paperclip calls it "agent orchestration," LangGraph calls it "stateful nodes," Cursor calls it "background agents." Without a shared vocabulary, every new tool becomes a fresh re-learning exercise.

This page is the **vocabulary**. When a tool ships a feature, the wiki should be able to say *"that's the [Pattern Name] pattern, here's the page that explains it, here's how the other tools implement it."* Patterns travel; tools come and go.

## How patterns are named in this wiki

Every entry on this page uses the **first source's name for the pattern** when one exists. Simon Scrapes names the five Claude Code workflow patterns with the labels below; the wiki adopts those labels. When a future source covers the same pattern under a different name, the alternate name is captured as an **also known as** line — but the canonical entry stays under the original name to keep cross-references stable.

If a future source introduces a *new* pattern (one of the existing five doesn't fit), add a new entry. If a future source covers an *existing* pattern from a new angle, extend that entry's "implementations" or "notes" sections.

---

## Pattern 1 — Sequential Flow

**Also known as**: linear conversation, single-session flow.

**What it is.** One conversation. Every task builds on the previous one's context. Output of task 1 feeds task 2 feeds task 3. The model sees the entire history on every turn.

**When to use.**
- Tasks that genuinely depend on prior context (each step needs to know what the last step did)
- Exploratory work where you don't yet know the shape of the solution
- Anything small enough that the context window won't fill before completion

**When NOT to use.**
- Long sessions that approach the context window ceiling — **context rot** sets in (model forgets earlier turns or fails to find them)
- Multiple independent tasks that don't benefit from shared context (use [[#pattern-2-the-operator]] instead)

**Architectural sketch.**
```
You ──task 1──> [Claude] ──result 1──> You
You ──task 2──> [Claude (sees task 1 + result 1)] ──result 2──> You
You ──task 3──> [Claude (sees tasks 1+2 + results 1+2)] ──result 3──> You
                                                       ^
                                                       └── shared context grows
```

**Cost profile.** Cheapest of the patterns per turn, but token cost compounds with conversation length.

**Mitigations for context rot.**
- Well-structured `CLAUDE.md` (or equivalent project memory file)
- Well-described skills that the model loads on demand and offloads when done
- `/clear` to wipe and start fresh
- `/compact` to summarize and reset the working context

**Implementations the wiki tracks.**
- [[claude-code]] — every base session
- Any single-conversation use of Cursor, Cline, ChatGPT, or Claude.ai

**Source(s)**: [[summary-simon-scrapes-claude-code-workflows]]

---

## Pattern 2 — The Operator

**Also known as**: multi-terminal orchestration, work-tree parallel.

**What it is.** *You* as orchestrator, running multiple LLM sessions in parallel. Each session has its own context window, its own copy of the project state, and its own task. You manually coordinate by switching between them.

**When to use.**
- Multiple independent tasks that don't share data (e.g., new feature + bug fix + redesign — none depends on the others)
- Maximum-control situations where you want to babysit each session
- When you want clean context per task without inventing a delegation primitive

**When NOT to use.**
- More than ~4–5 parallel sessions (you stop being able to track them)
- Tasks that genuinely depend on each other (you'll spend more time copy-pasting between terminals than working)
- Anything you'd rather hand off entirely (use [[#pattern-3-split-and-merge]] or [[#pattern-5-headless]])

**Architectural sketch.**
```
Terminal 1: [Claude session A] working on task A in work-tree A
Terminal 2: [Claude session B] working on task B in work-tree B
Terminal 3: [Claude session C] working on task C in work-tree C
                          ^
You — coordinating, copy-pasting findings, deciding when to merge each branch
```

**Cost profile.** N parallel sessions × per-session cost. No cross-session sharing means no cross-pollination cost.

**Implementations the wiki tracks.**
- [[claude-code]]: **`claude -w <task-name>`** flag — creates a **git work-tree** (separate copy of the project on its own branch) and drops Claude straight in. Auto-cleanup on close: empty work-trees are removed; work-trees with changes prompt before discarding.
- Multi-terminal Cursor / Cline / Codex — same pattern, no built-in work-tree flag

**Source(s)**: [[summary-simon-scrapes-claude-code-workflows]]

---

## Pattern 3 — Split & Merge

**Also known as**: sub-agent fan-out, hub-and-spoke delegation.

**What it is.** A single LLM session that fans out work across multiple specialized sub-agents in parallel, then merges the results. Hub-and-spoke topology: **sub-agents can only report back to the main agent; they cannot talk to each other.** The main agent decides what to split, dispatches, waits, and synthesizes.

**When to use.**
- Tasks that decompose into independent pieces (researching 5 competitors; running tests across 5 modules)
- The **builder-validator chain**: sub-agent 1 builds → returns to main → main routes to sub-agent 2 (validator) → returns. Built-in quality check without you doing the review.
- When you want delegation but don't want to manage multiple terminals (Pattern 2)

**When NOT to use.**
- Tasks that need cross-talk between specialists (use [[#pattern-4-agent-teams]])
- Trivial work that doesn't benefit from parallelism (the orchestration overhead isn't worth it)

**Architectural sketch.**
```
       [Main agent]
       /    |    \
   sub-1  sub-2  sub-3
     |     |     |
     └─────┴─────┘
           |
       [Main agent merges]
```

**Cost profile.** Higher per-task than Sequential because each sub-agent has its own context window. But cheaper than The Operator at scale because Claude does the orchestration. **Hard limit on Claude Code: 10 concurrent sub-agents.** Additional sub-agents queue.

**Implementations the wiki tracks.**
- [[claude-code]] — three always-on built-in sub-agents (**Explore** on Haiku, read-only; **Plan** in plan mode, read-only; **General-purpose** on Sonnet, full tool access) that Claude routes to automatically. Plus user-defined sub-agents in `.claude/agents/` per [[claude-code-subagents]]. The 10-concurrent limit was surfaced in [[summary-simon-scrapes-claude-code-workflows]].
- **GSD ("Get Shit Done") framework by Tash** — comprehensive sub-agent framework example with detailed agents in `.claude/agents/`; name-checked but not yet ingested.
- [[paperclip]] — multi-agent orchestration at company level
- [[claude-code-subagents]] — the canonical primitive page
- [[agentic-harness-primitives]] — the 6 built-in agent types in the leaked Claude Code architecture (Explore, Plan, Verify, Guide, General-purpose, Status-line-setup) overlap with the 3 always-on sub-agents documented here

**Source(s)**: [[summary-simon-scrapes-claude-code-workflows]], [[summary-worldofai-claude-code-subagents]], [[summary-nate-jones-12-agent-primitives]]

---

## Pattern 4 — Agent Teams

**Also known as**: peer-to-peer agent collaboration, shared task list.

**What it is.** Multiple agents that share a task list and can **send messages directly to each other** — no main-agent funnel. The most advanced coordination pattern in the wiki so far. Specialists can ask each other questions, hand off work, and adapt together.

**When to use.**
- Genuinely complex multi-discipline projects (front-end dev + back-end dev + test dev that need to coordinate as they build)
- Anywhere the [[#pattern-3-split-and-merge]] hub-and-spoke topology is the bottleneck

**When NOT to use.**
- Almost everything else. *"You don't need agent teams for most of your work. You should only reach for them when sub-agents or even a single session couldn't do the job."* — Simon Scrapes
- Anything where the 4–7× token cost matters

**Architectural sketch.**
```
           [Team lead / shared task list]
              /        |        \
          agent-1 ↔ agent-2 ↔ agent-3
                ↑       ↑       ↑
                └───────┴───────┘
                  direct messages
```

**Cost profile.** **4–7× more tokens** than a single session, per the source. Each teammate is a full Claude Code instance with its own context window plus the cross-agent messaging overhead and the shared task list.

**Implementations the wiki tracks.**
- [[claude-code]] — **research preview shipped with Opus 4.6.** Requires opt-in: `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1` env var in `settings.json`. Then specify *"use an agent team"* explicitly in your prompt — Claude does NOT auto-route. Navigate teammates in the terminal with **shift+up / shift+down**; message a teammate directly or talk to the team lead.
- (No other tool in the wiki currently implements peer-to-peer agent messaging as a first-class primitive — closest is [[paperclip]]'s ticketing model, but that's still hub-and-spoke through the dashboard.)

**Wiki framing**: treat Agent Teams as a power-user tool with a high cost ceiling, not the default. *"A lot of people in the community are saying this is just a way to produce large quantities of work very quickly which isn't necessarily a good thing. You still need the work to be the right work."*

**Source(s)**: [[summary-simon-scrapes-claude-code-workflows]]

---

## Pattern 5 — Headless

**Also known as**: autonomous execution, non-interactive mode, scheduled agents.

**What it is.** No conversation, no human in the loop. You set a task, walk away, and come back to results. The model has full permissions and reports when done. The bridge from "tool you sit with" to "team member that goes and works independently."

**When to use.**
- Tasks where the output is **easy to verify** after the fact
- Scheduled / cron-driven workflows (morning report, nightly content pipeline, automated triage)
- Batch processing (process 100 transcripts → generate 100 summaries)
- Chains of headless calls connected by file artifacts

**When NOT to use.**
- Anything hard to undo (database migrations, file deletions, external API calls with side effects)
- Anything where you can't easily verify the output — *"you're not checking each step"*
- Anything that requires judgment you're not willing to delegate

**Architectural sketch.**
```
[cron / scheduler] ──> claude -p "<prompt>" --allowed-tools=...
                              |
                              v
                    [Claude runs autonomously]
                              |
                              v
                    [output file or API call]
                              |
                              v
                    You read the result later
```

**Cost profile.** Per-run token cost only. No interactive overhead.

**Guardrails.**
- `--allowed-tools <list>` — restrict the tools the headless Claude can call (e.g., read-only)
- Output verification step (read the artifact before trusting it)
- Start with reversible tasks; expand the scope as trust grows

**Connection to defensive security**: this pattern is the structural opposite of **[[ai-personal-agent-hardening#rule-1-human-in-the-loop-is-mandatory]]**. The hardening rule says human-in-loop is mandatory for *inbound message processing* (where attackers can inject); the headless pattern works for *outbound batch tasks* you initiate yourself with verifiable output. The two are not in conflict — they apply to different sides of the agent's input surface.

**Implementations the wiki tracks.**
- [[claude-code]]: **`claude -p <prompt>`** flag — runs Claude in non-interactive mode
- **The Ralph loop** — community pattern: re-feed the same prompt back to Claude until output meets criteria; each iteration sees the previous cycle's work. Used to ship full projects overnight. **Now a first-class Archon workflow**: `archon-ralph-dag` iterates through PRD stories until done. See [[archon-os]].
- **PIV loop** (Plan-Implement-Validate) — Cole Medin's pattern (see [[ai-coding-workflow]]). **Now a first-class Archon workflow**: `archon-piv-loop` — guided PIV with human review between iterations. See [[archon-os]].
- [[trigger-dev]] — external trigger primitive that complements `claude -p` for cloud-scheduled workflows
- [[slash-loop|/loop]] — Anthropic's local proactivity primitive (laptop-bound; less powerful than `-p` + cron)
- [[managed-agents]] — Anthropic's hosted version of headless, but **without** native scheduling triggers as of launch

**Source(s)**: [[summary-simon-scrapes-claude-code-workflows]]

---

## The pattern selection ladder

The five patterns are not alternatives — they're a progression. Climb only as high as the task requires.

```
Sequential ──> Operator ──> Split & Merge ──> Agent Teams ──> Headless
   |              |               |                |              |
   v              v               v                v              v
single        multi-          single             multi-       no human
session       session         session,           session,     in loop
              you             Claude             agents
              orchestrate     orchestrates       orchestrate
              parallel        parallel           themselves
              terminals       sub-agents
```

**Guidance**:
1. Default to **Sequential** until you hit the context window or context rot
2. Move to **Operator** when you have ≥2 independent tasks and can babysit terminals
3. Move to **Split & Merge** when you want delegation without the babysitting (and the work is hub-and-spoke compatible)
4. Move to **Agent Teams** *only* when genuine cross-collaboration is required (and budget the 4–7× token cost)
5. Move to **Headless** when you no longer need to be in the loop at all (and the output is verifiable)

**Cost ladder** (rough, per-task):
```
Sequential  <  Operator  <  Split & Merge  <<  Agent Teams  ≈  Headless × N runs
```
Headless is cheap *per run* but cron'd headless can rack up costs faster than interactive sessions because there's no human gating it.

---

## How to extend this page

When a future source introduces a workflow pattern, follow these rules to keep the page coherent:

1. **Same pattern, new source** → extend the existing entry. Add the source under "Source(s)"; add new implementations under "Implementations the wiki tracks"; add interesting nuances to the body under existing headings. Don't create a duplicate entry under a different name.
2. **Same pattern, different name** → add the alternate name to the "Also known as" line at the top of the entry. Keep the canonical entry under the original name.
3. **New pattern not covered here** → add a new top-level `## Pattern N — Name` section. Use the same template (what it is, when to use, when NOT to use, architectural sketch, cost profile, implementations, source(s)). Update the "pattern selection ladder" if the new pattern fits in the progression.
4. **Pattern that crosses tools** → record implementations across every tool that supports it. The point of this page is the cross-tool vocabulary; resist filing the pattern only on one tool's entity page.
5. **Patterns that turn out to be the same as an existing one under a fancier name** → fold them in. The "Agentic RAG Loop" or "ReAct" or "Reflexion" patterns from academic literature should map to the right entry here, not create their own pages, unless they're genuinely orthogonal.

---

## Adjacent framework pages

- **[[four-prompting-disciplines]]** — Nate B Jones's prompt-craft → context-engineering → intent-engineering → specification-engineering ladder. Different axis: this page is about *workflow architecture*, that page is about *how to talk to the model in any workflow*.
- **[[agentic-harness-primitives]]** — Nate B Jones's 12 primitives from the leaked Claude Code architecture. Different layer: that page is about *the infrastructure underneath any harness*; this page is about *the patterns users compose with that infrastructure*.
- **[[multi-agent-orchestration]]** — higher-level concept page on coordinating multiple agents toward shared goals. This page is the more granular, pattern-by-pattern breakdown.
- **[[claude-code-subagents]]** — the user-defined sub-agent primitive in Claude Code. The implementing primitive for [[#pattern-3-split-and-merge]].

## See Also

- [[claude-code]] — primary implementation surface for all five patterns documented here
- [[claude-code-subagents]] — the implementing primitive for Pattern 3
- [[multi-agent-orchestration]] — higher-level concept
- [[agentic-harness-primitives]] — infrastructure layer
- [[four-prompting-disciplines]] — adjacent framework
- [[ai-personal-agent-hardening]] — connects to Pattern 5 (headless requires hardening on the input side)
- [[managed-agents]] — Anthropic's hosted version of headless (without scheduling)
- [[trigger-dev]] — external scheduler complement to Pattern 5
- [[paperclip]] — Pattern 3/4 implementation at company level
- [[simon-scrapes]] — first source author
- [[nate-b-jones]] — author of adjacent framework pages
- [[summary-simon-scrapes-claude-code-workflows|Source: Every Claude Code Workflow Explained]]
