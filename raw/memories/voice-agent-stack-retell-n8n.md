---
title: Voice agent stack — Retell + n8n + structured output parser
summary: The canonical no-code inbound voice agent splits Retell AI (voice + persona + function calling) and n8n (post-call CRM via webhook), with an n8n structured-output-parser to control JSON shape.
tags: [tool_retell_ai, tool_n8n, topic_voice_agent, source_zubair_trabzada]
---

# Voice agent stack — Retell + n8n + structured output parser

## Context

From [[summary-zubair-trabzada-retell-voice-agent|Zubair Trabzada's inbound dental receptionist build]]. Entities: [[retell-ai]], [[n8n]].

## Content

**The canonical no-code inbound voice agent** splits responsibilities cleanly:

- **[[retell-ai|Retell AI]]** = voice front end + persona prompt + function calling + telephony
  - Single-prompt agent type is the easiest entry point
  - Built-in functions: `check_calendar_availability`, `book_appointment` (cal.com via API key + event_type_id), `transfer_call` (cold/warm), `end_call`
  - GPT-4.1 Mini "Fast" voice ≈ $0.094/min
  - Persona prompt embeds knowledge base inline OR via separate KB attachment

- **[[n8n|n8n]]** = post-call automation backbone
  - **Webhook node** as inbound trigger (POST method, set production URL in Retell webhook settings)
  - **AI agent node** with structured output parser to control JSON shape:
    1. Enable "require specific output format" on the agent node
    2. Attach a structured output parser
    3. Define the JSON schema (first/last name, phone, email, insurance, call summary)
  - **Output**: Google Sheets row update / HubSpot upsert / email / Slack notification

**Business case**: dental clinics miss 27% of inbound calls, auto shops 39%, banks 51% (Invoca data). Voice agents are a solved-problem revenue play for service-based verticals.
