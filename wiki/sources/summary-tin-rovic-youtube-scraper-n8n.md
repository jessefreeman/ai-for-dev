---
type: source-summary
sources: ["How To Scrape YouTube For FREE with N8N (YouTube Scraper).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, n8n, youtube, scraper, api, tutorial]
---

# How To Scrape YouTube For FREE with N8N

**Source**: YouTube — [[tin-rovic|Tin Rovic]], published 2025-04-16
**Tools covered**: [[n8n|n8n]], YouTube Data API v3

## Summary

Tin Rovic walks through a free n8n workflow that uses **YouTube Data API v3** (10K-units/day free quota) to scrape channel data — title, channel ID, description, publish date — for any search query, then writes the structured rows to Google Sheets. Pure HTTP-Request + Code node + Sheets-append pattern; no scraping of HTML, no rate-limit gymnastics, no paid API. Useful starter pattern for anyone building a creator-research or competitive-intelligence n8n flow.

## The pipeline

1. **HTTP Request** node → `youtube/v3/search` with `part=snippet&type=channel&q=<term>&maxResults=50&key=<API_KEY>`
2. **Code** node → extract `channel_name`, `channel_id`, `description`, `published_at` from each item
3. **Google Sheets** node → append rows

## Quota math

- Free quota: **10,000 units/day**
- Each `search` call costs ~100 units
- Practical ceiling: ~100 searches/day per API key, returning up to 50 channels each = ~5,000 channels/day for free

## Why it matters

This is the **cheapest possible "scrape YouTube" recipe** in the wiki, and it's a foundational pattern for several downstream automations:

- Creator-research for [[ai-automation-workflows|AI automation agency]] outreach
- Building target lists for content-repurposing pipelines (cf. [[summary-tin-rovic-youtube-seo-blog]])
- Feeding the longform-video-generation pipelines from this batch with reference channels

## See Also

- [[n8n|n8n]]
- [[ai-automation-workflows|AI Automation Workflows]]
- [[tin-rovic|Tin Rovic]]
- [[summary-tin-rovic-youtube-seo-blog|Tin Rovic's YouTube → SEO blog pipeline]] — natural downstream use
