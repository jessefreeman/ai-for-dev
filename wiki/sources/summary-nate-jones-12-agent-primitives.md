---
type: source-summary
sources: ["I Broke Down Anthropic's $2.5 Billion Leak. Your Agent Is Missing 12 Critical Pieces..md"]
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, agent, claude-code, architecture, video, transcript]
---

# Summary: Nate B Jones — 12 Agent Primitives from the Claude Code Leak

[[Nate B Jones]] analyzes the Claude Code architecture leak to extract 12 production-grade agent primitives, organized into three tiers. The thesis: building agents is 80% plumbing, 20% AI model.

## Context: The Leak

Anthropic accidentally exposed Claude Code's source map via a build configuration error. This followed another leak earlier that week (Claude "Mythos" model draft materials left on a public server). Jones frames both as symptoms of development velocity outrunning operational discipline — a question every AI-assisted dev team should ask itself.

Prevailing conjecture: an engineer's Claude Code session fell back to Sonnet via adaptive reasoning mode, and the model committed the map file as a routine build step. Unconfirmed, but plausible enough to dominate discourse.

## The 12 Primitives

### Tier 1 — Day One Non-Negotiables

**1. Tool Registry with Metadata-First Design**
Define agent capabilities as a data structure before writing implementation. Claude Code maintains two parallel registries: 207-entry command registry (user-facing) and 184-entry tool registry (model-facing). Each entry carries name, source hint, and responsibility description. Implementations load on demand. Without a clean registry, you can't filter tools by context, can't introspect without side effects, and every new tool requires orchestration changes.

**2. Permission System and Trust Tiers**
Three trust tiers: built-in (always available, highest trust), plugin (medium trust, disableable), skills (user-defined, lowest trust). The bash tool alone has an 18-module security architecture — pre-approved command patterns, destructive command warnings, git-specific checks, sandbox termination. An agent that can take real-world actions without a permissions layer is a demo, not a product.

**3. Session Persistence That Survives Crashes**
A session is not just conversation history. Claude Code persists sessions as JSON files capturing: session ID, messages, token usage (in/out), permission decisions, configuration. Full agentic engine can be reconstructed from stored state. Agents crash constantly — connections drop, tabs close. Every unrecoverable interruption is a degraded customer experience.

**4. Workflow State vs Conversation State**
These are different things almost every framework conflates. Conversation state answers *what have we said*. Workflow state answers *what step are we on, what side effects have occurred, is this safe to retry*. Without workflow state, a crash mid-tool-execution may duplicate writes, double-send messages, or re-run expensive operations. Model explicit states: `planned`, `awaiting-approval`, `executing`, `waiting-on-external`.

**5. Token Budget Tracking with Pre-Turn Checks**
Claude Code's query engine defines hard limits: max turns, max token budget, compaction threshold. Before each API call, projected token usage is calculated — if it exceeds the budget, execution stops with a structured stop reason. Prevents runaway cost loops. Jones frames this as Anthropic acting against its short-term revenue interest to build customer trust.

### Tier 2 — Operational Foundation

**6. Structured Streaming Events**
Every streaming event is an opportunity to surface system state. Claude Code's query engine emits typed events: `message_start`, `command_match`, `tool_match`, etc. Includes a special crash event (with reason) as the final stream message on failure — a black box recorder. Users can intervene mid-run because the stream shows what the model is thinking.

**7. System Event Logging**
Separate from conversation and streaming: a history log recording what the agent *did*, not just what it *said*. Captures context loaded, registry initialization, routing decisions, execution counts, permission grants/denials. Required for enterprise-grade auditability — allows provable reconstruction of any agentic run.

**8. Verification at Two Levels**
Level 1 (obvious): a separate step to verify completed work. Level 2 (often missed): tests that verify harness changes don't break existing guardrails. E.g., "Do destructive tools still require approval after this change?" Harnesses evolve — each change affects all future runs, so guard rails on the harness itself are as important as runtime verification.

### Tier 3 — Operational Maturity

**9. Tool Pool Assembly**
With 184 tools, Claude doesn't load all of them per run. It assembles a session-specific pool based on mode flags, permission context, and deny lists. For general-purpose agents, allow dynamic tool pool selection rather than hardcoding tool sets — the agent reads the registry and picks what it needs.

**10. Transcript Compaction**
Conversation history is token-expensive. Claude Code auto-compacts after a configurable turn count, retaining recent entries and discarding older ones. Transcript store tracks persistence status to prevent data loss. Critical for long-running agents — must balance keeping initial instructions while shedding irrelevant intermediate steps.

**11. Permission Audit Trail**
Permissions are first-class objects, not boolean gates. Claude Code has three permission handlers: interactive (human in the loop), coordinator (multi-agent orchestrator handing out permissions), swarm worker (autonomous under orchestrator). Each has different permission structures. Permissions must be queryable, not just enforced.

**12. Agent Type System**
Six built-in agent types: Explore, Plan, Verify, Guide, General-purpose, Status-line-setup. Each has its own prompt, allowed tools, and behavioral constraints (Explore cannot edit files; Plan does not execute code). Lesson: constrain agent roles sharply when splitting work. Don't spawn agents randomly — define observable types to manage agent populations efficiently.

## The Agentic Harness Skill

Jones released a Claude Code skill with two modes:
- **Design mode**: describe the product you're building → get a recommended harness shape, minimum primitive set, phased implementation plan, and verification criteria
- **Evaluation mode**: point at an existing codebase/CLAUDE.md → get findings ordered by severity with a prioritized upgrade path and confirmation tests

Also built for OpenAI Codex. Core logic is identical — primitives apply regardless of LLM.

The skill is deliberately opinionated toward lean, single-agent, simple architectures. Premature complexity (multi-agent coordination before working permissions, plugin marketplace before crash-resistant sessions) is the most common failure mode.

## See Also
- [[Agentic Harness Primitives]]
- [[Claude Code]]
- [[Nate B Jones]]
- [[Open-Source Model Integration]]
