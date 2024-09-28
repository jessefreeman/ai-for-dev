---
title: "ASUS ProArt P16 H7606 + NVIDIA GeForce RTX 4070 Laptop GPU Performance Overview"  
parent: "Benchmarks"  
nav_order: 5  
---

# ASUS ProArt P16 + RTX 4070 Laptop GPU Performance Overview

The ASUS ProArt P16, featuring a 12-core AMD Ryzen AI 9 HX 370 CPU, 32 GB of RAM, and the NVIDIA GeForce RTX 4070 Laptop GPU, is a robust machine for AI tasks like Pose Estimation, Style Transfer, and Object Detection. Despite being a laptop, it achieves impressive results when compared to desktop systems like the ASUS System Product Name and offers advantages such as portability and a high-quality 16-inch 4K OLED display. With a well-rounded performance across both CPU and GPU tasks, the ProArt P16 is a versatile choice for developers who need efficient, high-performance AI computing on Windows.

#### Hardware Specs:

- **CPU**: AMD Ryzen AI 9 HX 370
- **GPU**: NVIDIA GeForce RTX 4070 Laptop GPU
- **RAM**: 32 GB DDR5
- **Display**: 16-inch 4K OLED
- **Estimated Total Price (2024)**: $2,017.99 (open-box deal)

This reflects the open-box price of the system as of 2024.

#### Price-to-Performance: 1,574.20 IPS per $100

The ASUS ProArt P16 achieves a price-to-performance ratio of 1,574.20 IPS per $100, based on its overall single precision GPU benchmark score of 31,754. While this ratio is lower than that of desktop counterparts like the ASUS System Product Name, the ProArt P16 offers the advantage of portability and a high-quality display, making it a solid option for AI developers who require mobility without sacrificing performance.

> **Price-to-Performance Calculation:**
> The price-to-performance ratio is calculated by dividing the single precision GPU benchmark score by the system price, then multiplying by 100.  
> Calculation: (31,754 / 2,017.99) × 100 ≈ 1,574.20 IPS per $100

## ONNX DirectML GPU Benchmarks

The NVIDIA GeForce RTX 4070 Laptop GPU excels in AI workloads, providing exceptional parallel processing power. The GPU performs particularly well in Style Transfer, Pose Estimation, and Image Super-Resolution tasks, demonstrating that laptop GPUs have significantly narrowed the performance gap with desktop GPUs.

### Benchmark Scores

- **Single Precision**: 31,754
- **Half Precision**: 14,173
- **Quantized**: 18,992

#### Top AI Tasks

| **AI Task**               | **Single Precision Score** | **SP IPS**    | **AI Task**               | **Single Precision Score** | **SP IPS**    |
|---------------------------|----------------------------|---------------|---------------------------|----------------------------|---------------|
| 1. Style Transfer         | 171,661                    | 220.7 IPS     | 4. Image Super-Resolution | 52,272                     | 1.93 KIPS     |
| 2. Pose Estimation        | 96,813                     | 113.0 IPS     | 5. Object Detection       | 16,281                     | 1.29 KIPS     |
| 3. Face Detection         | 31,640                     | 375.9 IPS     | 6. Depth Estimation       | 79,901                     | 617.3 IPS     |

## ONNX CPU Benchmarks

The AMD Ryzen AI 9 HX 370 CPU proves capable in handling AI workloads, performing well in tasks like Image Classification and Object Detection using the ONNX framework. While the CPU performance is solid, the GPU remains the primary driver for intensive AI tasks.

#### Benchmark Scores

- **Single Precision**: 2,983
- **Half Precision**: 5,315
- **Quantized**: 5,295

#### Top AI Tasks

| **AI Task**               | **Single Precision Score** | **SP IPS**    | **AI Task**               | **Single Precision Score** | **SP IPS**    |
|---------------------------|----------------------------|---------------|---------------------------|----------------------------|---------------|
| 1. Image Classification   | 1,499                      | 278.7 IPS     | 4. Object Detection       | 1,681                      | 133.4 IPS     |
| 2. Pose Estimation        | 8,373                      | 9.77 IPS      | 5. Depth Estimation       | 6,412                      | 49.4 IPS      |
| 3. Style Transfer         | 15,770                     | 20.3 IPS      | 6. Face Detection         | 3,010                      | 35.8 IPS      |

## OpenVINO CPU Benchmarks

When using the OpenVINO framework, the AMD Ryzen AI 9 HX 370 CPU continues to offer solid performance, particularly in Image Classification and Object Detection tasks. OpenVINO optimizations help leverage the CPU's capabilities effectively.

#### Benchmark Scores

- **Single Precision**: 5,315
- **Half Precision**: 5,295
- **Quantized**: 13,476

#### Top AI Tasks

| **AI Task**               | **Quantized Score** | **Q IPS**    | **AI Task**               | **Quantized Score** | **Q IPS**    |
|---------------------------|---------------------|--------------|---------------------------|---------------------|--------------|
| 1. Style Transfer         | 83,159              | 107.2 IPS    | 4. Object Detection       | 8,676               | 695.5 IPS    |
| 2. Pose Estimation        | 32,771              | 38.4 IPS     | 5. Depth Estimation       | 23,749              | 184.8 IPS    |
| 3. Image Super-Resolution | 14,489              | 536.6 IPS    | 6. Face Detection         | 22,489              | 267.2 IPS    |

## Final Summary

The ASUS ProArt P16 delivers strong AI performance across both CPU and GPU tasks, excelling in Style Transfer, Pose Estimation, and Object Detection. The NVIDIA RTX 4070 Laptop GPU drives exceptional performance in GPU-bound AI workloads, narrowing the gap with desktop GPUs like the RTX 4070 Super. While the price-to-performance ratio of **1,574.20 IPS per $100** is lower than that of desktop systems, the ProArt P16 offers the advantages of portability, a high-quality 4K OLED display, and a robust build, making it an excellent choice for developers who need mobility without sacrificing performance.