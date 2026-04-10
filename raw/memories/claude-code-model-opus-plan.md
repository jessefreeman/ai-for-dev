---
title: Claude Code /model opus-plan Hidden Command
summary: How to set Opus for plan mode and Sonnet for execution in Claude Code.
tags: [tool_claude_code, concept_advisor_strategy, topic_cost_reduction, source_nate_herk_advisor_strategy]
---

# Claude Code /model opus-plan Hidden Command

## Context

From [[summary-nate-herk-advisor-strategy|Claude Just Told Us to Stop Using Their Best Model]]. See also [[claude-code#advisor-strategy-in-claude-code]].

## Content

`/model opus-plan` is a hidden model selector in Claude Code (not listed in the standard `/model` picker — you have to type it manually). It sets:

- **Plan mode**: Opus 4.6
- **Execution mode**: Sonnet 4.6

The status bar shows the active model. Entering plan mode switches to Opus; exiting drops back to Sonnet automatically. This saves session usage because Opus consumes more of the subscription limit than Sonnet.

In Nate Herk's side-by-side test, the opus-plan build (Opus planning + Sonnet execution) produced better output than the Opus-only build while spending fewer tokens.
