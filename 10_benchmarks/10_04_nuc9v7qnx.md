# Intel NUC9V7QNX + RTX 4060 Performance Overview

The **Intel NUC9V7QNX**, paired with **64GB of Crucial DDR4 RAM** and an **MSI GeForce RTX 4060 8GB**, delivers strong performance across various AI tasks, making it a versatile system for AI workloads. The compact design of the NUC paired with powerful components makes this a great option for small to medium-scale AI applications.

#### **Hardware Specs:**
- **CPU & Motherboard**: 9th Generation Intel Core i7-9750H (NUC9i7QN Extreme Kit) – [$369.98](https://amzn.to/3WQg1uV)
- **RAM**: Crucial RAM 64GB Kit (2x32GB) DDR4 3200MHz CL22 – [$119.99](https://amzn.to/3XccY1q)
- **GPU**: MSI GeForce RTX 4060 8GB GDDR6 – [$324.99](https://amzn.to/3YTfXgy)

#### **Total Estimated Price***:  
**$814.96**

*This reflects the price for the system when I purchased it in 2024. I already had the RTX 4060 from another computer.*

---

## **ONNX DirectML Benchmarks**

This test highlights the **NVIDIA GeForce RTX 4060**'s strong performance in **Style Transfer**, **Pose Estimation**, and **Image Super-Resolution**, particularly with half and single precision models.

#### **Benchmark Scores**  
- **Single Precision**: 21,260  
- **Half Precision**: 10,609  
- **Quantized**: 13,112  

#### **Top AI Tasks**

| **AI Task**               | **Half Precision Score** | **AI Task**         | **Half Precision Score** |
| ------------------------- | ------------------------ | ------------------- | ------------------------ |
| 1. Style Transfer         | 380.2 IPS                | 4. Depth Estimation | 491.9 IPS                |
| 2. Pose Estimation        | 236.0 IPS                | 5. Object Detection | 874.2 IPS                |
| 3. Image Super-Resolution | 1.37 KIPS                | 6. Face Detection   | 240.1 IPS                |

---

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

---

## **OpenVINO CPU Benchmarks**

The **Intel Core i7-9850H** performs well in **Style Transfer**, **Face Detection**, and **Pose Estimation** using the OpenVINO framework, particularly in quantized models, demonstrating strong AI processing without GPU acceleration.

#### **Benchmark Scores**  
- **Single Precision**: 3,490  
- **Half Precision**: 4,812  
- **Quantized**: 3,434  

#### **Top AI Tasks**

| **AI Task**        | **Quantized Score** | **AI Task**               | **Quantized Score** |
| ------------------ | ------------------- | ------------------------- | ------------------- |
| 1. Style Transfer  | 32.6 IPS            | 4. Depth Estimation       | 75.0 IPS            |
| 2. Face Detection  | 109.1 IPS           | 5. Image Super-Resolution | 196.6 IPS           |
| 3. Pose Estimation | 10.6 IPS            | 6. Object Detection       | 277.4 IPS           |

