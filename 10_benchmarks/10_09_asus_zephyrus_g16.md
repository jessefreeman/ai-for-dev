---
title: "**ASUS ROG Zephyrus G16 Intel Core Ultra 9 185H + NVIDIA GeForce RTX 4090 Performance Overview**"
parent: "Benchmarks"
nav_order: 9
---
---
title: "ASUS Zephyrus G16"  
parent: "Benchmarks"  
nav_order: 9
---

# **ASUS ROG Zephyrus G16 Intel Core Ultra 9 185H + NVIDIA GeForce RTX 4090 Performance Overview**
The **ASUS ROG Zephyrus G16**, equipped with the **Intel Core Ultra 9 185H** and **NVIDIA GeForce RTX 4090 Laptop GPU**, provides robust AI performance across a variety of tasks. With **32 GB of RAM**, it performs exceptionally in demanding applications such as **Style Transfer**, **Pose Estimation**, and **Depth Estimation**. The **RTX 4090** is ideal for GPU-driven AI workloads, while the **Intel Core Ultra 9 185H** CPU and **Intel AI Boost NPU** add flexibility for CPU and NPU-optimized tasks. 

---

## **Hardware Specs**

- **CPU**: Intel Core Ultra 9 185H, 16 cores (2.50 GHz)
- **RAM**: 32 GB
- **GPU**: NVIDIA GeForce RTX 4090 Laptop GPU
- **NPU**: Intel AI Boost

