---
title: Cole Medin's 8 Golden Rules for AI Coding
summary: Eight rules for working with AI coding assistants — high-level markdown context, file-length cap, fresh conversations, one-feature-per-prompt, tests, specificity, inline docs, never trust the LLM with secrets.
tags: [person_cole_medin, concept_ai_coding_workflow, topic_coding_workflow, source_cole_medin_100x_ai_coding]
---

# Cole Medin's 8 Golden Rules for AI Coding

## Context

From [[summary-cole-medin-100x-ai-coding|Cole Medin's "Code 100x Faster with AI" video]]. See also [[ai-coding-workflow]].

## Content

1. **Use high-level markdown docs** (`PLANNING.md`, `TASK.md`, README, install/docs) to give the LLM persistent context
2. **Keep code files under 500 lines** — long files hallucinate
3. **Start fresh conversations often** — long threads degrade
4. **One feature per prompt** — never ask for many things at once
5. **Always write tests** — ideally after every new feature
6. **Be specific in requests** — describe technologies, libraries, expected outputs
7. **Write docs and comments as you go** — both inline and in higher-level files
8. **Implement environment variables yourself** — never trust the LLM with secrets, DB security, or API keys (Cole cites a viral hacked-SaaS case where the dev vibe-coded everything and got hacked two days after launch)

These rules are best **encoded in workspace global rules** (Windsurf/Cursor system prompt) so user prompts can stay short — the discipline runs invisibly under every conversation.
