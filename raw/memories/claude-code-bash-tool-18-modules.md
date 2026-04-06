---
title: Claude Code Bash Tool 18-Module Security Architecture
summary: The bash tool in Claude Code is protected by 18 separate security modules — a concrete example of what production-grade agent security looks like.
tags: [tool_claude_code, concept_agentic_harness, topic_agent_security, source_nate_jones_12_primitives]
---

# Claude Code Bash Tool 18-Module Security Architecture

## Context

From [[summary-nate-jones-12-agent-primitives|12 Agent Primitives]] — [[Nate B Jones]]'s analysis of the Claude Code leak. Related to Primitive #2 (Permission System) in [[Agentic Harness Primitives]].

## Content

The bash tool (shell execution) in Claude Code has an 18-module security architecture. Modules include:
- Pre-approved command patterns (known-safe allow list)
- Destructive command detection (warns before delete/overwrite)
- Git-specific safety checks
- Sandbox termination controls

This is not paranoia — it's what separates a system running safely at $2.5B run rate from a demo notebook. The principle: if your agent can take actions in the world (execute code, call APIs, send messages, modify files) without a layered permissions architecture, you have a demo, not a product.

Three trust tiers in Claude Code's permission system:
- **Built-in tools**: always available, highest trust
- **Plugin tools**: medium trust, disableable on command
- **Skills**: user-defined, lowest trust by default
