---
type: entity
sources: ["How I Automated Faceless Shorts with AI in n8n (free template).md", "This AI System Creates Longform YouTube Videos Hourly (n8n NO CODE automation tutorial 🥚).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [tool, video-generation, api, no-code, n8n]
---

# JSON-to-Video

API service that assembles videos from a JSON spec — image clips, audio tracks, captions, transitions, fonts, all declared as data and rendered server-side. The wiki's canonical **video assembly primitive** for the no-code stack: where [[remotion|Remotion]] is React-components → MP4 for the developer stack, JSON-to-Video is HTTP-POST → MP4 for the [[n8n|n8n]] stack.

## Why it shows up here

JSON-to-Video is the load-bearing API in **two of the four n8n-content-pipeline sources** in this batch:

- [[summary-nate-herk-faceless-shorts-n8n|Nate Herk's faceless shorts pipeline]]
- [[summary-jay-e-longform-youtube-videos|Jay E's longform YouTube videos pipeline]]

In both cases the n8n workflow generates a JSON template (scenes array, with `voice_text`, `image_prompt`, `duration` etc), POSTs it to JSON-to-Video, waits for the render, and pulls down the finished MP4.

## Pricing model

Subscription with credits / per-video. Free tier exists for testing; cost scales with rendering minutes and model choice (Flux Pro and 11Labs are the expensive line items inside the JSON template, not the assembly itself).

## Customization surface

The JSON template controls:
- Scene composition (image + voice + duration)
- Fonts, colors, desaturation, subtitle styling
- Transitions and intro clips
- Background music tracks

## Why it matters

JSON-to-Video closes the loop on no-code AI video generation. Without it, n8n builders would have to wire FFmpeg or similar — a non-starter for the no-code audience. With it, the entire faceless-content pipeline becomes a single n8n flow.

## Sources

- [[summary-nate-herk-faceless-shorts-n8n|Nate Herk: Faceless Shorts]] — short-form pipeline
- [[summary-jay-e-longform-youtube-videos|Jay E: Longform YouTube]] — long-form pipeline

## See Also

- [[n8n|n8n]] — the no-code host
- [[remotion|Remotion]] — sibling video primitive for the developer stack
- [[ai-automation-workflows|AI Automation Workflows]]
