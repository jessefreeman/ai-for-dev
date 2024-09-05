---
title: "Intel NUC9V7QNX + RTX 4060 Performance Overview"
parent: "10 Benchmarks"
order: 4
---
# Intel NUC9V7QNX + RTX 4060 Performance Overview

The **Intel NUC9V7QNX**, paired with **64GB of Crucial DDR4 RAM** and an **MSI GeForce RTX 4060 8GB**, delivers strong performance across various AI tasks, making it a versatile system for AI workloads. The compact design of the NUC paired with powerful components makes this a great option for small to medium-scale AI applications.

#### **Hardware Specs:**
- **CPU & Motherboard**: 9th Generation Intel Core i7-9750H (NUC9i7QN Extreme Kit) – [$369.98](https://amzn.to/3WQg1uV)
- **RAM**: Crucial RAM 64GB Kit (2x32GB) DDR4 3200MHz CL22 – [$119.99](https://amzn.to/3XccY1q)
- **GPU**: MSI GeForce RTX 4060 8GB GDDR6 – [$324.99](https://amzn.to/3YTfXgy)

#### **Total Estimated Price***:  
**$814.96**

*This reflects the price for the system when I purchased it in 2024. I already had the RTX 4060 from another computer.*


## **ONNX CPU Benchmarks**

This test measures the **Intel Core i7-9850H**'s performance using the ONNX framework on a CPU backend. Despite being CPU-only, it shows solid performance in **Pose Estimation** and **Style Transfer** with quantized models.

#### **Benchmark Scores**  
- **Single Precision**: 592  
- **Half Precision**: 2,353  
- **Quantized**: 2,283  

#### **Top AI Tasks**

| **AI Task**        | **Quantized Score** | **AI Task**               | **Quantized Score** |
| ------------------ | ------------------- | ------------------------- | ------------------- |
| 1. Pose Estimation | 9.57 IPS            | 4. Depth Estimation       | 36.0 IPS            |
| 2. Style Transfer  | 13.4 IPS            | 5. Image Super-Resolution | 83.6 IPS            |
| 3. Face Detection  | 34.4 IPS            | 6. Object Detection       | 114.8 IPS           |
