---
type: source-summary
sources: ["This AI Voice Agent Can Handle EVERYTHING! (No-Code Tutorial).md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, voice-agent, n8n, retell-ai, tutorial]
---

# AI Voice Agent: Inbound Receptionist (Retell + n8n)

**Author / channel:** [[zubair-trabzada|Zubair Trabzada]]
**Format:** video
**Source:** [Original](../../raw/archive/This%20AI%20Voice%20Agent%20Can%20Handle%20EVERYTHING%21%20%28No-Code%20Tutorial%29.md)
**Published:** 2025-06-28

## Summary

End-to-end no-code build of an inbound receptionist voice agent for a dental office: [[retell-ai|Retell AI]] handles voice + persona + tool calling (cal.com calendar check/book, transfer, end-call), [[n8n]] handles post-call CRM updates (Google Sheets / HubSpot) via a webhook + structured output parser. Frames the business case with industry stats: dental clinics miss 27% of inbound calls, auto shops 39%, banks 51% — every missed call is lost revenue. Single-prompt agent setup with GPT-4.1 Mini (~$0.094/min). Generalizes to any service-based vertical.

## Key Points

- **Business case** — Invoca data: dental 37% missed calls, auto dealerships 37%, auto service 39%, banks 51%. Voice agents are a solved-problem revenue play.
- **Stack split** — [[retell-ai|Retell AI]] = voice front end + persona + function calling + telephony. [[n8n]] = post-call automation backbone (webhook → AI agent → CRM update).
- **Retell agent type** — single-prompt (vs multi-prompt or conversation flow). Easiest to build, flexible enough for receptionist work.
- **Voice agent functions** — `check_calendar_availability`, `book_appointment` (both via cal.com API + event_type_id), `transfer_call` (cold/warm with target number), `end_call`.
- **Cost** — GPT-4.1 Mini "Fast" voice ~$0.094/min. Higher-quality voices add cost.
- **n8n side** — webhook (POST, prod URL active, test URL for builds) → AI agent node with structured output parser (JSON schema for first/last name, phone, email, insurance, call summary) → Google Sheets row update / HubSpot upsert / email / Slack.
- **Structured output trick** — enable "require specific output format" on the n8n AI agent node, attach a structured output parser, paste your JSON schema. This is how you control LLM output shape reliably.
- **Knowledge base** — Retell supports a separate knowledge base attachment, but the demo embeds business info inline in the persona prompt for simplicity.

## Connected Pages

- [[retell-ai]] — voice agent platform entity
- [[n8n]] — automation backbone
- [[zubair-trabzada|Zubair Trabzada]] — channel hub
- [[ai-automation-workflows]] — sibling automation playbook
