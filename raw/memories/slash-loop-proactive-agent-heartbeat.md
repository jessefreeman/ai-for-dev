---
title: /loop — Give Your Agent a Heartbeat
summary: Anthropic's /loop command lets Claude Code run jobs on a schedule without human interaction, enabling proactive agent workflows that accumulate value across cycles.
tags: tool_claude_code, concept_slash_loop, topic_proactivity, source_nate_b_jones_loop_openbrain
---

# /loop — Give Your Agent a Heartbeat

## Context

From [[summary-nate-b-jones-loop-openbrain|Nate B Jones's /loop + OpenBrain video]]. See also [[/loop]], [[Claude Code]].

## Content

`/loop` is an Anthropic-native Claude Code command (shipped March 2026) that lets the agent run on a repeating cadence without human prompting. The agent wakes up, executes, and goes back to sleep.

**Before /loop**: Getting proactive agent behavior required external scaffolding — bash scripts to manage restarts, markdown files to carry context between iterations, eval conditions bolted on with duct tape.

**After /loop**: Native command. One of the three agent primitives (alongside memory and tools).

**Limitations**: No built-in "done" signal (runs until expiration or manual stop). Session-scoped — closes when laptop closes. For goal-directed work, need evals or a completion state in the memory system.

**The "free time travel" argument**: `/loop` and similar developer-first features give terminal users access to agent capabilities months before they reach consumer-friendly interfaces (claude.ai, co-work, ChatGPT). "If you're willing to use a different window on your computer, you get free time travel."
