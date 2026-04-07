---
type: source-summary
sources: ["Replace Your Expensive Cloud Tools With These (Self-Hostable) Alternatives.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, self-hosting, n8n]
---

# Replace Your Expensive Cloud Tools With Self-Hostable Alternatives

**Author / channel:** [[simon-hoiberg|Simon Høiberg]]
**Format:** video
**Source:** [Original](../../raw/archive/Replace%20Your%20Expensive%20Cloud%20Tools%20With%20These%20%28Self-Hostable%29%20Alternatives.md)
**Published:** 2025-03-03

## Summary

Høiberg replaced six paid SaaS tools with free open-source self-hostable alternatives, saving >$10K/yr for a small bootstrapped team. The replacements: **Notion → Docmost** (wiki) + **Plane** (PM) + **Strapi** (CMS); **Zapier/Make → [[n8n]]**; **Airtable → NocoDB**; **PostHog → Postgres + Grafana**; **OpenAI hosted → [[deepseek]] on Hetzner GPU (€84/mo)**. The wiki-relevant signal is the n8n + DeepSeek + GPU-rental stack — adjacent to the self-hosting / local-AI thread already in the wiki.

## Key Points

- **Notion replacement is a tri-split** — no single tool replaces it well. Docmost for docs/wiki, Plane for project management ($799 lifetime upgrade for cycles + time tracking), Strapi for CMS-style blog/newsletter content.
- **Zapier + Make → n8n** — Høiberg's claim: n8n has the best AI-agent implementation of any automation platform. Self-hosted = unlimited workflows.
- **Airtable → NocoDB** — Community Edition self-hostable. Side benefit: data privacy on your own servers.
- **PostHog → Postgres + Grafana** — manual event logging into Postgres, SQL queries through Grafana for visualization. ChatGPT writes the SQL. Frame: "I have never had better analytics than this."
- **DeepSeek on rented GPU** — Hetzner GPU instance at €84/mo for a fixed-cost hosted DeepSeek deployment. The fixed-cost AI premise that excited him most: "AI at a fixed cost."

## Sponsorship & Bias Notes

Promotes his own FounderStack lifetime deal throughout. The recommendations themselves are independent and the cost-savings claim is plausible for a small team.

## Connected Pages

- [[n8n]] — primary wiki-relevant tool
- [[deepseek]] — fixed-cost local-hosting use case
- [[saas-death-spiral]] — adjacent thesis (per-seat pricing → bypass)
- [[ollama]], [[vllm]] — local-AI thread
- [[simon-hoiberg|Simon Høiberg]] — author hub
