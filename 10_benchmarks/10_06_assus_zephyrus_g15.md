---
title: "ASUS ROG Zephyrus G15 + AMD Ryzen 9 6900HS Performance Overview"  
parent: "Benchmarks"  
nav_order: 6
---

# ASUS ROG Zephyrus G15 + AMD Ryzen 9 6900HS Performance Overview

The ASUS ROG Zephyrus G15, featuring an **AMD Ryzen 9 6900HS CPU**, **16 GB of RAM**, and an **NVIDIA GeForce RTX 3060 Laptop GPU**, delivers impressive AI performance in GPU-heavy workloads. The **RTX 3060** excels in tasks like **Style Transfer**, **Depth Estimation**, and **Object Detection**. Additionally, the integrated **AMD Radeon Graphics (iGPU)** provides extra versatility for lighter AI tasks. This combination makes the G15 a solid option for developers seeking portable AI processing power.

#### Hardware Specs:

- **CPU**: AMD Ryzen 9 6900HS (8 cores, 16 threads)
- **GPU**: NVIDIA GeForce RTX 3060 Laptop GPU
- **iGPU**: AMD Radeon Graphics
- **RAM**: 16 GB DDR5
- **Estimated Total Price (2024)**: $1,299.99

#### Price-to-Performance: 988.25 IPS per $100

The ASUS ROG Zephyrus G15 achieves a price-to-performance ratio of **988.25 IPS per $100**, based on its **single precision GPU benchmark score of 12,848**. This metric highlights the system's AI performance efficiency relative to its cost.

> **Price-to-Performance Calculation:**
> The price-to-performance ratio is calculated by dividing the single precision GPU benchmark score by the system price, then multiplying by 100.  
> Calculation: (12,848 / 1,299.99) × 100 ≈ 988.25 IPS per $100

## ONNX DirectML GPU Benchmarks (NVIDIA GeForce RTX 3060)

The **NVIDIA GeForce RTX 3060 Laptop GPU** delivers strong results in AI workloads using ONNX DirectML. It excels in tasks such as **Style Transfer**, **Object Detection**, and **Depth Estimation**, showing that the RTX 3060 is capable of handling a variety of demanding AI tasks.

### Benchmark Scores

- **Single Precision**: 12,848
- **Half Precision**: 21,712
- **Quantized**: 8,786

#### Top AI Tasks (NVIDIA GeForce RTX 3060)

| **AI Task**               | **Single Precision Score** | **SP IPS**    | **AI Task**               | **Single Precision Score** | **SP IPS**    |
|---------------------------|----------------------------|---------------|---------------------------|----------------------------|---------------|
| 1. Style Transfer          | 113,470                    | 145.9 IPS     | 4. Object Detection        | 6,424                      | 509.6 IPS     |
| 2. Face Detection          | 13,819                     | 164.2 IPS     | 5. Depth Estimation        | 31,888                     | 245.7 IPS     |
| 3. Image Super-Resolution  | 20,522                     | 757.8 IPS     | 6. Pose Estimation         | 67,471                     | 78.7 IPS      |

## ONNX DirectML GPU Benchmarks (AMD Radeon Graphics - iGPU)

The **AMD Radeon Graphics (iGPU)** demonstrates solid performance in lighter AI tasks, making it a useful addition when the **NVIDIA RTX 3060** is not required for more intensive workloads. The iGPU handles tasks such as **Image Classification**, **Pose Estimation**, and **Style Transfer** at moderate performance levels.

### Benchmark Scores

- **Single Precision**: 5,674
- **Half Precision**: 8,417
- **Quantized**: 3,961

#### Top AI Tasks (AMD Radeon iGPU)

| **AI Task**               | **Single Precision Score** | **SP IPS**    | **AI Task**               | **Half Precision Score**   | **HP IPS**    |
|---------------------------|----------------------------|---------------|---------------------------|----------------------------|---------------|
| 1. Image Classification    | 2,044                      | 380.2 IPS     | 4. Pose Estimation         | 25,844                      | 67.8 IPS      |
| 2. Depth Estimation        | 13,397                     | 103.2 IPS     | 5. Image Super-Resolution  | 11,390                      | 605.5 IPS     |
| 3. Object Detection        | 2,245                      | 178.0 IPS     | 6. Face Detection          | 3,974                       | 47.2 IPS      |

## ONNX CPU Benchmarks (AMD Ryzen 9 6900HS)

When running tasks on the **AMD Ryzen 9 6900HS CPU**, the Zephyrus G15 provides adequate performance in more CPU-bound AI workloads. While it doesn't match the performance of the dedicated GPU, it still delivers reliable results for tasks such as **Image Classification** and **Pose Estimation**.

### Benchmark Scores

- **Single Precision**: 2,902
- **Half Precision**: 794
- **Quantized**: 3,105

#### Top AI Tasks (ONNX CPU - AMD Ryzen 9 6900HS)

| **AI Task**               | **Single Precision Score** | **SP IPS**    | **AI Task**               | **Quantized Score** | **Q IPS**     |
|---------------------------|----------------------------|---------------|---------------------------|---------------------|---------------|
| 1. Image Classification    | 2,143                      | 398.6 IPS     | 4. Object Detection        | 1,858               | 149.4 IPS     |
| 2. Pose Estimation         | 6,151                      | 7.18 IPS      | 5. Style Transfer          | 15,871              | 20.7 IPS      |
| 3. Depth Estimation        | 7,083                      | 54.6 IPS      | 6. Image Super-Resolution  | 2,557               | 94.7 IPS      |

## OpenVINO CPU Benchmarks (AMD Ryzen 9 6900HS with Radeon iGPU)

With the **OpenVINO** framework, the **Ryzen 9 6900HS** combined with the **Radeon iGPU** delivers reasonable performance in AI tasks. This combination allows for efficient handling of CPU-bound workloads while also taking advantage of the integrated GPU for additional processing power.

### Benchmark Scores

- **Single Precision**: 4,119
- **Half Precision**: 4,212
- **Quantized**: 7,202

#### Top AI Tasks (OpenVINO - CPU with Radeon iGPU)

| **AI Task**               | **Single Precision Score** | **SP IPS**    | **AI Task**               | **Half Precision Score**   | **HP IPS**    |
|---------------------------|----------------------------|---------------|---------------------------|----------------------------|---------------|
| 1. Image Classification    | 3,286                      | 611.0 IPS     | 4. Object Detection        | 2,945                       | 233.6 IPS     |
| 2. Depth Estimation        | 7,373                      | 56.8 IPS      | 5. Face Detection          | 5,982                       | 71.1 IPS      |
| 3. Pose Estimation         | 6,670                      | 7.78 IPS      | 6. Style Transfer          | 18,185                      | 23.4 IPS      |

## Final Summary

The **ASUS ROG Zephyrus G15** offers a balanced mix of CPU and GPU performance, excelling in GPU-intensive tasks with its **NVIDIA GeForce RTX 3060 Laptop GPU** while providing decent results for CPU-bound tasks. The **AMD Radeon iGPU** further expands the system's versatility for less intensive AI tasks. This system provides a **price-to-performance ratio of 988.25 IPS per $100**, making it a compelling choice for developers seeking a portable AI workstation. It shines in tasks like **Style Transfer**, **Pose Estimation**, and **Depth Estimation**, offering flexibility across GPU- and CPU-based workloads.