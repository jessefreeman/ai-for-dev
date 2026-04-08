---
type: source-summary
sources: ["How I Automated Faceless Shorts with AI in n8n (free template).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, n8n, automation, content-generation, faceless-shorts]
---

# How I Automated Faceless Shorts with AI in n8n

**Source**: YouTube — [[nate-herk|Nate Herk]], published 2025-03-12
**Tools covered**: [[n8n|n8n]], [[json-to-video|JSON-to-Video]], OpenAI 4o, 11Labs, Suno, Flux

## Summary

[[nate-herk|Nate Herk]] ships a free n8n template for fully automated **faceless YouTube Shorts**: a Schedule trigger fires an Ideas Agent (ChatGPT) that writes 5 video premises into a Google Sheet, then a Creator Agent decomposes each into ~10 scenes with `voice_text` + `image_prompt`, generates the assets via Flux (image), 11Labs (voiceover), and Suno (background music), assembles them through the [[json-to-video|JSON-to-Video]] API, and uploads to YouTube **as unlisted by default** so a human can review before publishing. Free-tier viable with Flux Snell + Azure TTS; ~$50/mo all-in with Flux Pro + 11Labs.

## The pipeline

```
Schedule → Ideas Agent (ChatGPT → 5 ideas in Google Sheet)
        → Creator Agent
            → Input: read sheet → generate scene table (10 scenes: voice_text + image_prompt)
            → Creation: Flux images || 11Labs voice || Suno music → JSON-to-Video assemble
            → Output: YouTube upload (unlisted) + Google Sheets log
```

## Notable choices

- **JSON-to-Video** handles the assembly — abstracts away the FFmpeg/ImageMagick mess. Free-tier models: Flux Snell, Azure TTS. Paid: Flux Pro, 11Labs.
- **Suno** for background music — free tier sufficient for short-form
- **Unlisted-by-default upload** — Nate's editorial pattern: AI generates, human reviews, human publishes. Most n8n content-pipeline templates skip this and publish directly; Nate's framing is more defensible
- **Google Sheets as the queue** — every step reads/writes a sheet, which is the n8n no-code idiom for state

## Cost

- **Free tier** (Flux Snell + Azure TTS + Suno free): ~$0/video
- **Premium** (Flux Pro + 11Labs): ~$50/month for daily output

## Why it matters

This is the canonical "n8n + generative-media pipeline" pattern, and one of the **5 highest-value automations** Nate cites in his other [[summary-nate-herk-500-ai-workflows|500 Workflows video]]. Pairs with the [[summary-jay-e-longform-youtube-videos|Jay E longform variant]] (also in this batch) to cover both ends of the YouTube content spectrum.

The "JSON-to-Video as the assembly primitive" choice is the part most worth carrying forward — it's the **video equivalent of [[remotion|Remotion]]** for the no-code stack.

## See Also

- [[n8n|n8n]]
- [[ai-automation-workflows|AI Automation Workflows]]
- [[json-to-video|JSON-to-Video]]
- [[summary-jay-e-longform-youtube-videos|Longform variant by Jay E]] — sibling pipeline for long-form videos
- [[nate-herk|Nate Herk]]
- [[remotion|Remotion]] — Claude-Code-native sibling primitive (React components → MP4)
