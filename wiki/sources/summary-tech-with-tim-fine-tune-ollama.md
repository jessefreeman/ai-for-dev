---
type: source-summary
sources: ["EASIEST Way to Fine-Tune a LLM and Use It With Ollama.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, ai, fine-tuning, ollama, unsloth, lora, gguf, local-ai]
---

# EASIEST Way to Fine-Tune a LLM and Use It With Ollama

**Channel:** [[tech-with-tim|Tech With Tim]]
**Format:** YouTube tutorial walkthrough
**Published:** 2025-06-27
**Sponsor:** 10Web (AI Website Builder API) — disclosed midroll, unrelated to fine-tuning content

## Summary

Step-by-step walkthrough of fine-tuning an open-weights LLM ([[unsloth|Unsloth]] + Phi3 mini + LoRA + Google Colab T4 GPU) and exporting the result to GGUF for local use in [[ollama|Ollama]] via a custom Modelfile. End-to-end demo on a 500-example HTML extraction dataset, completing in about 25 minutes of compute (10 min train + 15 min export/download). Anchors the wiki's [[fine-tuning]] concept page with a concrete reproducible recipe.

## Key Points

- **Fine-tuning ≠ parameter tuning**: parameter tuning adjusts inference settings (temperature, top-k); fine-tuning permanently changes model weights via training. Tim's analogy: parameter tuning is adjusting the radio, fine-tuning is teaching the car to drive in a different neighborhood.
- **Three reasons to fine-tune** (Tim's framing): (1) consistent formatting/style prompting can't enforce, (2) domain-specific data the base model hasn't seen, (3) cost reduction via specialization
- **Deliberate trade-off**: fine-tuned models get *worse at general tasks* while getting better at the specific one. "If you want general capability, use the base model — the point of fine-tuning is to commit to one job."
- **Dataset is the most important part**: "If you have bad data, you'll have a poorly fine-tuned model." Tim spends as much video time on the JSON example format as on the trainer config.
- **Demo dataset**: 500 HTML → JSON-extraction examples in input/output pairs. Plain JSON, no schema imposed by Unsloth.
- **Unsloth + LoRA + free Google Colab T4** is the no-budget path. Tim explicitly recommends *not* trying to train locally unless you have a 4080+, because the alternative is the free Colab T4 which is fast enough for small models.
- **Phi3 mini** is the demo target — picked for speed, not quality. Other supported families: Llama 3.1, Mistral, Mixtral, Gemma, Qwen.
- **LoRA adapters** make this tractable on a T4: freeze the 4-bit base model, train only a small set of adapter layers. Tim doesn't deep-dive on LoRA; he tells viewers to "ask Gemini to explain the parameters" via Colab's built-in explain-code feature.
- **GGUF export pipeline**: `model.save_pretrained_gguf(...)` produces `unsloth.q4_K_M.gguf`, downloadable from Colab to local. Takes 10–15 minutes and is the slowest step in the whole workflow.
- **Ollama Modelfile** is how the fine-tuned GGUF gets loaded:
  ```
  FROM ./unsloth.q4_K_M.gguf
  PARAMETER temperature 0.7
  PARAMETER stop <|end|>
  TEMPLATE "{{ .Prompt }}"
  SYSTEM "You are a helpful AI assistant."
  ```
  Then `ollama create html-model -f Modelfile && ollama run html-model`.
- **Honest limitation**: Tim's demo output is "barely working" — sometimes correct, sometimes hallucinating the JSON shape. Real fine-tuning needs thousands of examples, not 500. The video is showing the *workflow*, not a production result.

## Sponsorship & Bias Notes

**Sponsor:** 10Web (AI Website Builder API). Featured in a midroll segment as a no-code WordPress site generator. **Not added to the wiki** per sponsorship rule. The sponsor segment is cleanly separated from the technical content — discount the 10Web claims, the fine-tuning walkthrough is unaffected.

**Product placement / affiliations:** Tim links to his own notebook + dataset in the description. Educational pattern, not commercial. No conflict.

**Comparison bias:** Tim compares Unsloth to "training from scratch" (favorably) and to vanilla Hugging Face (favorably for memory efficiency). Both comparisons are accurate to general ML community consensus — Unsloth is genuinely fast on supported architectures. Not a flag.

## Notable Quotes

> "If you have bad data, you're going to have a poorly fine-tuned model."

> "When you do fine-tune, you can make these models worse at general tasks, but you will make them better at yours."

> "Parameter tuning is adjusting your car's radio, fine-tuning is teaching your car to drive in a completely different neighborhood."

## Connected Pages

- [[fine-tuning]] — concept page anchored on this walkthrough
- [[unsloth]] — the library Tim uses
- [[ollama]] — the runtime the fine-tuned model lands in
- [[llama-cpp]] — GGUF origin (the file format the export step produces)
- [[tech-with-tim]] — author hub (1st of 2 sources from this batch)

## See Also

- [[summary-tech-with-tim-docker-model-runner|Source: Docker Model Runner Tutorial]] — Tim's other ingest in this batch
- [[summary-ibm-llama-cpp|Source: What Is Llama.cpp?]] — GGUF format context
- [[summary-pixegami-python-rag-tutorial|Source: Python RAG Tutorial]] — adjacent local-AI workflow (RAG instead of fine-tuning)
