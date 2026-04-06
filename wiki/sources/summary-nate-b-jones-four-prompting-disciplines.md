---
type: source-summary
sources: ["'Prompting' Just Split Into 4 Skills. You Only Know One. Here's Why You Need the Other 3 in 2026..md"]
created: 2026-04-06
updated: 2026-04-06
tags: [source, video, prompting, agents, specification]
---

# 'Prompting' Just Split Into 4 Skills

**Source**: YouTube — [[Nate B Jones]], published 2026-02-27
**Link**: https://www.youtube.com/watch?v=BpibZSMGtdY

## Summary

Nate B Jones argues that "prompting" has silently diverged into four distinct disciplines, and most people only practice the first. The gap between someone using all four and someone using only prompt craft is already 10x and widening. Each discipline operates at a different altitude and time horizon; they form a cumulative stack where skipping a layer produces the kinds of failures seen at enterprise scale.

## The Four Disciplines

### 1. Prompt Craft (Table Stakes)
Synchronous, session-based. Writing clear instructions, including examples, setting guardrails, specifying output format. This is what every "how to prompt" course teaches. Still necessary, but no longer differentiating — it's the "knowing how to type" of 2026.

### 2. Context Engineering
Curating the entire information environment an agent operates within. Your 200-token prompt is 0.02% of the context window; the other 99.98% — system prompts, tool definitions, retrieved documents, message history, memory systems, MCP connections — is context engineering. Produces: CLAUDE.md files, agent specs, RAG pipeline design, memory architectures. Harrison Chase (LangChain): "Everything is context engineering. It describes everything we've done at LangChain without knowing the term existed."

### 3. Intent Engineering
Encoding organizational purpose — goals, values, trade-off hierarchies, decision boundaries — into infrastructure agents can act against. **The Klarna warning**: their AI agent resolved 2.3M customer conversations in month one but optimized for resolution time, not satisfaction. Perfect context, wrong intent. Intent engineering sits above context engineering the way strategy sits above tactics.

### 4. Specification Engineering
Writing documents autonomous agents can execute against over extended time horizons without human intervention. Not just agent specs — the entire organizational document corpus should be agent-readable. Every corporate strategy, product strategy, OKR is a specification the agent should be able to read and act on.

**Anthropic's own Opus 4.5 example**: "Build a clone of claude.ai" caused the agent to try too much at once. The fix was specification engineering — a laser agent sets up the environment, a progress log documents state, a coding agent makes incremental progress against a structured plan.

## Five Specification Primitives

1. **Self-contained problem statements** — state the problem with enough context that it's plausibly solvable without the agent fetching more (Toby Lutke's insight)
2. **Acceptance criteria** — describe "done" precisely enough that an independent observer can verify without asking you questions
3. **Constraint architecture** — musts, must-nots, preferences, and escalation triggers. CLAUDE.md is a practical implementation.
4. **Task decomposition** — break into subtasks each <2 hours, with clear input/output boundaries, independently verifiable. Your job: provide the break patterns a planner agent can use.
5. **Evaluation design** — build 3-5 test cases with known-good outputs; run periodically. The only thing standing between unusable and use-as-is output.

## The Toby Lutke Thread

Shopify CEO Toby Lutke uses the term "context engineering" and maintains a prompt folder he runs against every model release. His provocative claim: "A lot of what people in big companies call politics is actually bad context engineering for humans." Being forced to provide AI with complete context made him a better CEO — tighter emails, better memos, stronger decision frameworks.

## The 10x Gap Example

Same model, same Tuesday. Person A: types request, gets 80% output, spends 40 min cleaning up. Person B: writes structured spec in 11 min, hands off, goes for coffee, comes back to completed work — then does 5 more before lunch. A week's output in a morning. Same model. Different prompting discipline.

## Pages Created or Updated

- [[Four Prompting Disciplines]] — new
- [[Nate B Jones]] — updated

## See Also

- [[AutoResearch and Evals]] — overlaps with specification primitive #5
- [[Agentic Harness Primitives]] — complementary framework for agent infrastructure
- [[OpenBrain]] — a context engineering implementation
- [[/loop]] — enables specification-driven autonomous execution
