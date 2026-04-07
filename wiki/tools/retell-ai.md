---
type: entity
created: 2026-04-07
updated: 2026-04-07
tags: [tool, voice-ai, telephony]
---

# Retell AI

Voice-AI platform for building inbound and outbound phone agents. Provides telephony, voice synthesis, multiple agent types (single-prompt / multi-prompt / conversation-flow), function calling for tool use, and webhook delivery of post-call data. The voice front-end of the no-code receptionist pattern documented in [[summary-zubair-trabzada-retell-voice-agent]].

## Agent types

- **Single-prompt** — easiest, flexible enough for receptionist-style work
- **Multi-prompt** — multiple personas/structures for branching conversations
- **Conversation flow** — rigid, for highly formatted scripted calls

## Built-in functions

- `check_calendar_availability` / `book_appointment` (cal.com integration via event_type_id)
- `transfer_call` (cold or warm transfer with target number)
- `end_call`
- Custom HTTP-based functions for arbitrary tool calls

## Cost reference

GPT-4.1 Mini "Fast" voice ≈ $0.094/min at the time of [[summary-zubair-trabzada-retell-voice-agent]].

## Pairs with

- [[n8n]] — for post-call CRM updates via webhook + structured output parser

## Sources

- [[summary-zubair-trabzada-retell-voice-agent|Inbound voice agent walkthrough]]

## See Also

- [[ai-automation-workflows]] — broader playbook
