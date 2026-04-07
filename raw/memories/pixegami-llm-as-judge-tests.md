---
title: pixegami — LLM-as-Judge Unit Tests for RAG Apps
summary: Test AI app responses with pytest cases that ask a second LLM call whether the actual answer matches the expected answer; include negative cases with inverted assertions to catch over-generous judges.
tags: [person_pixegami, concept_rag, topic_llm_testing, topic_pytest, source_pixegami_python_rag_tutorial]
---

# pixegami — LLM-as-Judge Unit Tests for RAG Apps

## Context

From [[summary-pixegami-python-rag-tutorial|pixegami's Python RAG tutorial]]. See also [[pixegami]].

## Content

**The problem**: you can't strict-equality compare LLM responses. "1500" and "$1,500" and "fifteen hundred" are all the right answer.

**The solution**: in pytest, each test case is a `(question, expected_answer)` pair. The test:
1. Runs the question through your RAG app to get an actual answer
2. Sends `(question, expected_answer, actual_answer)` to a **second LLM call** with a judge prompt
3. The judge LLM returns true/false on whether the answers are equivalent
4. Assert true

**Critical discipline — negative cases**: include test cases where the expected answer is *deliberately wrong*. Assert that the test **fails** (or invert the assertion). Without negative cases, an over-generous judge LLM that passes everything will hide real regressions.

**Threshold-based suites**: for many test cases, accept 80–90% pass rate rather than 100% — acknowledges LLM nondeterminism.

**Sibling discipline**: use **deterministic chunk IDs** (`source_path:page:chunk_index`) when adding documents to the vector DB so you can incrementally add new content without rebuilding from scratch.
