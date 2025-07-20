---
title: "**MINISFORUM BD790i with AMD Ryzen 9 7945HX + NVIDIA GeForce RTX 4070 SUPER Performance Overview**"
parent: "Benchmarks"
nav_order: 8
---
---
title: "MINISFORUM AMD Ryzen 9"  
parent: "Benchmarks"  
nav_order: 8
---

# **MINISFORUM BD790i with AMD Ryzen 9 7945HX + NVIDIA GeForce RTX 4070 SUPER Performance Overview**

The **MINISFORUM BD790i**, powered by the **AMD Ryzen 9 7945HX** and paired with the **NVIDIA GeForce RTX 4070 SUPER** and **96 GB of Crucial RAM**, delivers excellent AI performance across a range of workloads. The system excels in tasks like **Style Transfer**, **Pose Estimation**, and **Object Detection**, utilizing the power of the **RTX 4070 SUPER** to handle high-precision AI tasks efficiently.

## **Hardware Specs**

- **CPU**: AMD Ryzen 9 7945HX, 16 cores (2.50 GHz) - [$479.99](https://amzn.to/4dUBXeU)
- **RAM**: 96 GB Crucial RAM - [$224.99](https://amzn.to/4hmtsfF)
- **GPU**: NVIDIA GeForce RTX 4070 SUPER 12GB GDDR6X Founders Edition – [$653.24](https://amzn.to/3SWia6Z)

**Estimated Total Price (2024)**: $1,358.22  
This reflects the current price for the system's components as of 2024.

## **Price-to-Performance**: 2,048.2 per $100

The **MINISFORUM BD790i** achieves a price-to-performance ratio of **2,048.2 per $100**, based on its overall single precision GPU benchmark score of **27,830**.

> **Price-to-Performance Calculation:**  
> The price-to-performance ratio is calculated by dividing the single precision GPU benchmark score by the system price, then multiplying by 100.  
> Calculation: (27830 / 1358.22) × 100 ≈ **2,048.2 per $100**

---

## **DirectML GPU Benchmarks**

This benchmark highlights the performance of the **NVIDIA GeForce RTX 4070 SUPER** in various AI tasks, especially excelling in **Style Transfer** and **Pose Estimation**. The GPU delivers high precision and speed across a range of AI workloads.

[View the full benchmark test here](https://browser.geekbench.com/ai/v1/81278).

### **Benchmark Scores**

- **Single Precision**: 27,830  
- **Half Precision**: 42,004  
- **Quantized**: 21,032  

### **Top AI Tasks (Single Precision)**

| **AI Task**              | **Score** | **IPS** | **AI Task**              | **Score** | **IPS** |
|--------------------------|-----------|---------|--------------------------|-----------|---------|
| 1. Style Transfer         | 300,545   | 386.4   | 4. Depth Estimation       | 64,984    | 500.7   |
| 2. Pose Estimation        | 168,006   | 196.0   | 5. Face Detection         | 34,754    | 412.9   |
| 3. Image Segmentation     | 18,500    | 299.9   | 6. Object Detection       | 13,323    | 1.06 KIPS |

---

## **ONNX CPU Benchmarks**

This test focuses on the **AMD Ryzen 9 7945HX** CPU, measuring its performance in AI workloads. The CPU delivers competent results in both single and quantized precision tasks, with strong performance in **Style Transfer** and **Pose Estimation**. However, it is less efficient than the GPU in handling intensive AI workloads.

[View the full benchmark test here](https://browser.geekbench.com/ai/v1/81273).

### **Benchmark Scores**

- **Single Precision**: 4,082  
- **Half Precision**: 1,724  
- **Quantized**: 4,938  

### **Top AI Tasks (Single Precision)**

| **AI Task**              | **Score** | **IPS** | **AI Task**              | **Score** | **IPS** |
|--------------------------|-----------|---------|--------------------------|-----------|---------|
| 1. Style Transfer         | 26,690    | 34.3    | 4. Pose Estimation        | 13,997    | 16.3    |
| 2. Depth Estimation       | 9,027     | 69.5    | 5. Object Detection       | 2,293     | 181.9   |
| 3. Image Segmentation     | 2,283     | 37.0    | 6. Face Detection         | 3,397     | 40.4    |

---

## **OpenVINO CPU Benchmarks**

In this test using the **OpenVINO Backend**, the **AMD Ryzen 9 7945HX** demonstrates balanced performance across various tasks, excelling in **Style Transfer**, **Face Detection**, and **Object Detection**. The quantized results are especially impressive, indicating that the system can handle tasks requiring high precision at greater efficiency.

[View the full benchmark test here](https://browser.geekbench.com/ai/v1/81280).

### **Benchmark Scores**

- **Single Precision**: 8,157  
- **Half Precision**: 8,260  
- **Quantized**: 18,444  

### **Top AI Tasks (Single Precision)**

| **AI Task**              | **Score** | **IPS** | **AI Task**              | **Score** | **IPS** |
|--------------------------|-----------|---------|--------------------------|-----------|---------|
| 1. Style Transfer         | 37,133    | 47.7    | 4. Object Detection       | 5,004     | 397.0   |
| 2. Pose Estimation        | 14,228    | 16.6    | 5. Depth Estimation       | 14,244    | 109.7   |
| 3. Image Classification   | 4,500     | 836.8   | 6. Face Detection         | 13,532    | 160.8   |

---

## **Final Summary**

The **MINISFORUM BD790i** offers outstanding AI performance across different backends. With the **NVIDIA GeForce RTX 4070 SUPER**, the system shines in tasks such as **Style Transfer**, **Pose Estimation**, and **Depth Estimation**, delivering high precision and speed. The **AMD Ryzen 9 7945HX** CPU supports strong performance in quantized tasks, especially in configurations using the **OpenVINO** and **ONNX** backends. Overall, this system is a powerhouse for AI workloads, combining exceptional GPU and CPU capabilities for a wide range of AI applications.
