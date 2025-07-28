---
title: "Model Size and Memory"
parent: "Hardware Requirements"
nav_order: 3
---

# Model Size and Memory

LLMs, have specific storage requirements when they are saved on disk and distinct memory usage characteristics when loaded into a computer’s RAM. Understanding these differences is crucial for optimizing their performance on various systems.

## Model Storage Size

When we talk about the size of a model, we are generally referring to the amount of disk space it occupies when stored on your computer. This size is a fixed quantity and is the same regardless of whether you are using macOS, Windows, or Linux. The model’s storage size is determined by the number of parameters (the weights and biases) it contains, as well as the precision of these parameters. For example, models that use 16-bit floating-point precision will be larger than those that use 8-bit quantization.

While the model file size is consistent across different operating systems, it is important to note that the size on disk does not necessarily reflect the memory usage when the model is loaded. The storage size gives you an idea of how much space you need on your hard drive to store the model but doesn’t fully account for the runtime memory requirements.

## Models in Memory

When an LLM is loaded into memory (RAM) for inferencing, the memory usage can exceed the model’s storage size. This is due to several factors, including how the operating system manages memory and the additional resources required to actually run the model. Memory usage can also be influenced by the runtime environment, such as the libraries and dependencies used to manage the model.

For example, when a model is loaded, the entire set of weights needs to be accessible in memory, and additional memory is required for managing the data structures that facilitate the model's operation. Depending on how efficiently the model and its runtime environment are implemented, memory usage can vary slightly between different operating systems.

Furthermore, as the model processes inputs (during inferencing), temporary memory allocations are made for intermediate computations. This means that, particularly for large models, you need more available RAM than the model’s file size might suggest.
