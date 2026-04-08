---
type: entity
sources: ["Build Your Own Secure Local AI Assistant for Cyber Security (Ollama + Open WebUI).md", "Turn Open WebUI into a real website (Domain + SSL).md"]
created: 2026-04-07
updated: 2026-04-08
tags: [tool, ai, open-source, local, ui, web]
---

# Open WebUI

A self-hosted, ChatGPT-like web interface for local LLMs. Connects to [[ollama|Ollama]]'s local API and renders streaming chat with a polished UI — file uploads, markdown rendering, edit/copy actions, multi-user accounts, image-gen integration via Automatic1111.

- **GitHub**: [open-webui/open-webui](https://github.com/open-webui/open-webui)
- **Install**: Docker container; one command from the project README
- **License**: Open source

## Why It's Used

Ollama exposes local models as a REST API, but the bare CLI is awkward for sustained work. Open WebUI sits on top and makes local LLMs feel like commercial chat — without sending anything off the machine. Common stack: **Ollama + Docker + Open WebUI** for fully-offline ChatGPT.

## Backend Options

Open WebUI sits on top of an OpenAI-API-compatible local model runtime. Two practical choices:

- **[[ollama|Ollama]]** — the canonical pairing; standalone install, simplest setup
- **[[docker-model-runner|Docker Model Runner]]** — newer alternative built into Docker Desktop; community compose file by Bret Fisher wires the two together via `OPENAI_API_BASE_URL`

## Use Cases Covered in Wiki Sources

- **Cybersecurity communication** — translating technical findings into plain English without leaking data to cloud LLMs ([[summary-joshua-clarke-local-ai-cybersec|Joshua Clarke video]])
- **Private chat over local models** — the canonical use case
- **Internet-accessible household AI dashboard** — [[summary-networkchuck-open-webui-domain-ssl|NetworkChuck's Cloudflare + Nginx Proxy Manager + Let's Encrypt recipe]] turns a localhost Open WebUI install into a real-domain HTTPS service that family/team can use from any device. Pairs with [[summary-wolfgangs-channel-local-ssl-homelab|Wolfgang's general homelab SSL guide]] for the same pattern across non-AI services.

## See Also

- [[ollama]] — the model runner Open WebUI sits on top of
- [[anything-llm]] — alternative local-AI all-in-one with built-in RAG/agents
- [[project-nomad]] — Open WebUI is a component in offline knowledge servers
- [[summary-joshua-clarke-local-ai-cybersec|Source: Local AI for cybersec]]
