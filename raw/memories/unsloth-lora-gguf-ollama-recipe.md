---
title: Unsloth + LoRA + GGUF → Ollama Modelfile Fine-Tuning Recipe
summary: The end-to-end pipeline to fine-tune a small open-weights LLM on free Google Colab T4 and run the result locally in Ollama. ~25 minutes total compute, no paid hardware needed.
tags: [tool_unsloth, tool_ollama, concept_fine_tuning, topic_local_ai, source_tech_with_tim_fine_tune]
---

# Unsloth + LoRA + GGUF → Ollama Modelfile Fine-Tuning Recipe

## Context

From [[summary-tech-with-tim-fine-tune-ollama|Tech With Tim's fine-tuning walkthrough]]. See also [[fine-tuning]] (concept), [[unsloth]] (library), [[ollama]] (runtime).

## Content

**The 7-step recipe** for taking an open-weights base model + your dataset → fine-tuned local model running in Ollama, all on free hardware:

1. **Dataset**: 500–5,000 input/output JSON pairs. Format is plain `[{"input": "...", "output": "..."}, ...]`. The single most important step — bad data, bad model.
2. **Base model** (via Unsloth): `FastLanguageModel.from_pretrained("unsloth/Phi-3-mini-4k-instruct-bnb-4bit", load_in_4bit=True)`. Other supported families: Llama 3.1, Mistral, Mixtral, Gemma, Qwen.
3. **LoRA adapters**: `FastLanguageModel.get_peft_model(...)`. Adds trainable layers on top of the frozen 4-bit base. **This is what makes fine-tuning tractable on a free T4** instead of needing a workstation GPU.
4. **Train**: `SFTTrainer` from TRL. ~10 minutes for 500 examples on Phi3 mini on a Colab T4.
5. **Test inference** in the notebook before exporting.
6. **Export to GGUF**: `model.save_pretrained_gguf(...)` → produces `unsloth.q4_K_M.gguf`. **Slowest step, ~15 minutes.** Download from Colab to local.
7. **Load into Ollama** via custom Modelfile:
   ```
   FROM ./unsloth.q4_K_M.gguf
   PARAMETER temperature 0.7
   PARAMETER stop <|end|>
   TEMPLATE "{{ .Prompt }}"
   SYSTEM "You are a helpful AI assistant."
   ```
   Then `ollama create my-model -f Modelfile && ollama run my-model`.

**Total time**: ~25 minutes of compute (10 min train + 15 min export/download), plus dataset prep. **Total cost**: $0 — Google Colab T4 runtime is free, Ollama is free, Unsloth is free.

**The deliberate trade-off**: fine-tuned models get *worse at general tasks* while getting better at the trained one. Don't fine-tune if you want general capability — use the base model. The point of fine-tuning is to commit hardware to one job.
