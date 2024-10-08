---
title: "Personal Computer Results"  
parent: "Benchmarks"  
nav_order: 1 
---

# Personal Computer Results

These are my personal computers that I've been benchmarking using **Geekbench AI**. This benchmarking tool provides detailed insights into how different systems perform AI-centric tasks, including image processing, object detection, and style transfer. It offers performance scores based on three types of precision: **Single Precision**, **Half Precision**, and **Quantized**. Each system's **GPU** and **CPU** capabilities are tested, and the results help evaluate their strengths in handling various AI workloads.

## The Benchmark Tests

### Windows Tests

1. #### **Windows CPU Benchmarks (ONNX Framework)**

   In these tests, I focused on the **ONNX framework** using the **CPU backend** on my Windows systems. The ONNX framework provides flexibility for deep learning models, and this test simulates the performance of CPU-bound AI tasks.

2. #### **Windows CPU Benchmarks (OpenVINO Framework)**

   Another test using the **OpenVINO framework** and the **CPU backend** on Windows systems. OpenVINO is optimized for Intel hardware, making it a strong choice for performance in inference tasks. This test helps demonstrate the effectiveness of Intel CPUs in AI workloads.

3. #### **Windows GPU Benchmarks (ONNX Framework + DirectML)**

   This test uses the **ONNX framework** with **DirectML backend**, leveraging the GPU for AI tasks. GPU tests are crucial for showing how well a system handles parallel processing in tasks like image recognition and machine learning model inference.

### macOS Tests

1. #### **macOS CPU Benchmarks (Core ML Framework)**

   Here, I tested the **Apple M3 Max** using **Core ML** with the **CPU backend**. Core ML is Apple's machine learning framework optimized for macOS, and these tests show how well Apple silicon performs when executing AI workloads directly on the CPU.

2. #### **macOS Neural Engine Benchmarks (Core ML Framework)**

   I also benchmarked **Apple's Neural Engine** using **Core ML**. The Neural Engine is optimized for fast AI inference, and this test showcases its ability to perform AI tasks efficiently, particularly in tasks like object detection and style transfer.

3. #### **macOS GPU Benchmarks (Core ML Framework)**

   Lastly, I tested the **Apple M3 Max's GPU** using **Core ML**. This benchmark shows how Apple's GPU handles AI workloads that benefit from parallel processing, particularly tasks like image super-resolution and pose estimation.

## Understanding the Tests

The **Geekbench AI** benchmark tests systems on various real-world AI workloads. Here's a breakdown of the types of tests and why they're important:

1. **Style Transfer**: Transfers artistic styles between images, important for creative AI tasks like photo editing and art generation.
2. **Object Detection**: Detects and identifies objects in images and videos, used in applications like security, autonomous vehicles, and AR.
3. **Pose Estimation**: Estimates the positions of people or objects in images, crucial for motion tracking, fitness apps, and animation.
4. **Image Super-Resolution**: Enhances image resolution, used in fields like photography and medical imaging to improve visual clarity.
5. **Image Classification**: Categorizes images by identifying their contents, vital for tasks like facial recognition and photo organization.
6. **Face Detection**: Identifies faces within images or video, critical for security systems and user identification.
7. **Depth Estimation**: Measures the distance of objects in a scene, essential for 3D modeling and AR/VR.
8. **Text Classification**: Classifies blocks of text by type or topic, important in language processing tasks like spam detection.
9. **Machine Translation**: Translates text between languages, crucial for chatbots, document translation, and multilingual communication.
10. **Image Segmentation**: Splits an image into meaningful segments for analysis, widely used in medical imaging and autonomous driving.

## Benchmark Results

This section provides detailed results from the Geekbench AI tests on my personal computers. The tables below show the Single Precision scores for each system. The systems are ranked based on their Single Precision Benchmark scores, providing an overview of their AI performance capabilities.

### GPU Performance

