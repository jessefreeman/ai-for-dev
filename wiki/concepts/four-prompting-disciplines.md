---
type: concept
sources: ["'Prompting' Just Split Into 4 Skills. You Only Know One. Here's Why You Need the Other 3 in 2026..md"]
created: 2026-04-06
updated: 2026-04-06
tags: [concept, prompting, specification, context-engineering, intent]
---

# Four Prompting Disciplines

A framework by [[Nate B Jones]] for the post-chatbot era. "Prompting" has silently diverged into four distinct disciplines, each operating at a different altitude and time horizon. They form a cumulative stack — skipping a layer produces the kinds of failures seen at enterprise scale. The gap between someone using all four and someone using only the first is already 10x and widening.

## The Stack

### 1. Prompt Craft (Table Stakes)

Synchronous, session-based. You sit in a chat window, write an instruction, evaluate output, iterate. Skills: clear instructions, relevant examples, guardrails, explicit output format, ambiguity resolution.

**Status in 2026**: Necessary but not differentiating. Like knowing how to type was once a professional differentiator and is now assumed. If you can't write a clear prompt, you're the person in 1998 who couldn't send an email.

### 2. Context Engineering

Curating the entire information environment an agent operates within — not just your prompt, but the 99.98% of the context window you didn't type: system prompts, tool definitions, retrieved documents, message history, memory systems, MCP connections.

**Produces**: CLAUDE.md files, agent specifications, RAG pipeline design, memory architectures ([[OpenBrain]]).

Harrison Chase (LangChain): "Everything is context engineering. It actually describes everything we've done at LangChain without knowing the term existed."

Toby Lutke (Shopify CEO): Being forced to provide AI with complete context made him a better communicator. "A lot of what people in big companies call politics is actually bad context engineering for humans."

### 3. Intent Engineering

Encoding organizational purpose — goals, values, trade-off hierarchies, decision boundaries — into infrastructure agents can act against.

**The Klarna warning**: AI agent resolved 2.3M customer conversations in month one but optimized for resolution time, not satisfaction. Had to rehire human agents. Perfect context, wrong intent.

Intent engineering sits above context engineering the way strategy sits above tactics. You can have perfect context and terrible intent alignment.

### 4. Specification Engineering

Writing documents autonomous agents can execute against over extended time horizons (days, weeks) without human intervention. Not just agent specs — the entire organizational document corpus should be agent-readable.

**Anthropic's own lesson**: "Build a clone of claude.ai" caused Opus 4.5 to try too much at once. Fix: specification engineering — laser agent sets up environment, progress log documents state, coding agent makes incremental progress against a structured plan.

> "The smarter models get, the better you need to get at specification engineering."

## Five Specification Primitives

1. **Self-contained problem statements** — state the problem with enough context that it's plausibly solvable without fetching more info
2. **Acceptance criteria** — describe "done" so an independent observer can verify without asking questions
3. **Constraint architecture** — musts, must-nots, preferences, escalation triggers. CLAUDE.md is a practical implementation.
4. **Task decomposition** — subtasks each <2 hours, clear I/O boundaries, independently verifiable. Your job: provide break patterns a planner can use.
5. **Evaluation design** — 3-5 test cases with known-good outputs; run periodically. See [[AutoResearch and Evals]].

## The 10x Gap

Same model, same Tuesday:
- **Person A** (prompt craft only): Types request → 80% output → 40 min cleanup → 1 deck
- **Person B** (full stack): 11 min structured spec → hands off → complete deck → 5 more before lunch

A week's work in a morning. Same model. Different discipline.

## Why This Matters Beyond AI

The skill of providing high-quality input to intelligent systems turns out to be translatable to humans too. The best managers already operate this way: complete context when delegating, clear acceptance criteria, articulated constraints. AI is enforcing a communication discipline the best leaders practiced intuitively.

## See Also

- [[AutoResearch and Evals]] — overlaps with specification primitive #5
- [[OpenBrain]] — a context engineering implementation
- [[Agentic Harness Primitives]] — complementary infrastructure framework
- [[/loop]] — enables specification-driven autonomous execution
- [[Nate B Jones]] — source
- [[summary-nate-b-jones-four-prompting-disciplines|Source: Prompting Split Into 4 Skills]]
