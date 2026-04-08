---
type: entity
sources: ["OpenManus FULLY FREE Manus Alternative! First-Ever General AI Agent - Automate Your Life!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [open-source, ai-agent, general-agent]
---

# OpenManus

Open-source clone of [[manus|Manus AI]]'s general-agent loop. Built by the **MetaGPT** team within days of Manus going viral on X. Python, no UI — just the agent loop. Repository: [github.com/mannaandpoem/OpenManus](https://github.com/mannaandpoem/OpenManus).

## What it does

Multi-step autonomous task execution. Files, terminal, web research, CSV processing. ~30 steps per task in WorldofAI's demos.

## Install

```
conda create -n openmanus python=3.12
conda activate openmanus
git clone https://github.com/mannaandpoem/OpenManus
cd OpenManus
pip install -r requirements.txt
# rename config/config.example.toml → config/config.toml
# add LLM keys (Groq / Hyperbolic free tiers work)
python main.py
```

## OpenManus-RL

Sibling project from the same team — RL-based reasoning improvement for the agent loop. Same repo organization.

## Honest assessment

Slower and rougher than hosted Manus. Useful as a hackable starting point or for offline general-agent work, not a parity replacement.

## Sources

- [[summary-worldofai-openmanus|WorldofAI OpenManus walkthrough]]

## See Also

- [[manus]] — closed-source original
- [[flowith]] — newer infinite-canvas competitor
- [[multi-agent-orchestration]]