| **Rank** | **System**                     | **RAM**         | **GPU**                           | **VRAM**  | **Single Precision Benchmark** |
| -------- | ------------------------------ | --------------- | --------------------------------- | --------- | ------------------------------ |
| 1        | [Ryzen 7 5800X + RTX 4070 Super](./10_02_ryzen_7_4070s..md)  | 32 GB DDR4      | NVIDIA GeForce RTX 4070 Super     | 12 GB     | 37,950                          |
| 2        | [ASUS ProArt P16](./10_05_asus_proart_p16.md)                 | 32 GB DDR5      | NVIDIA GeForce RTX 4070 Laptop    | 8 GB      | 31,754                          |
| 3        | [Intel NUC9V7QNX](./10_04_nuc9v7qnx.md)                 | 64 GB DDR4      | NVIDIA GeForce RTX 4060           | 8 GB      | 13,705                          |
| 4        | [MacBook Pro M3 Max](./10_03_m3_max.md)              | 36 GB Unified   | 30-core GPU                       | Unified   | 13,358                          |
| 5        | [ASUS ROG Zephyrus G15](./10_06_asus_zephyrus_g15.md)           | 16 GB DDR5      | NVIDIA GeForce RTX 3060           | 6 GB      | 12,848                          |
| 6        | [MacBook Air M2 (2022)](./10_07_m2_air.md)           | 16 GB Unified   | Apple M2 8-core GPU               | Unified   | 5,419                           |


### CPU Performance

| **Rank** | **System**                     | **RAM**         | **CPU**                        | **Single Precision Benchmark** |
| -------- | ------------------------------ | --------------- | ----------------------------- | ------------------------------ |
| 1        | [MacBook Pro M3 Max](./10_03_m3_max.md)              | 36 GB Unified   | Apple M3 Max 14-core CPU       | 5,356                           |
| 2        | [ASUS ProArt P16](./10_05_asus_proart_p16.md)                 | 32 GB DDR5      | AMD Ryzen AI 9 HX 370          | 5,295                           |
| 3        | [Ryzen 7 5800X + RTX 4070 Super](./10_02_ryzen_7_4070s..md)  | 32 GB DDR4      | AMD Ryzen 7 5800X              | 4,991                           |
| 4        | [ASUS ROG Zephyrus G15](./10_06_asus_zephyrus_g15.md)           | 16 GB DDR5      | AMD Ryzen 9 6900HS             | 4,219                           |
| 5        | [Intel NUC9V7QNX](./10_04_nuc9v7qnx.md)                 | 64 GB DDR4      | Intel Core i7-9850H            | 3,434                           |
| 6        | [MacBook Air M2 (2022)](./10_07_m2_air.md)           | 16 GB Unified   | Apple M2 8-core CPU            | 3,214                           |

---

To submit your own benchmarks, clone the repository, create a new branch, and run your tests using Geekbench AI or another benchmarking tool. Add your system’s results using the template provided, including details like CPU, GPU, RAM, and your Single Precision, Half Precision, and Quantized scores. After committing your changes, push the branch to GitHub and open a pull request with a clear description of your submission.

### **[System Name] | [Framework] | [Backend] Benchmarks**

[Provide a brief summary of your system’s performance. Describe the strengths and performance highlights from the tests.]

#### **System Specs**

- **CPU**: [Name]  
- **Motherboard**: [Name]  
- **RAM**: [Size and Type]  
- **GPU**: [Name and VRAM]  

Total Price: [Current Price]

#### **Benchmark Scores**

- **Single Precision**: [Score]  
- **Half Precision**: [Score]  
- **Quantized**: [Score]  

#### **Top AI Tasks**

| **AI Task**    | **Performance (IPS)** | **AI Task**    | **Performance (IPS)** |
| -------------- | --------------------- | -------------- | --------------------- |
| 1. [Task Name] | [Score]               | 4. [Task Name] | [Score]               |
| 2. [Task Name] | [Score]               | 5. [Task Name] | [Score]               |
| 3. [Task Name] | [Score]               | 6. [Task Name] | [Score]               |
