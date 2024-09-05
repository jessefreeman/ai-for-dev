---
title: "Personal Computer Results"
parent: "10 Benchmarks"
order: 1
---
# Personal Computer Results

These are my personal computers that I've been benchmarking using **Geekbench AI**. This benchmarking tool provides detailed insights into how different systems perform AI-centric tasks, including image processing, object detection, and style transfer. It offers performance scores based on three types of precision: **Single Precision**, **Half Precision**, and **Quantized**. Each system's GPU and CPU capabilities are tested, and the results help me evaluate their strengths in handling various AI workloads.

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

3. #### macOS GPU Benchmarks (Core ML Framework)**

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

## Price-Performance Ratio

To help compare systems, I calculated the **Performance per $100 Spent (IPS)**. This method highlights how much performance (in terms of **IPS** or **KIPS**) you're getting for every $100 invested.

### Formula Used to Calculate Performance per $100 Spent

To calculate **Performance per $100 Spent**, I used the following formula:

`Performance per $100 Spent = (Best Task Performance (IPS) / System Price) × 100`

This gives a standardized way to compare the systems based on the amount of performance you're getting for every $100 you spend.

### GPU Performance per $100 Spent (IPS)

| **Rank** | **System**                     | **Best AI Task**       | **Best AI Task Performance (IPS)** | **Current Price** | **Performance per $100 Spent (IPS)** |
| -------- | ------------------------------ | ---------------------- | ---------------------------------- | ----------------- | ------------------------------------ |
| 1        | Ryzen 7 5800X + RTX 4070 Super | Image Super-Resolution | 2,170 IPS                          | ~$1,169.51        | ~185.6 IPS per $100                  |
| 2        | Intel NUC9V7QNX                | Image Super-Resolution | 1,370 IPS                          | ~$814.96          | ~168.1 IPS per $100                  |
| 3        | MacBook Pro M3 Max             | Image Super-Resolution | 817.9 IPS                          | ~$2,999           | ~27.3 IPS per $100                   |

### CPU Performance per $100 Spent (IPS)

| **Rank** | **System**                     | **Best AI Task**    | **Best AI Task Performance (IPS)** | **Current Price** | **Performance per $100 Spent (IPS)** |
| -------- | ------------------------------ | ------------------- | ---------------------------------- | ----------------- | ------------------------------------ |
| 1        | MacBook Pro M3 Max             | Text Classification | 6,110 IPS                          | ~$2,999           | ~203.7 IPS per $100                  |
| 2        | Ryzen 7 5800X + RTX 4070 Super | Style Transfer      | 53.4 IPS                           | ~$1,169.51        | ~4.57 IPS per $100                   |
| 3        | Intel NUC9V7QNX                | Pose Estimation     | 9.57 IPS                           | ~$814.96          | ~1.17 IPS per $100                   |

These tables provide a clear comparison of how each system performs in terms of GPU and CPU tasks, relative to its cost. This allows for an easier comparison of performance per dollar, making it more straightforward to decide which system offers the best value for AI tasks.

Here are the instructions for adding your own benchmarks to the project. This section will guide contributors on how to clone the project, perform tests, and submit their benchmark results for inclusion.


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
