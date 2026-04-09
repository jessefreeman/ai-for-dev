---
title: Managed Agents pricing — $0.08/hr per active session
summary: Anthropic Managed Agents bills $0.08/hr while sessions are active, plus standard API token costs; environments are free; no subscription required.
tags: [tool_managed_agents, topic_pricing, topic_anthropic, source_nate_herk_managed_agents]
---

# Managed Agents pricing — $0.08/hr per active session

## Context

From [[summary-nate-herk-managed-agents|I Tested Claude's New Managed Agents]]. See also [[managed-agents]].

## Content

- **Environments**: free (idle environments cost nothing).
- **Sessions**: **$0.08/hour** while a session is *active*.
- **Tokens**: standard API rates on top of session billing.
- **Subscription**: not required. Anyone with a $5+ API key balance can create and run agents.

This sidesteps Anthropic's recent crackdown on third-party harnesses using Pro/Max subscriptions — Managed Agents is API-billed only. The structural implication: this is cheaper than building a comparable always-on setup *if* sessions stay short, but more expensive than [[trigger-dev|trigger.dev]] for use cases that require long-running or scheduled execution (because trigger.dev doesn't bill per active hour).
