---
title: Karpathy's Wiki Scale and Design Choices
summary: Specifics of Andrej Karpathy's own wiki — size, retrieval approach, and design philosophy.
tags: [person_andrej_karpathy, concept_llm_wiki, topic_knowledge_management, source_karpathy_10x_claude_code]
---

# Karpathy's Wiki Scale and Design Choices

## Context

From [[summary-karpathy-10x-claude-code|Karpathy 10x'd Claude Code]] (via [[Nate Herk]]). See [[Andrej Karpathy]] and [[LLM Wiki Pattern]].

## Content

Karpathy's own personal wiki at the time of the viral gist:
- ~100 articles ingested
- ~500,000 words of source material
- Uses index files for retrieval — not embedding-based semantic search
- Intentionally left the pattern vague for others to customize
- Connects the concept to Vannevar Bush's Memex (1945) as a prior inspiration

The index-not-embeddings choice is deliberate: it keeps the system simple, transparent, and maintenance-free. The LLM navigates by reading a page catalog and following wikilinks — the same way a human would browse a wiki.
