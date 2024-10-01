---
title: "Intel NUC9V7QNX + RTX 4060"  
parent: "Benchmarks"  
nav_order: 4  
---

# Intel NUC9V7QNX + NVIDIA GeForce RTX 4060 Performance Overview

The Intel NUC9V7QNX, paired with **64 GB of RAM** and an **NVIDIA GeForce RTX 4060**, provides solid AI performance across various workloads. Despite featuring an older **Intel Core i7-9850H CPU**, this compact system achieves impressive results when paired with the modern **RTX 40-series GPU**, even when compared to newer systems like the [**MacBook Pro M3 Max](./10_03_m3_max.md)**. The NUC's GPU excels in tasks such as **Style Transfer**, **Object Detection**, and **Depth Estimation**, leveraging the RTX 4060's parallel processing power. This makes the Intel NUC9V7QNX a capable and cost-effective option for developers working with AI and machine learning models.

#### Hardware Specs:

- **CPU & Motherboard**: Intel NUC 9 Extreme Kit (NUC9i7QN)
- **GPU**: MSI NVIDIA GeForce RTX 4060 8 GB GDDR6
- **RAM**: Crucial RAM 64 GB Kit (2 × 32 GB) DDR4 3200 MHz CL22

**Estimated Total Price (2024)**: $814.96

This reflects the current price for the system when purchased in 2024.

#### Price-to-Performance: 1,681.75 IPS per $100

The Intel NUC9V7QNX + NVIDIA GeForce RTX 4060 achieves a price-to-performance ratio of **1,681.75 IPS per $100**, based on its overall single precision GPU benchmark score of **13,705**. This metric highlights the system's AI performance efficiency relative to its cost, making it a strong competitor, especially when considering its compact form factor and cost-effectiveness.

> **Price-to-Performance Calculation:**
> The price-to-performance ratio is calculated by dividing the single precision GPU benchmark score by the system price, then multiplying by 100.
> Calculation: (13,705 / 814.96) × 100 ≈ 1,681.75 IPS per $100

## ONNX DirectML GPU Benchmarks

In the ONNX DirectML GPU benchmarks, the RTX 4060 demonstrates strong performance in Style Transfer, Object Detection, and Image Super-Resolution tasks. The Intel NUC9V7QNX delivers competitive performance across the board in single-precision and half-precision workloads, showcasing that the older CPU does not significantly bottleneck the GPU's capabilities.

### Benchmark Scores

- **Single Precision**: 13,705
- **Half Precision**: 21,289
- **Quantized**: 10,809

#### Top AI Tasks

| **AI Task**               | **Single Precision Score** | **SP IPS** | **AI Task**               | **Single Precision Score** | **SP IPS** |
| ------------------------- | -------------------------- | ---------- | ------------------------- | -------------------------- | ---------- |
| 1. Style Transfer          | 132,161                    | 169.9 IPS  | 4. Depth Estimation        | 34,337                      | 264.5 IPS  |
| 2. Face Detection          | 14,904                     | 177.1 IPS  | 5. Image Super-Resolution  | 22,755                      | 840.2 IPS  |
| 3. Object Detection        | 6,422                      | 509.4 IPS  | 6. Pose Estimation         | 82,969                      | 96.8 IPS   |

## OpenVINO CPU Benchmarks

The Intel NUC9V7QNX performs adequately in the OpenVINO CPU benchmarks, showing reliable results in quantized workloads. While the Intel Core i7-9850H is an older CPU, it still provides support for general AI tasks, and when combined with OpenVINO optimizations, it can handle quantized models efficiently.

### Benchmark Scores

- **Single Precision**: 3,471
- **Half Precision**: 5,155
- **Quantized**: 3,436

#### Top AI Tasks

| **AI Task**               | **Quantized Score** | **Q IPS** | **AI Task**               | **Quantized Score** | **Q IPS** |
| ------------------------- | ------------------- | --------- | ------------------------- | ------------------- | --------- |
| 1. Style Transfer          | 25,351              | 32.7 IPS  | 4. Depth Estimation        | 9,360               | 73.9 IPS  |
| 2. Face Detection          | 8,969               | 106.9 IPS | 5. Object Detection        | 3,430               | 275.1 IPS |
| 3. Image Super-Resolution  | 5,252               | 194.5 IPS | 6. Pose Estimation         | 8,841               | 10.4 IPS  |

## ONNX CPU Benchmarks

The Intel NUC9V7QNX shows reliable CPU performance in ONNX CPU benchmarks, particularly in image classification and depth estimation tasks. While the older CPU cannot match the performance of newer processors, it provides a solid foundation for CPU-bound workloads.

### Benchmark Scores

- **Single Precision**: 924
- **Half Precision**: 2,152
- **Quantized**: 1,941

#### Top AI Tasks

| **AI Task**               | **Quantized Score** | **Q IPS** | **AI Task**               | **Quantized Score** | **Q IPS** |
| ------------------------- | ------------------- | --------- | ------------------------- | ------------------- | --------- |
| 1. Image Classification    | 1,846               | 344.7 IPS | 4. Depth Estimation        | 3,705               | 29.7 IPS  |
| 2. Image Super-Resolution  | 2,056               | 76.2 IPS  | 5. Object Detection        | 1,258               | 101.1 IPS |
| 3. Pose Estimation         | 6,795               | 8.03 IPS  | 6. Style Transfer          | 10,806              | 14.1 IPS  |

## Final Summary

The Intel NUC9V7QNX + NVIDIA GeForce RTX 4060 offers a compelling mix of GPU and CPU performance, particularly excelling in GPU-based tasks such as Style Transfer, Object Detection, and Image Super-Resolution. Despite featuring an older Intel Core i7-9850H CPU, the system achieves impressive results when paired with the modern RTX 4060 GPU, even when compared to the MacBook Pro M3 Max. With a GPU performance-to-price ratio of **1,681.75 IPS per $100**, this system is a great option for developers looking for strong AI capabilities in a compact and cost-efficient package.