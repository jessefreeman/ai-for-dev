---
type: concept
sources: ["EASIEST Way to Fine-Tune a LLM and Use It With Ollama.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [concept, ai, llm, fine-tuning, training, lora, gguf, local-ai]
---

# Fine-Tuning (LLMs)

Taking a pre-trained language model and **teaching it a specific task** by training on examples of the desired input → output behavior. The wiki's coverage is **practical fine-tuning for local deployment** — the workflow that turns an open-weights base model into a specialized local model running in [[ollama|Ollama]] — not the academic / research-grade training stack used at frontier labs.

## When to fine-tune (vs. prompt engineering vs. RAG)

Per [[tech-with-tim|Tech With Tim]]'s framing, fine-tuning is the right call when you need one of:

1. **Consistent formatting or style** that prompting alone can't enforce reliably (e.g., a strict JSON schema, a narrow writing voice)
2. **Domain-specific data** the base model hasn't seen (medical records, legal documents, customer service logs, internal jargon)
3. **Cost reduction** via specialization — a fine-tuned small model can match a much larger general model on its specific task at a fraction of the inference cost

Don't fine-tune for:
- One-off prompts ([[meta-prompting]] or [[ai-coding-workflow|context engineering]] is cheaper)
- Knowledge updates (use [[summary-cole-medin-rag-for-code|RAG]] — fine-tuning is bad at adding new facts)
- Anything where the base model is already 95% there (the marginal improvement isn't worth the workflow cost)

## The deliberate trade-off

> "When you do fine-tune, you can make these models worse at general tasks, but you will make them better at yours." — [[tech-with-tim|Tech With Tim]]

A fine-tuned model loses general capability while gaining specific capability. **This is a feature, not a bug** — if you wanted general capability you'd use the base model. The point of fine-tuning is to commit hardware to one job.

## Fine-tuning vs. parameter tuning

Often confused, very different:

| | Parameter tuning | Fine-tuning |
|---|---|---|
| What changes | Inference settings (temperature, top-k, top-p, system prompt) | Model weights (specifically, the LoRA adapter weights or full weights) |
| Persistence | Per-request | Permanent — produces a new model |
| Compute | Free | Significant (minutes to hours on a GPU) |
| Data needed | None | Hundreds to thousands of input/output pairs |
| Use case | "Make this model less verbose" | "Make this model output strict JSON" |

Tim's analogy: parameter tuning is adjusting the radio, fine-tuning is teaching the car to drive in a different neighborhood.

## The wiki's canonical recipe (Unsloth + LoRA + GGUF + Ollama)

The practical workflow [[tech-with-tim|Tech With Tim]] walks through in [[summary-tech-with-tim-fine-tune-ollama|EASIEST Way to Fine-Tune a LLM and Use It With Ollama]]:

```
1. Dataset preparation
   - 500–5,000 input/output pairs in JSON
   - Format depends on the task; Tim's demo is HTML → structured extraction
   - "If you have bad data, you'll have a poorly fine-tuned model"

2. Base model selection (via Unsloth)
   - Pick a small open-weights model that fits the task
   - Tim uses Phi3 mini for demo speed
   - Other supported families: Llama 3.1, Mistral, Mixtral, Gemma, Qwen, ...

3. LoRA adapter setup
   - Adds a small set of trainable layers on top of the frozen 4-bit base
   - This is what makes fine-tuning tractable on a free Google Colab T4 GPU

4. Training (SFTTrainer)
   - 500 examples on Phi3 mini → ~10 minutes on a T4
   - More examples = better output, longer training
   - Larger base model = better output, much longer training

5. Inference test
   - Run the fine-tuned model in the same notebook to check output quality
   - Iterate on dataset / hyperparameters before exporting

6. Export to GGUF
   - model.save_pretrained_gguf() — produces a Q4_K_M quantized file
   - Takes another 10–15 minutes
   - Download from Colab to local

7. Load into Ollama
   - Drop the .gguf file in a directory
   - Create a Modelfile that points at it (FROM ./<filename>.gguf)
   - Add a system prompt and inference parameters
   - ollama create <name> -f Modelfile
   - ollama run <name>
```

End-to-end: about 25 minutes of compute time + dataset prep, **all on free hardware** thanks to Colab's T4 runtime.

## Why LoRA matters

Full fine-tuning updates every parameter in the model — billions of weights, requiring datacenter GPUs and proportional memory. **LoRA (Low-Rank Adaptation)** instead freezes the base model and trains a small set of low-rank "adapter" matrices that get added to specific layers. The adapters are tiny (megabytes vs gigabytes) and can be trained in minutes on consumer hardware.

For local deployment, the LoRA adapters get **merged back into the base model** during the GGUF export, producing a single quantized file that runs in Ollama like any other model. The user never has to think about adapters at runtime.

## Why GGUF matters for the local-AI thread

GGUF is the file format that [[llama-cpp|llama.cpp]] consumes, which means it's also the format [[ollama|Ollama]], [[anything-llm|AnythingLLM]], LM Studio, and most other local runners can load. Exporting a fine-tuned model as GGUF is what makes it portable across the entire local-AI ecosystem — the same fine-tuned file works in any of them. See [[summary-ibm-llama-cpp|IBM's llama.cpp explainer]] for the full GGUF context.

## Limitations of the wiki's current coverage

- Only the [[unsloth|Unsloth]] path is documented. Other libraries (axolotl, LLaMA-Factory, Hugging Face TRL directly) exist and may be better fits for some workflows.
- The "how much data is enough" question is left fuzzy — Tim's 500 examples is explicitly a demo size, not a real-world target.
- Evaluation is barely covered — the wiki doesn't yet have a fine-tuning eval methodology page. [[summary-pixegami-python-rag-tutorial|pixegami's LLM-as-judge testing pattern]] could plausibly be adapted for fine-tuned model eval.
- **No coverage of full fine-tuning** (vs. LoRA), DPO, RLHF, or instruction tuning at the research level. Those are out of scope for the local-deployment thread.

## See Also

- [[unsloth]] — the library that makes the recipe tractable
- [[tech-with-tim]] — primary source
- [[ollama]] — where the fine-tuned model lands
- [[llama-cpp]] — GGUF format origin
- [[gemma-4-vram-requirements]] — VRAM sizing context (training and inference have similar constraints)
- [[meta-prompting]] — the alternative when you don't actually need new model behavior
- [[summary-tech-with-tim-fine-tune-ollama|Source: EASIEST Way to Fine-Tune a LLM and Use It With Ollama]]
