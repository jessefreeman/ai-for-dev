---
type: concept
sources: ["I Broke Down Anthropic's $2.5 Billion Leak. Your Agent Is Missing 12 Critical Pieces..md"]
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, agent, architecture, engineering, claude-code]
---

# Agentic Harness Primitives

A framework of 12 production-grade infrastructure primitives for building reliable AI agents, derived from [[Nate B Jones]]'s analysis of the leaked [[Claude Code]] architecture. Organized into three tiers by implementation priority.

The central thesis: **successful agents are 80% plumbing, 20% model**. The primitives that separate production systems from demos are mostly boring backend engineering — crash recovery, permissions, logging, state management.

## Tier 1 — Day One Non-Negotiables

These are the foundations everything else builds on. Teams that skip them build demos that don't survive real use.

### 1. Tool Registry with Metadata-First Design
Define agent capabilities as a data structure before writing any implementation code. The registry answers *what exists and what does it does* without executing anything. Claude Code maintains 207-entry command registry + 184-entry tool registry; each entry has name, source hint, and description; implementations load on demand.

Without a registry: can't filter tools by context, can't introspect without side effects, every new tool requires orchestration changes.

### 2. Permission System and Trust Tiers
Classify tools by risk. Claude Code uses three tiers — built-in (always on, highest trust), plugin (medium trust, disableable), skills (user-defined, lowest trust). The bash tool has an 18-module security architecture: pre-approved patterns, destructive command detection, git-specific checks, sandbox termination.

An agent that can take real-world actions without a permissions layer is a demo, not a product.

### 3. Session Persistence That Survives Crashes
An agent session is not conversation history — it's recoverable state. Must include: conversation, usage metrics, permission decisions, configuration. Claude Code stores sessions as JSON; full agentic engine can be reconstructed from stored state. Agents crash constantly. Every unrecoverable interruption degrades the customer experience.

### 4. Workflow State vs Conversation State
These are distinct and almost every framework conflates them.

| | Conversation State | Workflow State |
|--|--|--|
| Answers | What have we said? | What step are we on? |
| Handles | Chat history | Side effects, retry safety |
| Scope | Within the agent | Persists beyond the agent |

Without workflow state, a crash mid-execution may duplicate writes or re-run expensive operations. Model explicit states: `planned`, `awaiting-approval`, `executing`, `waiting-on-external`.

### 5. Token Budget Tracking with Pre-Turn Checks
Define hard limits: max turns, max token budget, compaction threshold. Before each API call, project token usage — stop with a structured reason if the budget would be exceeded. Prevents runaway cost loops. Claude Code implements this as a customer trust feature, not a revenue optimization.

## Tier 2 — Operational Foundation

### 6. Structured Streaming Events
Emit typed events at each step: `message_start`, `command_match`, `tool_match`, etc. Include a crash event (with reason) as the final stream message on failure — a black-box recorder. Streaming is not just for showing text; it's how users understand what the agent is doing and when to intervene.

### 7. System Event Logging
Maintain a history log that records what the agent *did*, separate from what it *said*. Contents: context loaded, registry initialization, routing decisions, execution counts, permission grants/denials. Required for enterprise auditability. Allows provable reconstruction of any run.

### 8. Verification at Two Levels
- **Level 1 (common)**: Verify completed work is correct.
- **Level 2 (often skipped)**: Test that harness changes don't break existing guardrails. E.g., "Do destructive tools still require approval after this change?" Harnesses evolve — each change affects all future runs.

## Tier 3 — Operational Maturity

### 9. Tool Pool Assembly
Don't load all tools on every run. Assemble a session-specific pool based on mode flags, permission context, and deny lists. For general-purpose agents, give access to a broader tool set and let the agent select what it needs — rather than hardcoding a fixed list.

### 10. Transcript Compaction
Auto-compact conversation history after a configurable turn count. Retain recent entries; discard older ones; track persistence status. Balance: keep initial instructions, shed irrelevant intermediates. Critical for long-running agents facing context limits.

### 11. Permission Audit Trail
Permissions are first-class objects, not boolean gates. Claude Code has three permission handlers: interactive (human in the loop), coordinator (multi-agent orchestrator), swarm worker (autonomous under orchestrator). Permissions must be queryable, not just enforced.

### 12. Agent Type System
Define constrained agent types with specific prompts, allowed tools, and behavioral constraints. Claude Code's six built-in types: Explore (cannot edit files), Plan (cannot execute code), Verify, Guide, General-purpose, Status-line-setup. Don't spawn agents randomly — define observable types to manage agent populations and efficiency.

## Common Failure Modes

- Building multi-agent coordination before permissions work
- Implementing a plugin marketplace before sessions survive crashes
- Conflating conversation state with workflow state
- Hardcoding tool sets instead of using dynamic pool assembly
- No token budgets → runaway cost loops

## Relation to Claude Code Architecture

Claude Code is the primary public example of these primitives at production scale ($2.5B run rate, millions of users). The leak exposed the internal structure confirming these patterns. The primitives are model-agnostic — applicable to any agent system regardless of LLM choice.

## See Also
- [[Claude Code]]
- [[claude-code-subagents|Claude Code Sub-Agents]] — Anthropic's first-class delegation primitive
- [[slash-loop|/loop]] — the proactivity primitive that extends these foundations into scheduled execution
- [[LLM Wiki Pattern]]
- [[Nate B Jones]]
- [[summary-nate-jones-12-agent-primitives|Source: 12 Agent Primitives]]
