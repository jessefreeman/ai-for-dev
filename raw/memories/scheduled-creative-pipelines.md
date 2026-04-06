---
title: Scheduled Creative Pipelines Pattern
summary: Combining creative tools (Stitch, Remotion) with cloud-based Claude Code scheduling to create autonomous content generation pipelines.
tags: [person_nate_b_jones, tool_remotion, tool_google_stitch, tool_claude_code, concept_scheduling, source_nate_b_jones_google_stitch]
---

# Scheduled Creative Pipelines Pattern

## Context

From [[summary-nate-b-jones-google-stitch|Nate B Jones's Google Stitch video]]. See also [[Remotion]], [[Google Stitch]], [[Claude Code]].

## Content

Noah's Way announced cloud-based scheduling for Claude Code (March 2026): set a repo, schedule it, write a prompt. Claude runs on a cadence in cloud infrastructure — laptop can be closed, terminal can be off.

**The pattern**: hook creative primitives (Stitch, Remotion) to scheduling primitives for autonomous content workflows.

**Concrete examples Nate describes:**
- **Weekly product update video**: Scheduled job pulls all shipped features, generates a Remotion video with motion graphics, renders in multiple aspect ratios, queues for upload — every week, automatically
- **Daily analytics video**: Checks analytics dashboard, generates data visualization video, sends to team Slack channel
- **Marketing site auto-update**: Monitors changelog, generates updated UI screenshots via Stitch, rebuilds the feature gallery every time a new version drops

**Why this matters**: These pipelines replace entire categories of human coordination overhead — "remember to update the site," "update the docs," "is the feature gallery current?" The answer is now: it updates itself.

**The building blocks**: creative tools + scheduling = content that maintains itself. The constraint is no longer tooling; it's the clarity of your intent when defining the pipeline.
