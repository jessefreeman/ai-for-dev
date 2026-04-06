---
title: LLM Wiki Pattern Overview
summary: The core idea of using an LLM to maintain a structured markdown wiki instead of relying on chat history or RAG.
tags: [person_andrej_karpathy, person_nate_herk, concept_llm_wiki, topic_knowledge_management, source_karpathy_10x_claude_code]
---

# LLM Wiki Pattern Overview

## Context

Originated from [[Andrej Karpathy]]'s viral gist (April 2026), demonstrated in practice by [[Nate Herk]]. Full details in [[summary-karpathy-10x-claude-code|Karpathy 10x'd Claude Code]] and the [[LLM Wiki Pattern]] wiki page.

## Content

The LLM Wiki Pattern replaces chat history and RAG with a structured, LLM-maintained set of markdown files. Instead of re-summarizing sources every session, an LLM ingests documents once and files them into interlinked wiki pages — people, tools, concepts, analyses. Each session, the LLM reads an index and a hot cache to orient itself, then answers or extends the wiki without re-reading everything.

Key properties:
- Human adds raw sources; LLM does all summarizing, filing, and cross-referencing
- Wiki compounds over time — each new source adds to and cross-links existing pages
- No embedding model, no vector database — just markdown files and an LLM
- Works with any markdown app (Obsidian, Quartz, etc.) with no special infrastructure
