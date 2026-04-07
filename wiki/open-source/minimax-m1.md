---
type: entity
created: 2026-04-07
updated: 2026-04-07
tags: [open-source, model, long-context]
---

# MiniMax M1

MiniMax's first open-source large-scale hybrid-attention reasoning model. Two variants: 80K and 40K reasoning-output. **1M token context window**, **80K reasoning output** (8× DeepSeek R1 at the time). Open weights on Hugging Face.

## Why it matters

The "lightning attention" hybrid architecture is the technical moat — efficient long-context processing that lets the model use its full 1M window without the throughput collapse that hits standard attention at long sequences. Anchors a model family that continued into [[minimax-m27|M2.7]].

## Status in the wiki

- **M1** is the open-weights generation covered here (June 2025)
- **[[minimax-m27|M2.7]]** is the closed-source successor at 20× lower cost than Opus 4.6 (covered in [[summary-damian-malliaros-minimax-m27]])

## Sources

- [[summary-worldofai-minimax-m1-agent|MiniMax Agent walkthrough]]

## See Also

- [[minimax-m27]] — successor
- [[deepseek]], [[qwen]], [[kimi-k2]] — sibling open-weights models
- [[vllm]] — recommended runtime for serving M1 with high throughput
