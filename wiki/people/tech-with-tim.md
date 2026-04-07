---
type: entity
sources: ["EASIEST Way to Fine-Tune a LLM and Use It With Ollama.md", "The Easiest Ways to Run LLMs Locally - Docker Model Runner Tutorial.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [person, ai, python, local-ai, youtube]
---

# Tech With Tim

Python and AI tutorials YouTube channel by Tim Ruscica. Strong implementation focus — every video walks through working code, from notebook to deployment, with the assumption the viewer will run it themselves. Style is calm, concrete, no hype. Coverage in this wiki is concentrated on **local AI infrastructure** — fine-tuning small open-source models, getting them into Ollama via Modelfiles, and the practical Python recipes for using them.

## Channels

- **YouTube**: [Tech With Tim](https://www.youtube.com/@TechWithTim) — Python tutorials, AI, Ollama, fine-tuning, local LLM workflows
- **Site**: techwithtim.net

## Content in This Wiki

- [[summary-tech-with-tim-fine-tune-ollama|EASIEST Way to Fine-Tune a LLM and Use It With Ollama]] — Step-by-step fine-tuning of [[fine-tuning|Phi3 mini via Unsloth + LoRA]] in Google Colab, GGUF export, then loading the result into [[ollama|Ollama]] via a custom Modelfile. Concrete demo: 500-example HTML extraction dataset → working local model in ~25 minutes (10 min train + 15 min export/download).
- [[summary-tech-with-tim-docker-model-runner|The Easiest Ways to Run LLMs Locally - Docker Model Runner Tutorial]] — Walkthrough of [[docker-model-runner|Docker Model Runner]] including Python integration via the OpenAI-compliant API, the port distinction (Docker Model Runner = 12434, Ollama = 11434), the `host.docker.internal` pattern for container-to-host LLM access, and a Streamlit + Compose `provider: type: model` example. Sponsored by Docker (disclosed); the technical content is reproducible.

## Key Ideas

- **"If you have bad data, you're going to have a poorly fine-tuned model"** — the most-important step in fine-tuning is the dataset, not the training loop. Tim spends as much video time on the JSON example format as on the trainer config.
- **Fine-tune to gain a specific capability, accept the loss of general capability** — explicit acknowledgement that fine-tuned models get *worse* at general tasks while getting better at the specific one. Pick the trade-off deliberately.
- **Google Colab is the no-GPU path** — Tim's recommendation for users without an RTX 4080+: don't try to fine-tune locally, use Colab's free T4 GPU runtime. The whole pipeline runs in a notebook; the only local step is downloading the GGUF and loading it into Ollama.
- **OpenAI-compliant APIs are the unifier** — across both videos in the wiki, Tim returns to the point that local model runners (Ollama, Docker Model Runner) all expose the same API shape, so the same Python client works against any of them by swapping the base URL.

## See Also

- [[fine-tuning]] — concept page anchored on Tim's walkthrough
- [[unsloth]] — the fine-tuning library Tim uses
- [[ollama]], [[docker-model-runner]] — the two local runners covered in his videos
- [[summary-tech-with-tim-fine-tune-ollama]]
- [[summary-tech-with-tim-docker-model-runner]]
