---
type: entity
sources: ["EASIEST Way to Fine-Tune a LLM and Use It With Ollama.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [open-source, ai, llm, fine-tuning, training, python]
---

# Unsloth

Open-source Python library that makes **fine-tuning open-weights LLMs fast, free, and accessible**. Wraps the underlying training stack (PyTorch + Hugging Face Transformers + LoRA via PEFT) and adds aggressive optimizations for memory and speed. The wiki's anchor entry for fine-tuning workflows.

- **License**: Open source
- **Site**: unsloth.ai
- **GitHub**: unslothai/unsloth
- **Best fit**: fine-tuning small-to-medium open-weights models (Llama 3.1, Mistral, Phi3, Gemma, etc.) on consumer GPUs or free Google Colab runtimes

## What it does

Unsloth pre-patches model architectures and the training loop with custom CUDA kernels so that fine-tuning a 4-bit quantized model uses **dramatically less VRAM** than the equivalent vanilla Hugging Face setup, and trains **2–5× faster** on the same hardware. The trade-off: Unsloth supports a curated list of model architectures (the popular open-weights families) rather than every model on Hugging Face.

The combined effect is what makes the wiki care about Unsloth specifically: a Phi3 mini fine-tune that would need a workstation GPU and hours of training in vanilla HF can run on the **free Google Colab T4 runtime in ~10 minutes**, end-to-end, including the LoRA adapter setup.

## How [[tech-with-tim|Tech With Tim]] uses it (the wiki's primary recipe)

From [[summary-tech-with-tim-fine-tune-ollama|the fine-tuning walkthrough]]:

1. **Dataset**: 500 input/output JSON pairs (HTML → structured extraction in Tim's demo). The format is plain `[{"input": "...", "output": "..."}, ...]` — Unsloth doesn't impose a schema, the user formats the prompt template themselves.
2. **Load the base model**: `FastLanguageModel.from_pretrained(model_name=...)` with `load_in_4bit=True`. Tim uses `unsloth/Phi-3-mini-4k-instruct-bnb-4bit` for the demo because it trains fastest.
3. **Add LoRA adapters**: `FastLanguageModel.get_peft_model(...)` — adds the trainable layers on top of the frozen 4-bit base. This is the step that makes fine-tuning tractable on a T4.
4. **Train**: `SFTTrainer` from TRL, with the formatted dataset and standard hyperparameters. Tim's demo trains in ~10 minutes for 500 examples.
5. **Save to GGUF**: `model.save_pretrained_gguf(...)` — exports the merged fine-tuned weights in GGUF format, the file format [[ollama|Ollama]] (and [[llama-cpp|llama.cpp]]) expect. This step takes another 10–15 minutes.
6. **Load into Ollama**: download the `unsloth.q4_K_M.gguf` file from Colab, drop it next to a custom **Modelfile**, run `ollama create <name> -f Modelfile`, then `ollama run <name>`.

The whole pipeline is reproducible from the linked Colab notebook — see Tim's video description.

## Where Unsloth fits in the wiki's local-AI threads

- **[[fine-tuning|Fine-tuning]]** — Unsloth is the practical entry point. The concept page documents the workflow shape; this entry is the tool that makes it tractable.
- **[[ollama|Ollama]]** — Unsloth's GGUF export is what lets fine-tuned models become *running local models* via Ollama's Modelfile system.
- **[[llama-cpp|llama.cpp]]** — GGUF is llama.cpp's native format; Unsloth's export is going through that pipeline.
- **[[gemma-4-vram-requirements|Gemma 4 VRAM Requirements]]** — adjacent reference. Hardware sizing for *running* models; Unsloth is for *training* them. The same VRAM constraints apply.
- **Local-AI cost reduction** — Unsloth is part of the "you don't need to pay for fine-tuning APIs" thread alongside [[ollama|Ollama]]'s "you don't need to pay for inference APIs" framing.

## Caveats from the source

- Tim's demo intentionally uses a small dataset (500 examples) and a small model (Phi3 mini) to keep the video runtime manageable. The output is "barely working" — sometimes correct, sometimes hallucinating the JSON shape. **Real fine-tuning needs more examples** (thousands, not hundreds).
- Fine-tuned models get **worse at general tasks** while getting better at the trained one. Tim is explicit about this trade-off.
- The trainer step's optimal hyperparameters are model-specific; Tim leaves them at Unsloth's defaults and tells viewers to read the Unsloth docs for tuning.

## See Also

- [[fine-tuning]] — concept page (workflow + LoRA + GGUF export pattern)
- [[tech-with-tim]] — primary source for Unsloth coverage in the wiki
- [[ollama]] — where the fine-tuned GGUF gets loaded for inference
- [[llama-cpp]] — the underlying inference engine + GGUF format origin
- [[summary-tech-with-tim-fine-tune-ollama|Source: EASIEST Way to Fine-Tune a LLM and Use It With Ollama]]
