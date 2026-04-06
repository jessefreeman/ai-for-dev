---
type: concept
sources: ["Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md"]
created: 2026-04-06
updated: 2026-04-06
tags: [concept, claude-code, proactivity, agents, scheduling]
---

# /loop

Anthropic's native Claude Code command that gives agents a **heartbeat** — the ability to run on a schedule without human interaction. Shipped in March 2026. One of the three essential primitives for building agents (alongside [[OpenBrain|memory]] and tools).

## What It Does

`/loop` lets Claude Code run a job on a repeating cadence without you being at the computer. The agent wakes up, executes its task, and goes back to sleep. Before `/loop`, achieving this required external scaffolding: bash scripts, markdown context files, restart logic, and eval conditions "bolted on with duct tape."

## Why It Matters

`/loop` is the proactivity primitive that completes the OpenClaw-equivalent stack natively within Claude Code:

| Before /loop | After /loop |
|---|---|
| Agent only moves when you push it | Agent acts on its own schedule |
| You are the metronome | Agent has its own heartbeat |
| External scaffolding required | Native Anthropic command |

Combined with a memory system (like [[OpenBrain]]) and MCP tools, `/loop` enables agents that accumulate value across cycles:
- **Loop alone** = parrot that repeats advice each time
- **Loop + memory** = detective that builds a case across weeks of data

> "The value of a loop isn't in any single cycle. It's in the accumulation across cycles." — [[Nate B Jones]]

## Common Patterns

- **Morning check-in**: Agent wakes at 6am, reads memory, pattern-matches against history, gives informed recommendations
- **Overnight coding loop**: Agent works on test coverage / refactoring / migration while you sleep, remembering what it tried
- **Sales pipeline**: Agent reviews leads, cross-references history, drafts outreach using best-performing messaging from memory
- **Content calendar**: Agent checks scheduled posts, searches web for relevant breaking news, flags stale references

## Current Limitations (as of March 2026)

- **No built-in "done" signal**: Runs until expiration or manual stop. For goal-directed work, agent must check memory for completion state or run evals.
- **Session-scoped**: Closes when laptop closes. Not an always-on daemon.
- **Terminal-first**: Only available in Claude Code (CLI). Eventually expected to reach more user-friendly interfaces like co-work and claude.ai.

## See Also

- [[OpenBrain]] — the memory primitive; combined with /loop, enables pattern-matching across cycles
- [[OpenClaw]] — the framework /loop replicates without the security risks
- [[Claude Code]] — where /loop lives
- [[AutoResearch and Evals]] — methodology for goal-directed loops with objective metrics
- [[Nate B Jones]] — source
- [[summary-nate-b-jones-loop-openbrain|Source: /loop + OpenBrain]]
