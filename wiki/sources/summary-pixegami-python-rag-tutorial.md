---
type: source-summary
sources: ["Python RAG Tutorial (with Local LLMs) AI For Your PDFs.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, ai, python, rag, langchain, chromadb, ollama, testing]
---

# Python RAG Tutorial (with Local LLMs): AI For Your PDFs

**Channel:** [[pixegami|pixegami]]
**Format:** YouTube video (sequel to a previous RAG basics video)
**Published:** 2024-04-17
**Sponsor:** None disclosed

## Summary

pixegami builds a working RAG application over PDFs (board game instruction manuals) using **LangChain + ChromaDB + AWS Bedrock embeddings + Ollama-served Mistral** for the chat LLM. The video focuses on three things people asked about after the basics tutorial: running locally, **incremental updates to the vector DB**, and **unit-testing AI-generated responses**. The deterministic chunk-ID and LLM-as-judge testing patterns are the most reusable parts.

## Key Points

- **Stack**: LangChain document loaders for PDFs → recursive text splitter → embedding function → ChromaDB vector store → top-K retrieval → prompt template → Ollama (Mistral, ~4 GB)
- **Hybrid embedding strategy**: cloud embeddings (AWS Bedrock or OpenAI) for quality, local LLM via [[ollama|Ollama]] for cheap inference. pixegami tested local 4 GB embedding models and found them inadequate — embedding quality is the dominant factor in RAG quality
- **Deterministic chunk IDs**: format `source_path:page_number:chunk_index` — every chunk gets a unique, stable ID. Lets you incrementally add new PDFs/pages to the vector DB without rebuilding, by checking which IDs already exist
- **Open problem**: edited content on an existing page produces the same chunk ID, so the system can't tell when a chunk needs to be updated. pixegami leaves this as an exercise
- **Unit testing AI output**: pytest cases with `(question, expected_answer)` pairs. Since strict equality fails (many ways to phrase the right answer), use **a second LLM call as a judge** that returns true/false on equivalence
- **Negative test case discipline**: include cases where the expected answer is *wrong* and assert the test fails — protects against over-generous LLM judges that pass everything
- **Threshold-based suites**: for many test cases, accept an 80–90% pass rate rather than 100% — acknowledges LLM nondeterminism
- **Prompt template** explicitly mixes context (top-K chunks) + question; pixegami prints the full assembled prompt for debugging

## Sponsorship & Bias Notes

**Sponsor:** None disclosed. Description has the GitHub repo link only.

**Product placement / affiliations:** AWS Bedrock and OpenAI are mentioned as preferred embedding options because pixegami already builds on AWS — disclosed openly. Not a sponsorship.

**Comparison bias:** The "local embeddings aren't good enough" claim is from one round of testing with one specific 4 GB model — not a benchmark. Local embedding quality has likely changed since publish date (2024-04). Re-test before relying on the conclusion.

## Notable Quotes

> "Having good embeddings is essential, otherwise your queries won't match up with the chunks of information that are actually relevant." — pixegami

## Connected Pages

- [[pixegami]] — author hub
- [[ollama]] — local model runner used in the demo
- [[rag-vs-wiki]] — broader RAG vs alternative-architecture discussion
- [[summary-cole-medin-rag-for-code|RAG for Code vs Knowledge]] — Cole Medin's adjacent thesis on when RAG still matters

## See Also

- [[summary-ibm-llama-cpp|llama.cpp / GGUF]] — adjacent local-inference fundamentals
- [[summary-tim-carambat-turboquant|TurboQuant]] — KV cache optimization for the same hardware
