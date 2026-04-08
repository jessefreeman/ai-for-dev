---
type: entity
sources: ["Replace Your Expensive Cloud Tools With These (Self-Hostable) Alternatives.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [open-source, observability, analytics, self-hostable]
---

# Grafana

Open-source observability and analytics dashboard platform. Reads from many data sources (Postgres, Prometheus, Loki, etc.) and renders charts and alerts. Free self-hostable; cloud SaaS tier exists.

## Position

[[self-hostable-alternatives|Self-hostable alternative]] to **PostHog / Amplitude / Mixpanel** when paired with manual event logging into a Postgres table. Simon Høiberg's pattern: log events to Postgres, write SQL queries by hand (with ChatGPT writing the SQL), visualize with Grafana. *"I have never had better analytics than this."*

## Sources

- [[summary-simon-hoiberg-self-hostable-alternatives|Simon Høiberg: Self-hostable alternatives]] — Postgres + Grafana as the bespoke analytics replacement

## See Also

- [[self-hostable-alternatives]]
