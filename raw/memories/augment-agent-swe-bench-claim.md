---
title: Augment Agent — #1 OSS on SWE-bench Verified at 65.4% (caveat)
summary: Augment Agent's headline claim of #1 SWE-bench Verified at 65.4% comes from combining Claude 3.7 + OpenAI o1; treat as marketing-adjacent until peer-reviewed.
tags: [tool_augment_agent, concept_swe_bench, topic_coding_agents, source_worldofai_augment_agent]
---

# Augment Agent — #1 OSS on SWE-bench Verified at 65.4% (caveat)

## Context

From [[summary-worldofai-augment-agent|WorldofAI's Augment Agent video]]. See also [[augment-agent]].

## Content

Augment Code claims **#1 open-source agent on SWE-bench Verified at 65.4%**, achieved by combining Claude 3.7 Sonnet (driver) + OpenAI o1 (assembler) with no proprietary models. The full SWE-bench pipeline is open-sourced; the Augment Agent product itself is hosted.

**Caveat**: this number comes from Augment's own blog post and a single creator video. Treat as marketing-adjacent until independently reproduced. The "open source" label applies to the benchmark pipeline, not the agent runtime.

**Differentiators worth tracking** (independent of the benchmark): persistent cross-session memory, large-codebase indexing (39k+ lines vs the ~10K-token effective limit the video attributes to Cursor), MCP support, visual debugging from screenshots, "Next Edit" predictive editing.
