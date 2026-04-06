---
title: Project Nomad — Offline Knowledge Server with Local AI
summary: Free open-source offline knowledge server with Wikipedia, AI chat, RAG, maps, and education — runs on any Linux machine with Docker.
tags: [tool_project_nomad, topic_local_ai, topic_offline, source_crosstalk_project_nomad]
---

# Project Nomad — Offline Knowledge Server with Local AI

## Context

From [[summary-crosstalk-project-nomad|Crosstalk Solutions' Project Nomad video]]. See also [[Project Nomad]].

## Content

Project Nomad is a free, open-source offline knowledge server. Apache 2.0 license.

**What it includes:**
- Full Wikipedia with images (~100GB)
- Project Gutenberg (thousands of books)
- Medical references, developer docs, survival guides
- Local LLM chat with GPU acceleration (7B–70B parameter models)
- RAG for custom document uploads (PDFs, text files) with source citations
- Offline OpenStreetMap data by region
- Khan Academy courses, K-12 curriculum (Calibri)

**Technical**: Docker-containerized, single install command on Ubuntu/Debian, web UI on port 8080.

**Hardware**: Any Linux PC. RTX 3060+ recommended for decent AI speed. Works without GPU but AI is slower.

**Links**: GitHub at github.com/crosstalk-solutions/project-nomad, website at projectnomad.us

**Competes with**: Prepper Disk, Doombox, Ready ($150–700) — but Project Nomad is free and runs on hardware you already own.
