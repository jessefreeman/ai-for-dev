---
title: JSON-to-Video is the no-code video assembly primitive for n8n content pipelines
summary: JSON-to-Video assembles MP4 videos from a JSON spec — it's to n8n what Remotion is to Claude Code, and load-bearing for the wiki's two new n8n video pipelines.
tags: [tool_jsontovideo, tool_n8n, concept_no_code, source_nate_herk_faceless_shorts_n8n, source_jay_e_longform_youtube_videos]
---

# JSON-to-Video is the no-code video assembly primitive

## Context

From [[summary-nate-herk-faceless-shorts-n8n|Nate Herk's faceless shorts pipeline]] and [[summary-jay-e-longform-youtube-videos|Jay E's longform pipeline]]. See also [[json-to-video]], [[n8n]], [[remotion]].

## Content

**JSON-to-Video** is an API service that assembles videos from a JSON spec — image clips, audio tracks, captions, transitions, fonts, all declared as data and rendered server-side. It is the **load-bearing assembly primitive** in two of the four n8n content-pipeline sources from the 2026-04-08 batch:

| Pipeline | Author | Length target |
|---|---|---|
| Faceless YouTube Shorts | [[nate-herk\|Nate Herk]] | 30–60s |
| Longform YouTube Videos | [[jay-e-robonuggets\|Jay E (RoboNuggets)]] | several minutes |

In both cases the n8n workflow:

1. Generates a JSON template (scenes array with `voice_text`, `image_prompt`, `duration` per scene)
2. POSTs it to the JSON-to-Video API
3. Waits ~150 seconds for the render
4. GETs the finished MP4
5. Uploads to YouTube (Nate Herk's pattern: **unlisted by default**, human reviews before publish)

**Where JSON-to-Video sits in the wiki's video-tool typology:**

- [[remotion|Remotion]] — React components → MP4. The **developer-stack** primitive (Claude Code skill).
- **JSON-to-Video** — JSON spec + HTTP POST → MP4. The **no-code-stack** primitive (n8n).

Without JSON-to-Video, n8n builders would have to wire FFmpeg or similar — a non-starter for the no-code audience. With it, the entire faceless-content pipeline becomes a single n8n flow.

Cost: ~$50/mo all-in for daily output with premium models (Flux Pro images, 11Labs voices). Free tier viable with Flux Snell + Azure TTS + Suno music. The exact JSON-to-Video credit model is flagged as a tasks.md follow-up item.
