---
type: entity
sources: ["NotebookLM UPDATE FULLY FREE AI Research Assistant! + Gemini 2.5!.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [tool, google, gemini, research-assistant, free, multimodal]
---

# NotebookLM

Google's free AI research assistant. Ingest **PDFs, YouTube videos, Google Docs / Slides, audio files, and pasted text** as sources for a notebook → ask grounded questions, generate podcast-style audio overviews, build mind maps, timelines, and FAQ syntheses. Powered by **Gemini 2.5 Flash** (the thinking variant) since the May 2025 update.

- **Vendor**: Google
- **Site**: notebooklm.google.com
- **Model**: Gemini 2.5 Flash
- **Pricing**: free; **100 notebooks, 50 sources/notebook, 50 chat queries/day**, no credit card
- **Mobile**: iOS + Android (launch 2026-05-20 per [[summary-worldofai-notebooklm-gemini25|source]])

## What it does

| Capability | Notes |
|---|---|
| **Multimodal source ingest** | PDFs, YouTube, Google Docs/Slides, audio files, pasted text |
| **Grounded chat** | Answers cite specific source passages |
| **Audio overviews** | Podcast-style summaries in **50+ languages / 180+ regions** |
| **Mind maps** | Visual structure of source content |
| **Timelines** | Chronological view of source events |
| **FAQ synthesis** | Auto-generated Q&A from source corpus |

## Why it matters

NotebookLM is the wiki's **canonical "consumer CAG" product**: you upload a bounded corpus, Gemini reads the whole thing per query (no chunking, no vector retrieval). It's [[context-augmented-generation|CAG]] packaged for non-developers. The **audio overview** feature is also the first wiki entry where podcast is the output format — connects loosely to [[deerflow|DeerFlow]]'s research-output thread.

Sibling product to [[jules|Google Jules]] and [[google-stitch|Google Stitch]] in **Google's coordinated free-Gemini push**. The three together span code, design, and research — Google's full-stack play against entrenched paid tools (Codex/Copilot, v0/Figma, ChatPDF/Mendeley).

## Caveats

- **Free tier limits are real**: 50 chat queries/day will hit fast for serious research. Worth tracking whether the NotebookLM Plus tier ships at a sensible price.
- **Gemini 2.5 Flash, not Pro**: the thinking variant is fast but not the strongest Gemini model. For very complex synthesis, dump the same corpus into a Gemini 2.5 Pro session via AI Studio instead.
- **Bounded corpus only**: not a general web research tool. Bring your own sources.

## Sources

- [[summary-worldofai-notebooklm-gemini25|NotebookLM UPDATE: Fully Free + Gemini 2.5]] ([[worldofai|WorldofAI]], 2025-05-03)

## See Also

- [[google|Google]]
- [[gemini|Gemini]]
- [[context-augmented-generation|CAG]]
- [[deerflow|DeerFlow]] — research-output formats sibling
- [[jules]], [[google-stitch]] — sibling Google free-tools push
