---
type: source-summary
sources: ["Build Your Own Secure Local AI Assistant for Cyber Security (Ollama + Open WebUI).md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, cybersecurity, local-ai, ollama, open-webui]
---

# Build Your Own Secure Local AI Assistant for Cyber Security (Ollama + Open WebUI)

**Channel:** [[joshua-clarke|Joshua Clarke]]
**Format:** YouTube video
**Published:** 2025-04-03
**Sponsor:** None disclosed (Proton VPN/Pass affiliate links in description)

## Summary

Joshua Clarke walks through installing [[ollama|Ollama]] and [[open-webui|Open WebUI]] on Windows to build a private LLM assistant for cybersecurity communication tasks — drafting incident reports, explaining technical findings to non-technical stakeholders, softening tone in emails. The motivating constraint: cybersec data is sensitive and can't go to cloud LLMs without explicit org whitelisting.

## Key Points

- **Privacy first** — for cybersec workflows, never send sensitive data to a cloud LLM unless your org has specifically whitelisted that service
- **Local stack**: Ollama for model serving, Open WebUI for chat interface, Docker to run Open WebUI
- **Bonus install tip**: change Ollama's default model storage path via Windows environment variables — the default lives in AppData and can fill the C: drive fast
- **Model choice**: pick from ollama.com/models; capability tags (`tools`, `embedding`, `vision`) signal which features the model supports
- **Use case demo**: rewriting a curt "you have TeamViewer, get rid of it" email into a structured, professional message via natural-language prompting
- **Validation discipline** — always review LLM output for accuracy and org-policy alignment; local models still hallucinate

## Sponsorship & Bias Notes

**Sponsor:** None disclosed. Proton VPN and Proton Pass affiliate links appear in description, unrelated to the video content.

**Product placement / affiliations:** None observed in the video itself. Ollama and Open WebUI are open-source and presented evenhandedly.

**Comparison bias:** None observed.

## Connected Pages

- [[ollama]] — model runner
- [[open-webui]] — UI layer
- [[open-source-model-integration]] — broader cost-and-privacy thesis
- [[joshua-clarke]] — author hub

## See Also

- [[summary-nate-herk-ollama-claude-code]] — different angle: using Ollama as a Claude Code substitute for cost
