---
title: "Hardware Requirements"
has_children: true
nav_order: 2
---

# Hardware Requirements

Before you start running local LLMs, you need to understand what your hardware can handle. This section covers the technical requirements, limitations, and considerations for running different types of models on your system.

I learned this the hard way - downloading massive models that my system couldn't handle, dealing with crashes, and wasting time on configurations that were never going to work. This section will help you avoid those mistakes by understanding your hardware limitations upfront.

## What This Section Covers

**System Capability Assessment**: How to honestly evaluate what your hardware can handle, from RAM constraints to GPU capabilities.

**Memory Requirements**: Detailed breakdowns of how much memory different model sizes actually use, with practical recommendations for each hardware tier.

**Model Size vs Memory**: Understanding the relationship between model parameters, quantization, and actual memory usage during inference.

**CPU vs GPU Processing**: When to use CPU-only inference versus GPU acceleration, and how to make the most of whatever hardware you have.

**GPU Offloading**: How to leverage your graphics card for faster inference, including partial offloading strategies for systems with limited VRAM.

## The Key Hardware Factors

**Available System Memory (RAM)**
This is usually your biggest constraint. Models need to load entirely into memory, and if you don't have enough RAM, your system will start swapping to disk, making everything painfully slow.

**GPU Memory (VRAM) and Capabilities**
If you have a dedicated GPU, this can dramatically speed up inference. But GPU memory is typically more limited than system RAM, so you need to balance between speed and model size.

**CPU Performance and Architecture**
Even with GPU acceleration, your CPU coordinates tasks and handles parts of model processing. Modern CPUs with more cores generally perform better.

**Storage Speed and Capacity**
Models are large files (several gigabytes), so fast storage (SSD) helps with loading times, especially when switching between different models.

## My Hardware Journey

I started with 16GB RAM and no dedicated GPU - learned quickly which models worked and which didn't. Upgraded to 32GB RAM and added a GPU - completely changed what was possible. Now I understand the real-world performance differences between different hardware configurations.

This section shares what I've learned about making the most of whatever hardware you have, from budget laptops to high-end workstations.
