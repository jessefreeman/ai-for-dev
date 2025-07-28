---
title: "Memory Requirements by Model Size"
parent: "Hardware Requirements"
nav_order: 2
---

# Memory Requirements by Model Size

Understanding how much memory different models require is crucial for choosing what will actually run on your system. Here's what I've learned from running various model sizes on different hardware configurations.

## Model Size Basics

Models are measured in parameters (like 7B, 13B, 34B, 70B). More parameters generally mean better quality but exponentially more memory usage. The actual memory footprint depends on the quantization level used to compress the model.

**Common Model Sizes:**

- **7B models**: Good for most tasks, runs on modest hardware
- **13B models**: Better quality, needs more memory
- **34B models**: Significant quality improvement, requires substantial RAM
- **70B models**: Top-tier quality, needs high-end hardware

## Memory Requirements by System

### 8GB RAM Systems

You're limited to smaller models with aggressive quantization:

| **Model** | **Quantization** | **Memory Usage** | **Performance**          |
| --------- | ---------------- | ---------------- | ------------------------ |
| 7B        | Q3_K_L           | ~4 GB            | Fast, basic quality      |
| 7B        | Q5_K_M           | ~6 GB            | Moderate, better quality |
| 7B        | Q6_K             | ~7 GB            | Slower, good quality     |

**Reality check**: With only 8GB total RAM, you need to leave memory for your OS and other apps. Stick to Q3 or Q4 quantization levels.

### 16GB RAM Systems

The sweet spot for most users:

| **Model** | **Quantization** | **Memory Usage** | **Performance**             |
| --------- | ---------------- | ---------------- | --------------------------- |
| 7B        | Q8_0             | ~8 GB            | Fast, excellent quality     |
| 13B       | Q4_K_M           | ~8 GB            | Moderate, very good         |
| 13B       | Q5_K_M           | ~10 GB           | Good balance                |
| 13B       | Q6_K_S           | ~14-16 GB        | Near capacity, high quality |

**What works**: 13B models with Q4 or Q5 quantization give you the best balance of quality and performance.

### 32GB RAM Systems

Comfortable running larger models:

| **Model** | **Quantization** | **Memory Usage** | **Performance**           |
| --------- | ---------------- | ---------------- | ------------------------- |
| 13B       | Q8_0             | ~16 GB           | Fast, maximum quality     |
| 34B       | Q4_K_M           | ~18 GB           | Good, significant upgrade |
| 34B       | Q5_K_S           | ~24 GB           | Better quality            |
| 34B       | Q8_0             | ~28-32 GB        | Near capacity, excellent  |

**Sweet spot**: 34B models with Q5 quantization offer excellent quality without maxing out your RAM.

### 64GB+ RAM Systems

Can handle the largest models:

| **Model** | **Quantization** | **Memory Usage** | **Performance**           |
| --------- | ---------------- | ---------------- | ------------------------- |
| 34B       | Q8_0             | ~32 GB           | Plenty of headroom        |
| 70B       | IQ2_M            | ~22 GB           | Experimental quantization |
| 70B       | Q4_K_S           | ~35 GB           | Good balance              |
| 70B       | Q6_K_S           | ~40 GB           | High quality              |

## GPU Memory Considerations

If you have a dedicated GPU, you can offload model processing to VRAM for much faster inference:

**4GB VRAM**: Can partially accelerate 7B models
**8GB VRAM**: Good acceleration for 7B-13B models
**16GB VRAM**: Can handle 34B models with partial offloading
**24GB+ VRAM**: Full acceleration for most models

## Practical Guidelines

**Start Small**: Begin with a 7B model to test your setup before moving to larger models.

**Monitor Usage**: Use task manager or system monitoring tools to watch actual memory consumption.

**Leave Headroom**: Don't use 100% of your RAM - leave 2-4GB for the operating system and other applications.

**Test Performance**: Larger models aren't always better if they're too slow to be practical for your use case.

## My Recommendations by System

**8GB RAM**: Stick to 7B models with Q4 quantization
**16GB RAM**: Use 13B models with Q5 quantization  
**32GB RAM**: Go for 34B models with Q5 quantization
**64GB+ RAM**: Try 70B models or use 34B with maximum quality

The key is finding the largest model that runs comfortably on your system without causing slowdowns or instability.
