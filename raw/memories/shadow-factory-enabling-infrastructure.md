---
title: Shadow-factory enabling infrastructure — the 6-primitive stack
summary: AIMock + trigger.dev + Supabase + MCP + A2A + AG-UI form the wiki's first coherent infrastructure stack a 3-person agentic team can rely on without an ops team.
tags: [concept_shadow_factory, concept_infrastructure, tool_aimock, tool_trigger_dev, concept_three_person_team, source_anmol_aimock_launch]
---

# Shadow-factory enabling infrastructure stack

## Context

From the 2026-04-09 [[aimock]] ingest. See also [[saas-death-spiral]] § Open questions, [[attractor]] (StrongDM 3-person factory), [[summary-nate-b-jones-five-levels|5 Levels of AI Coding]].

## Content

The wiki tracks **shadow factory** as a personal business vision (Jesse) — 3-person teams shipping complete agentic AI products, sibling to the StrongDM 3-person dark factory pattern from Dan Shapiro's [[five-levels-of-ai-coding|5 Levels of AI Coding]]. Until the AIMock ingest, the wiki had no concrete tooling story for *how* a 3-person team survives the operational constraints of running a complete agentic product.

**The 6-primitive infrastructure stack** the wiki now tracks as enabling that operating model:

| Primitive | What it solves for a 3-person team |
|---|---|
| **[[aimock]]** | Deterministic CI across the full 6-service agentic request path. Drift detection catches provider changes within 24h. No ops capacity needed to debug flaky tests. |
| **[[trigger-dev]]** | Cron / webhook primitive for `claude -p`-style autonomous agents (the [[llm-design-patterns#pattern-5-headless\|headless pattern]]). The trigger layer Anthropic Managed Agents lacks. |
| **[[supabase]]** | Memory + auth backbone for [[open-brain]] / [[archon-os]]. Postgres + PGVector + auth in one platform. ~$0.10–0.30/month. |
| **[[mcp]]** | Universal tool protocol — the wire that makes everything connect. Removes per-tool integration cost. |
| **[[a2a-protocol]]** | Agent-to-agent protocol — cross-runtime multi-agent coordination without per-vendor lock-in. |
| **[[ag-ui]]** | Agent-to-frontend protocol — ship a polished UI without rewriting it for every agent backend. |

**The pattern**: each primitive removes a category of operational work that a 3-person team cannot afford to do manually. AIMock removes test debugging; trigger.dev removes scheduling infrastructure; Supabase removes auth + database ops; MCP/A2A/AG-UI remove integration boilerplate.

**Honest gap**: Jesse remembers Nate B Jones referencing a specific company that mocks all their API endpoints as part of how they operate as a shadow factory. AIMock is *infrastructure for the pattern*, not necessarily *the company doing it*. Tracked in [[tasks]] as a follow-up to find the specific Nate B Jones video.

**Next layer to track**: as more shadow-factory-relevant infrastructure lands in wiki ingests (deployment platforms, observability for 3-person teams, customer support automation, billing/finance for tiny SaaS), they should join this stack. The full list eventually becomes its own analysis page once there are 10+ entries.
