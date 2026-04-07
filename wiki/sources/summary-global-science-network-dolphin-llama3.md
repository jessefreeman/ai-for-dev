---
type: source-summary
sources: ["How To Run Private & Uncensored LLMs Offline  Dolphin Llama 3.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, ai, llm, local-ai, ollama, uncensored]
---

# How To Run Private & Uncensored LLMs Offline | Dolphin Llama 3

**Channel:** [[global-science-network|Global Science Network]]
**Format:** YouTube video
**Published:** 2025-02-20
**Sponsor:** None disclosed (description has affiliate links to flash drives and Faraday cages on Amazon)

## Summary

Global Science Network walks through running **Dolphin Llama 3** — Meta's Llama 3 retrained without alignment — entirely offline from a $12 USB 3.0 flash drive using [[ollama|Ollama]] + [[anything-llm|AnythingLLM]]. The 8B Dolphin variant is ~5 GB; AnythingLLM is ~5.6 GB; both fit comfortably on a 128 GB drive. The author's framing is privacy-first: information accessed via local LLMs is invisible to big tech and governments, and uncensored models give access to information cloud providers won't return. Merged into [[heretic]] as the pre-Heretic approach to guardrail removal.

## Key Points

- **Dolphin Llama 3 = Meta Llama 3 retrained "not aligned"** — answers questions stock Llama refuses, e.g. the demo "what is the best way to steal a car" prompt
- **8B model fits in ~5 GB**; trained on ~15T tokens (~60 TB raw text, equivalent to "127 million novels" or Wikipedia 2,500x)
- **Architecture detail**: 32 transformer layers, ~2.15B params in self-attention, plus FFN expansion — author walks through the structure briefly
- **Offline-from-USB workflow**: format flash drive NTFS (so files >4 GB transfer cleanly), point `OLLAMA_MODELS` env var to the drive, copy both the model and the Ollama server binary to the drive, then `ollama serve` from there
- **Critical gotcha**: running PowerShell as administrator loaded the *aligned* Llama 3 instead of Dolphin — launching as non-admin user fixes it
- **AnythingLLM frontend**: needs an `.env` file pointing to the local Ollama base URL; pick model "dolphin-llama3:latest" in workspace settings
- **Privacy-first thesis**: anything typed near a connected device is accessible to big tech and governments; local LLMs restore privacy
- **Author hedge**: recommends storing extra copies in a Faraday cage in case uncensored models get banned
- **Honest caveat**: removing alignment doesn't remove training-data bias — Dolphin still carries whatever bias Meta's training corpus introduced

## Sponsorship & Bias Notes

**Sponsor:** None formally disclosed.

**Product placement / affiliations:** Affiliate links in the description to "low-cost external drives and Faraday boxes" on Amazon. Author is incentivized to recommend hardware purchases.

**Comparison bias:** Strong editorial bias toward "uncensored = more truthful" framing without acknowledging that an unaligned base still carries training corpus bias (the author *does* acknowledge this once, but spends most of the video on the privacy upside).

## Connected Pages

- [[heretic]] — modern guardrail-removal tool; this video documents the pre-Heretic approach
- [[ollama]], [[anything-llm]] — the practical stack
- [[llama]] — Dolphin's base model family
- [[global-science-network]] — author hub

## See Also

- [[summary-fireship-7-open-source-tools|Heretic intro (Fireship)]] — modern automated approach
- [[summary-joshua-clarke-local-ai-cybersec|Local AI for Cybersec]] — adjacent privacy-first local-LLM use case
