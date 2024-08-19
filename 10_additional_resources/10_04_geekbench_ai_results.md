# Personal Computer Results**

From my observations, GPUs like the RTX 4070 SUPER and the MacBook Pro M3 Max’s GPU excel in AI tasks such as **Style Transfer**, **Object Detection**, and **Pose Estimation** due to their strong parallel processing. The MacBook’s Neural Engine offers a good balance of speed and efficiency, outperforming CPUs in some tasks. While CPUs like the Ryzen 7 5800X handle lighter workloads well, they lag behind in more demanding jobs. I’ve found that quantized models perform consistently well across all systems, making them ideal for faster processing with minimal loss in accuracy. For complex AI tasks, I recommend prioritizing GPUs.

---

## **1. Ryzen 7 5800X + RTX 4070 Super | ONNX | GPU Benchmarks**

[This benchmark](https://browser.geekbench.com/ai/v1/27972) evaluates the performance of the NVIDIA GeForce RTX 4070 SUPER using the ONNX framework and DirectML backend, focusing on AI task efficiency with single precision, half precision, and quantized models.

### **Benchmark Scores**  

The AI benchmarks were run using the ONNX framework on a GPU backend. Below are the Geekbench AI scores:

- **Single Precision**: 37,950  
- **Half Precision**: 19,608  
- **Quantized**: 25,495  

### **System Specs**  

- **Estimated Total Price**: ~$1,310

### **Top AI Tasks**

| **AI Task**               | **Half Precision Score** | **AI Task**         | **Half Precision Score** |
| ------------------------- | ------------------------ | ------------------- | ------------------------ |
| 1. Pose Estimation        | 476.0 IPS                | 4. Depth Estimation | 863.3 IPS                |
| 2. Style Transfer         | 880.8 IPS                | 5. Face Detection   | 481.6 IPS                |
| 3. Image Super-Resolution | 2.17 KIPS                | 6. Object Detection | 1.38 KIPS                |

---

## **2. MacBook Pro M3 Max | Core ML | Neural Engine Benchmarks**

[This benchmark](https://browser.geekbench.com/ai/v1/27953) evaluates the performance of the Apple M3 Max using the Core ML framework on the Neural Engine backend, focusing on AI task efficiency with single precision, half precision, and quantized models.

### **Benchmark Scores**  

The AI benchmarks were run using the Core ML framework on a Neural Engine backend. Below are the Geekbench AI scores:

- **Single Precision**: 13,410  
- **Half Precision**: 13,896  
- **Quantized**: 2,457  

### **System Specs**  

- **Estimated Total Price**: ~$4,199

### **Top AI Tasks**

| **AI Task**         | **Half Precision Score** | **AI Task**               | **Half Precision Score** |
| ------------------- | ------------------------ | ------------------------- | ------------------------ |
| 1. Pose Estimation  | 120.1 IPS                | 4. Depth Estimation       | 460.6 IPS                |
| 2. Style Transfer   | 191.7 IPS                | 5. Image Super-Resolution | 712.5 IPS                |
| 3. Object Detection | 755.7 IPS                | 6. Face Detection         | 150.6 IPS                |

---

## **3. MacBook Pro M3 Max | Core ML | GPU Benchmarks**

[This benchmark](https://browser.geekbench.com/ai/v1/27948) evaluates the performance of the Apple M3 Max using the Core ML framework on the GPU backend, focusing on AI task efficiency with single precision, half precision, and quantized models.

### **Benchmark Scores**  

The AI benchmarks were run using the Core ML framework on a GPU backend. Below are the Geekbench AI scores:

- **Single Precision**: 13,358  
- **Half Precision**: 12,570  
- **Quantized**: 13,411  

### **System Specs**  

- **Estimated Total Price**: ~$4,199

### **Top AI Tasks**

| **AI Task**         | **Half Precision Score** | **AI Task**               | **Half Precision Score** |
| ------------------- | ------------------------ | ------------------------- | ------------------------ |
| 1. Style Transfer   | 203.2 IPS                | 4. Depth Estimation       | 261.7 IPS                |
| 2. Face Detection   | 313.7 IPS                | 5. Image Super-Resolution | 817.9 IPS                |
| 3. Object Detection | 557.2 IPS                | 6. Pose Estimation        | 81.0 IPS                 |

---

## **4. Ryzen 7 5800X | OpenVINO | CPU Benchmarks**

[This benchmark](https://browser.geekbench.com/ai/v1/27985) evaluates the performance of the Ryzen 7 5800X CPU using the OpenVINO framework, focusing on AI task efficiency with quantized models.

### **Benchmark Scores**  

The AI benchmarks were run using the OpenVINO framework on a CPU backend. Below are the Geekbench AI scores:

- **Single Precision**: 5,019  
- **Half Precision**: 7,593  
- **Quantized**: 15,148  

### **System Specs**  

- **Estimated Total Price**: ~$710

### **Top AI Tasks**

| **AI Task**               | **Quantized Score** | **AI Task**         | **Quantized Score** |
| ------------------------- | ------------------- | ------------------- | ------------------- |
| 1. Style Transfer         | 53.4 IPS            | 4. Depth Estimation | 125.1 IPS           |
| 2. Face Detection         | 180.6 IPS           | 5. Object Detection | 432.3 IPS           |
| 3. Image Super-Resolution | 299.5 IPS           | 6. Pose Estimation  | 17.1 IPS            |

---

## **5. MacBook Pro M3 Max | Core ML | CPU Benchmarks**

[This benchmark](https://browser.geekbench.com/ai/v1/27947) evaluates the performance of the Apple M3 Max using the Core ML framework on a CPU backend, focusing on AI task efficiency with single precision, half precision, and quantized models.

### **Benchmark Scores**  

The AI benchmarks were run using the Core ML framework on a CPU backend. Below are the Geekbench AI scores:

- **Single Precision**: 5,356  
- **Half Precision**: 4,472  
- **Quantized**: 3,841  

### **System Specs**  

- **Estimated Total Price**: ~$4,199

### **Top AI Tasks**

| **AI Task**            | **Half Precision Score** | **AI Task**               | **Half Precision Score** |
| ---------------------- | ------------------------ | ------------------------- | ------------------------ |
| 1. Style Transfer      | 37.9 IPS                 | 4. Depth Estimation       | 75.5 IPS                 |
| 2. Pose Estimation     | 19.3 IPS                 | 5. Object Detection       | 205.0 IPS                |
| 3. Text Classification | 6.11 KIPS                | 6. Image Super-Resolution | 181.3 IPS                |

---

## **6. Ryzen 7 5800X | ONNX | CPU Benchmarks**

[This benchmark](https://browser.geekbench.com/ai/v1/27967) evaluates the performance of the Ryzen 7 5800X CPU using the ONNX framework on a CPU backend, focusing on AI task efficiency with single precision, half precision, and quantized models.

### **Benchmark Scores**  

The AI benchmarks were run using the ONNX framework on a CPU backend. Below are the Geekbench AI scores:

- **Single Precision**: 884  
- **Half Precision**: 3,313  
- **Quantized**: 3,582  

### **System Specs**  

- **Estimated Total Price**: ~$710

### **Top AI Tasks**

| **AI Task**               | **Quantized Score** | **AI Task**         | **Quantized Score** |
| ------------------------- | ------------------- | ------------------- | ------------------- |
| 1. Pose Estimation        | 15.2 IPS            | 4. Depth Estimation | 44.5 IPS            |
| 2. Image Classification   | 728.1 IPS           | 5. Face Detection   | 42.2 IPS            |
| 3. Image Super-Resolution | 116.6 IPS           | 6. Object Detection | 175.9 IPS           |