**Estimated Total Price (2024)**: [$2,564.99](https://amzn.to/4e5ioQX) (open box at Best Buy)  


## **Price-to-Performance**: 877 per $100

The **ASUS ROG Zephyrus G16** achieves a price-to-performance ratio of **877 per $100**, based on its overall single precision GPU benchmark score of **22,486** with the **NVIDIA GeForce RTX 4090**.

> **Price-to-Performance Calculation**:  
> The price-to-performance ratio is calculated by dividing the single precision GPU benchmark score by the system price, then multiplying by 100.  
> Calculation: (22486 / 2564.99) × 100 ≈  **877 per $100**

---

## **DirectML GPU Benchmarks – NVIDIA GeForce RTX 4090**

This benchmark highlights the **NVIDIA GeForce RTX 4090 Laptop GPU**, showcasing its powerful AI processing capabilities, especially in single and half precision tasks that are critical for demanding AI workloads.

[View the full benchmark test here](https://browser.geekbench.com/ai/v1/88799).

### **Benchmark Scores**

- **Single Precision**: 22,486  
- **Half Precision**: 33,742  
- **Quantized**: 17,513  

### **Top AI Tasks (Single Precision)**

| **AI Task**              | **Score** | **IPS** | **AI Task**              | **Score** | **IPS** |
|--------------------------|-----------|---------|--------------------------|-----------|---------|
| 1. Style Transfer         | 274,854   | 353.3   | 4. Depth Estimation       | 53,354    | 411.1   |
| 2. Pose Estimation        | 147,014   | 171.5   | 5. Image Segmentation     | 14,333    | 232.3   |
| 3. Face Detection         | 29,595    | 351.7   | 6. Object Detection       | 10,798    | 856.5   |

---

## **ONNX CPU Benchmarks – Intel Core Ultra 9 185H**

This ONNX-based benchmark measures the **Intel Core Ultra 9 185H** CPU’s AI performance, which is strong in single and quantized precision tasks, with particularly notable results in **Style Transfer** and **Depth Estimation**. However, the GPU significantly outperforms the CPU in higher-demand AI applications.

[View the full benchmark test here](https://browser.geekbench.com/ai/v1/92641).

### **Benchmark Scores**

- **Single Precision**: 3,076  
- **Half Precision**: 1,342  
- **Quantized**: 3,875  

### **Top AI Tasks (Single Precision)**

| **AI Task**              | **Score** | **IPS** | **AI Task**              | **Score** | **IPS** |
|--------------------------|-----------|---------|--------------------------|-----------|---------|
| 1. Style Transfer         | 14,709    | 18.9    | 4. Face Detection         | 3,679     | 43.7    |
| 2. Depth Estimation       | 6,919     | 53.3    | 5. Object Detection       | 2,007     | 159.2   |
| 3. Pose Estimation        | 6,248     | 7.29    | 6. Image Segmentation     | 1,351     | 21.9    |

---

## **OpenVINO CPU Benchmarks – Intel Core Ultra 9 185H**

This benchmark uses the **OpenVINO Backend** to evaluate the CPU’s AI performance. While the **Intel Core Ultra 9 185H** performs reasonably in quantized tasks, it is notably outpaced by the dedicated **RTX 4090 GPU** for complex AI workloads.

[View the full benchmark test here](https://browser.geekbench.com/ai/v1/88808).

### **Benchmark Scores**

- **Single Precision**: 3,009  
- **Half Precision**: 2,992  
- **Quantized**: 7,794  

### **Top AI Tasks (Single Precision)**

| **AI Task**              | **Score** | **IPS** | **AI Task**              | **Score** | **IPS** |
|--------------------------|-----------|---------|--------------------------|-----------|---------|
| 1. Style Transfer         | 12,429    | 16.0    | 4. Face Detection         | 5,464     | 64.9    |
| 2. Pose Estimation        | 4,797     | 5.60    | 5. Object Detection       | 1,737     | 137.8   |
| 3. Depth Estimation       | 5,178     | 39.9    | 6. Image Segmentation     | 2,705     | 43.8    |

---

## **OpenVINO NPU Benchmarks – Intel AI Boost**

This OpenVINO-based benchmark evaluates the **Intel AI Boost NPU** on the **ASUS ROG Zephyrus G16** for its AI processing capabilities, where it demonstrates high quantized performance, making it particularly effective for AI tasks benefiting from optimized quantized precision.

**Important Note**: To maximize NPU performance, it is recommended to install the latest drivers from [Intel’s website](https://www.intel.com/content/www/us/en/download/794734/intel-npu-driver-windows.html). Detailed installation instructions are available in the [Intel Release Notes](https://downloadmirror.intel.com/835602/NPU_Win_Release_Notes_v3053.pdf).

[View the full benchmark test here](https://browser.geekbench.com/ai/v1/92644).

### **Benchmark Scores**

- **Single Precision**: 3,124  
- **Half Precision**: 8,184  
- **Quantized**: 11,822  

### **Top AI Tasks (Single Precision)**

| **AI Task**              | **Score** | **IPS** | **AI Task**              | **Score** | **IPS** |
|--------------------------|-----------|---------|--------------------------|-----------|---------|
| 1. Style Transfer         | 14,834    | 19.1    | 4. Depth Estimation       | 5,498     | 42.4    |
| 2. Pose Estimation        | 5,267     | 6.15    | 5. Object Detection       | 1,822     | 144.5   |
| 3. Face Detection         | 5,696     | 67.7    | 6. Image Segmentation     | 2,540     | 41.2    |

---

## **Intel Arc Graphics Benchmark (ONNX)**

The **Intel Arc Graphics** integrated graphics benchmark provides basic AI processing capabilities suitable for lower-intensity tasks, with a notable focus on **Style Transfer** and **Depth Estimation**. However, the **RTX 4090** outperforms it in higher-demand AI tasks.

[View the full benchmark test here](https://browser.geekbench.com/ai/v1/88804).

### **Benchmark Scores**

- **Single Precision**: 2,614  
- **Half Precision**: 1,056  
- **Quantized**: 2,045  

### **Top AI Tasks (Single Precision)**

| **AI Task**              | **Score** | **IPS** | **AI Task**               | **Score** | **IPS** |
|--------------------------|-----------|---------|---------------------------|-----------|---------|
| 1. Style Transfer        | 33,724    | 43.4    | 4. Depth Estimation       | 5,954     | 45.9    |
| 2. Pose Estimation       | 11,926    | 13.9    | 5. Image Segmentation     | 1,353     | 21.9    |
| 3. Image Super-Resolution| 5,718     | 211.2   | 6. Face Detection         | 1,263     | 15.0    |

--- 

## **Final Summary**

The **ASUS ROG Zephyrus G16** with **Intel Core Ultra 9 185H**, **NVIDIA GeForce RTX 4090**, and **Intel AI Boost NPU** offers outstanding AI performance, particularly in **Style Transfer**, **Pose Estimation**, and **Depth Estimation**. The **RTX 4090** provides efficient, high-throughput GPU processing for complex tasks, while the **Intel Core Ultra 9 185H** CPU delivers balanced performance for moderate AI workloads. Additionally, the **Intel AI Boost NPU** enhances efficiency in quantized precision tasks, making the system highly adaptable for a range of AI applications. This setup is an excellent choice for users requiring both GPU and CPU-NPU AI processing capabilities in a mobile, high-performance form factor.
