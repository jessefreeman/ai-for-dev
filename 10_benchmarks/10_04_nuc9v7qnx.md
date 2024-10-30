---
title: "Intel NUC9V7QNX"  
parent: "Benchmarks"  
nav_order: 4  
---

# Intel NUC9V7QNX + NVIDIA GeForce RTX 4060 Performance Overview

The **Intel NUC9i7QN Extreme Kit**, powered by the **Intel Core i7-9850H** and paired with the **MSI GeForce RTX 4060**, delivers capable AI performance across a variety of workloads. The system’s **64 GB of Crucial RAM** provides additional memory bandwidth for handling AI tasks such as **Style Transfer**, **Pose Estimation**, and **Object Detection**. The **RTX 4060 GPU** significantly enhances AI task efficiency, particularly in GPU-accelerated workloads.

## **Hardware Specs**

- **CPU & Motherboard**: 9th Generation Intel Core i7-9750H (NUC9i7QN Extreme Kit) – [$369.98](https://amzn.to/3WQg1uV)
- **RAM**: Crucial RAM 64GB Kit (2x32GB) DDR4 3200MHz CL22 – [$119.99](https://amzn.to/3XccY1q)
- **GPU**: MSI GeForce RTX 4060 8GB GDDR6 – [$324.99](https://amzn.to/3YTfXgy)

**Estimated Total Price (2024)**: $814.96  
This reflects current pricing for the system’s components.

## **Price-to-Performance**: 1,608.9 per $100

The **Intel NUC9i7QN Extreme Kit** achieves a price-to-performance ratio of **1,608.9 per $100**, based on its overall single precision GPU benchmark score of **13,112**.

> **Price-to-Performance Calculation:**  
> The price-to-performance ratio is calculated by dividing the single precision GPU benchmark score by the system price, then multiplying by 100.  
> Calculation: (13112 / 814.96) × 100 ≈ **1,608.9 per $100**

---

## **DirectML GPU Benchmarks**

This benchmark measures the performance of the **MSI GeForce RTX 4060**, showcasing its capabilities in tasks such as **Style Transfer**, **Pose Estimation**, and **Object Detection**. The **RTX 4060** handles AI tasks with solid scores in both single and half precision tasks, making it an efficient solution for AI-driven workloads.

[View the full benchmark test here](https://browser.geekbench.com/ai/v1/29226).

### **Benchmark Scores**

- **Single Precision**: 13,112  
- **Half Precision**: 21,260  
- **Quantized**: 10,609  

### **Top AI Tasks (Single Precision)**

| **AI Task**              | **Score** | **IPS** | **AI Task**              | **Score** | **IPS** |
|--------------------------|-----------|---------|--------------------------|-----------|---------|
| 1. Style Transfer         | 131,019   | 168.4   | 4. Depth Estimation       | 33,634    | 259.1   |
| 2. Pose Estimation        | 81,721    | 95.4    | 5. Face Detection         | 14,555    | 172.9   |
| 3. Image Segmentation     | 7,948     | 128.9   | 6. Object Detection       | 6,349     | 503.6   |

---

## **ONNX CPU Benchmarks**

This test evaluates the AI performance of the **Intel Core i7-9850H CPU**, demonstrating adequate results in tasks such as **Style Transfer** and **Depth Estimation**. While the CPU performs reasonably well, it lacks the speed and throughput of the GPU for AI-intensive workloads.

[View the full benchmark test here](https://browser.geekbench.com/ai/v1/29215).

### **Benchmark Scores**

- **Single Precision**: 2,283  
- **Half Precision**: 592  
- **Quantized**: 2,353  

### **Top AI Tasks (Single Precision)**

| **AI Task**              | **Score** | **IPS** | **AI Task**              | **Score** | **IPS** |
|--------------------------|-----------|---------|--------------------------|-----------|---------|
| 1. Style Transfer         | 11,136    | 14.3    | 4. Depth Estimation       | 4,921     | 37.9    |
| 2. Pose Estimation        | 4,104     | 4.79    | 5. Face Detection         | 1,927     | 22.9    |
| 3. Image Classification   | 1,306     | 242.9   | 6. Object Detection       | 1,577     | 125.1   |

---

## **OpenVINO CPU Benchmarks**

This benchmark, using the **OpenVINO Backend**, demonstrates the performance of the **Intel Core i7-9850H** in AI tasks, showing particularly strong results in **Style Transfer** and **Object Detection**. The system also performs well in quantized tasks, offering good efficiency in low-precision AI workloads.

[View the full benchmark test here](https://browser.geekbench.com/ai/v1/29230).

### **Benchmark Scores**

- **Single Precision**: 3,434  
- **Half Precision**: 3,490  
- **Quantized**: 4,812  

### **Top AI Tasks (Single Precision)**

| **AI Task**              | **Score** | **IPS** | **AI Task**              | **Score** | **IPS** |
|--------------------------|-----------|---------|--------------------------|-----------|---------|
| 1. Style Transfer         | 13,703    | 17.6    | 4. Depth Estimation       | 6,084     | 46.9    |
| 2. Pose Estimation        | 4,726     | 5.51    | 5. Face Detection         | 4,126     | 49.0    |
| 3. Image Classification   | 2,141     | 398.2   | 6. Object Detection       | 2,210     | 175.3   |

---

## **Final Summary**

The **Intel NUC9i7QN Extreme Kit**, with the **Intel Core i7-9850H** and **MSI GeForce RTX 4060**, delivers a solid balance of AI performance across GPU and CPU workloads. The **RTX 4060** shines in GPU-accelerated tasks like **Style Transfer** and **Pose Estimation**, while the **Intel Core i7-9850H** performs well in lower-precision AI tasks. Overall, this system is a versatile AI workstation, capable of handling a wide range of AI tasks efficiently.