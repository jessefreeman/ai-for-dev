---
type: source-summary
sources: ["This AI System Creates Longform YouTube Videos Hourly (n8n NO CODE automation tutorial 🥚).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, n8n, automation, content-generation, longform-youtube]
---

# This AI System Creates Longform YouTube Videos Hourly (n8n)

**Source**: YouTube — [[jay-e-robonuggets|Jay E (RoboNuggets)]], published 2025-04-21
**Tools covered**: [[n8n|n8n]], [[json-to-video|JSON-to-Video]], OpenAI 4o, 11Labs, Suno, Flux

## Summary

[[jay-e-robonuggets|Jay E]]'s flagship n8n tutorial: a fully no-code system that generates **long-form YouTube videos** on an hourly schedule across niches like stoicism, sleep stories, horror, meditation, trivia, and children's stories. Same two-agent skeleton as [[summary-nate-herk-faceless-shorts-n8n|Nate Herk's shorts pipeline]] (Ideas Agent + Creator Agent) but with three substantive enhancements: a 3-section Creator Agent with explicit error-routing, JSON-template-driven visual customization, and niche-tied monetization framing.

## The pipeline

```
Ideas Agent (ChatGPT → 5 ideas in Google Sheet w/ title, desc, character style, keywords)
    ↓
Creator Agent (n8n, 3 sections)
    ┌── Input
    │     Sheets trigger → OpenAI 4o prompt → 10-scene table (voice_text + image_prompt)
    ├── Creation
    │     Suno music || intro video || HTTP POST JSON-to-Video → 150s wait → GET MP4
    └── Output
          Switch (error routing) → Google Sheets update → YouTube upload (unlisted)
```

## Notable choices vs Nate Herk's shorts variant

| | Nate Herk shorts | Jay E longform |
|---|---|---|
| Length target | 30-60s | several minutes |
| Sections in Creator Agent | 3 (similar) | **3 with explicit error switch routing** |
| Customization surface | API parameters | **JSON template (fonts, colors, desat, subtitles)** |
| Niche framing | Generic | **Tied to specific niches (stoicism, sleep, horror)** |
| Length of source | ~2,800 words | ~8,500 words |

The error-switch routing in the Output section is the part most other tutorials skip and is the difference between "demo workflow" and "production workflow."

## Models

- **Free tier**: Flux Snell (image), Azure TTS (voice), Suno (music)
- **Premium**: Flux Pro (1.3× cost), 11Labs (voice quality)
- **All-in cost**: ~$50/month with premium models

## Why it matters

Jay E's pipeline is the wiki's **most-detailed n8n + generative-media reference**. Pairs with Nate Herk's shorts variant to cover both ends of the YouTube content spectrum from a single architectural template. The JSON-template-customization pattern is reusable across any video niche.

The niche-tied monetization framing is also worth carrying forward — it's the part that turns "look I built a thing" into "here's a defensible business unit," which is the same thread as [[summary-simon-hoiberg-5-ai-agent-business-ideas|Simon Høiberg's AI agent business ideas]].

## See Also

- [[jay-e-robonuggets|Jay E]]
- [[n8n|n8n]]
- [[json-to-video|JSON-to-Video]]
- [[summary-nate-herk-faceless-shorts-n8n|Nate Herk's shorts variant]]
- [[ai-automation-workflows|AI Automation Workflows]]
- [[summary-simon-hoiberg-5-ai-agent-business-ideas|Simon Høiberg: AI Agent Business Ideas]]
