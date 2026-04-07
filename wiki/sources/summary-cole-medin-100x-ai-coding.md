---
type: source-summary
sources: ["Code 100x Faster with AI, Here's How (No Hype, FULL Process).md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, ai, coding-workflow, claude-code, cursor, mcp]
---

# Code 100x Faster with AI, Here's How (No Hype, FULL Process)

**Channel:** [[cole-medin|Cole Medin]]
**Format:** YouTube video
**Published:** 2025-03-30
**Sponsor:** Global GPT (multi-LLM hub) — featured in the planning section

## Summary

Cole Medin walks through his complete process for AI coding, applying it live to one-shot a Supabase MCP server. The pattern: **golden rules + PLANNING.md/TASK.md + workspace global rules + MCP servers + a disciplined initial prompt with documentation references**. With the structure in place, Windsurf produced a ~300-line working server with full unit tests in a single prompt, then deployed it via Docker. See [[ai-coding-workflow]] for the full pattern.

## Key Points

- **8 golden rules** anchor everything: high-level markdown context, file length under 500 lines, fresh conversations often, one feature per prompt, always test, be specific, write docs/comments inline, **never trust the LLM with env vars / DB security / API keys** (cites a viral hacked-SaaS case)
- **PLANNING.md + TASK.md** — written outside the IDE (Claude Desktop or any chatbot) to save credits; LLM reads them via global rules at the start of every conversation
- **Multiple LLMs to plan** — same prompt to several models, combine results; sponsor pitch for Global GPT
- **Workspace global rules** = system prompt the IDE silently enforces. Means user prompts can stay short because all the instructions are already in scope.
- **Three core MCP servers**: filesystem (reach outside the project), Brave Search (live docs), git (commit at known-good states so you can revert when the agent breaks things 5 prompts later)
- **Initial prompt discipline**: be specific, provide documentation and examples three ways — IDE-native @docs, web MCP search, or manual GitHub links
- **One-shot demo**: with the full setup, Windsurf wrote a ~300-line Supabase MCP server end-to-end from a single prompt, including using Brave to fetch MCP and Supabase docs first
- **Tests via global rules**: Cole's rules enforce mocking DB + LLM, testing success + failure + edge case in a dedicated `tests/` dir — agent followed them automatically
- **Deploy with Docker** — LLMs are very good at Dockerfiles; use them to package and ship
- **PIV loop** is implicit throughout: Plan → Implement → Validate

## Sponsorship & Bias Notes

**Sponsor:** Global GPT — multi-LLM hub. **Not added to the wiki** per sponsorship rule. Discount Cole's claims about "the most cost-effective way to access all the best LLMs." If a multi-LLM hub deserves a wiki page, it should come from a non-sponsored source.

**Product placement / affiliations:** Cole runs the Dynamis community (mentioned with waitlist link) and built Archon (his own AI agent builder, mentioned as part of his Windsurf MCP setup). Archon is plausibly worth its own page from a non-promo source.

**Comparison bias:** Cole says "this process applies to all AI coding assistants" — fair, but he uses Windsurf for the demo. No competing IDEs are tested side-by-side.

## Notable Quotes

> "It is so frustrating when the LLM goes from a senior software engineer to what seems like a pack of primates mashing on a keyboard." — Cole Medin

## Connected Pages

- [[ai-coding-workflow]] — full concept
- [[cole-medin]] — author hub (4th source)
- [[bmad-method]] — heavier alternative
- [[claude-code]], [[cursor]] — target IDEs
- [[mcp]] — the protocol that powers step 3

## See Also

- [[summary-bmad-code-aiadd-method|BMAD Method]] — heavier parallel process
- [[summary-nate-b-jones-four-prompting-disciplines|Four Prompting Disciplines]] — the theory behind this pattern
