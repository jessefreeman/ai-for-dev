---
type: source-summary
sources: ["Turn ANY YouTube Video Into SEO Blog Post With N8N (No Code).md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, n8n, seo, content-repurposing]
---

# Turn ANY YouTube Video Into SEO Blog Post (n8n)

**Author / channel:** [[tin-rovic|Tin Rovic]]
**Format:** video
**Source:** [Original](../../raw/archive/Turn%20ANY%20YouTube%20Video%20Into%20SEO%20Blog%20Post%20With%20N8N%20%28No%20Code%29.md)
**Published:** 2025-04-11

## Summary

A simple [[n8n]] workflow that takes a YouTube URL from a Google Sheet, extracts the video ID, calls the youtube-transcript.io API, runs the transcript through an [[openrouter|OpenRouter]] free model (Hugging Face Zephyr 7B in the demo; recommends Claude 3.7 Sonnet for quality), and posts the resulting blog to WordPress with title, slug, and content. Demonstrates the canonical n8n shape: trigger → transform code node → HTTP request → AI agent → format code node → output integration.

## Key Points

- **Pipeline shape** — Google Sheets row trigger → JS code node (extract video ID from URL) → HTTP POST to youtube-transcript.io → AI agent with prompt template → JS code node (parse JSON for title/slug/content, dedupe dashes) → WordPress post creation.
- **Transcription API** — youtube-transcript.io: 50 free transcriptions/month, basic-auth API key. Authorization: `Basic <token>`, content-type `application/json`, body `{"video_id": "<id>"}`.
- **Free LLM via OpenRouter** — Hugging Face Zephyr 7B Beta in the demo (free tier). Recommends Claude 3.7 Sonnet for higher-quality long-form blog output.
- **Slug hygiene** — JS code node strips double-dashes from slugs (Google penalizes them) and extracts title/slug/content from the AI output.
- **WordPress auth** — uses an *application password* (Edit Profile → Application Passwords → name "n8n" → add), not the account login. n8n's WordPress node validates connection automatically.
- **Prompt design** — "Write a blog post in first person from personal experience sharing insights as someone with experience in a given topic. Tone should be engaging, easy to understand, eighth-grade level, and free from unnecessary jargon."

## Connected Pages

- [[n8n]] — backbone
- [[openrouter]] — LLM gateway with free tiers
- [[ai-automation-workflows]] — adjacent automation playbook
- [[tin-rovic|Tin Rovic]] — channel hub
