# Pick the Right Model for Your Memory

When running local language models (LLMs), it's crucial to choose a model that matches your system's capabilities. Models typically come in standard sizes like 8B and 70B, which refer to the number of parameters or the complexity of the model. The more parameters a model has, the more detailed and nuanced its outputs can be, but this also requires more memory and processing power.

The most common sizes you'll encounter are 8B and 70B, which are typically the officially supported versions in many open-source communities. These sizes are designed to work well on consumer-grade hardware, with 8B models being optimized for systems with more modest resources, and 70B models catering to more advanced setups with significant memory and processing capacity.

While these official sizes are the most reliable, you may also come across custom variations like 13B or 34B. These versions are often created by community members or other developers who modify the original models to fit specific needs. While these custom versions can offer additional capabilities or optimizations, they may also come with challenges in terms of compatibility, validation, and resource requirements.

The following table provides a guide to help you select the appropriate model variation based on your system's available memory. It includes key details such as memory usage, the resources required, and the expected speed. This should serve as a reference point when deciding which model to run on your local setup.

| **System Memory** | **Model Variation** | **Memory Usage** | **Resources Required** | **Speed** | **Notes**                                                    |
| ----------------- | ------------------- | ---------------- | ---------------------- | --------- | ------------------------------------------------------------ |
| **8 GB**          | Model-8B-Q3_K_L     | ~4 GB            | Low                    | Fast      | Best for systems with very limited memory, providing decent performance and speed for general tasks. |
|                   | Model-8B-Q5_K_M     | ~6 GB            | Moderate               | Moderate  | Balances performance and precision, suitable for more detailed tasks within the 8 GB limit. |
|                   | Model-8B-Q6_K       | ~7 GB            | High                   | Moderate  | Higher precision, ideal for more detailed tasks while nearing the 8 GB memory cap. |
| **16 GB**         | Model-13B-Q4_K_M    | ~8 GB            | Low                    | Moderate  | Suitable for systems with 16 GB, balancing precision and performance effectively. |
|                   | Model-13B-Q5_K_M    | ~10 GB           | Moderate               | Moderate  | Closer to the upper end of 16 GB, offering more precision for complex tasks. |
|                   | Model-13B-Q6_K_S    | ~14-16 GB        | High                   | Slower    | Nears the 16 GB limit, offering maximum precision and detail for demanding tasks. |
| **32 GB**         | Model-34B-Q5_K_S    | ~18 GB           | Low                    | Moderate  | Good for systems around 16-32 GB, providing high precision and detailed outputs without using all available memory. |
|                   | Model-34B-Q6_K_M    | ~24 GB           | Moderate               | Moderate  | High precision, nearing the upper end of 32 GB, making it suitable for detailed and demanding tasks. |
|                   | Model-34B-Q8_0      | ~28-32 GB        | High                   | Slower    | Pushes the 32 GB limit, offering top-tier performance and precision for complex tasks. |
| **64 GB+**        | Model-70B-IQ2_M     | ~22 GB           | Low                    | Moderate  | Suitable for systems with more memory, balancing GPU offload and high precision while not fully utilizing 64 GB. |
|                   | Model-70B-Q4_K_S    | ~35 GB           | Moderate               | Moderate  | Fits well within 64 GB systems, offering higher precision and detailed outputs while utilizing a significant portion of memory. |
|                   | Model-70B-Q6_K_S    | ~40 GB           | High                   | Slower    | Requires 64 GB or more, providing the highest precision and performance but with slower speeds. |

As you can see, these models span a range of memory footprints, from more lightweight options to those requiring significant resources. Based on their memory usage and performance characteristics, they can be grouped into three distinct categories:

1. **Lightweight Models (4 GB - 8 GB)**: These are ideal for systems with limited memory, offering good performance for general coding tasks and faster response times. They are particularly useful if you're working on a laptop or a desktop with less RAM.
   
2. **Moderate Models (~16 GB - 32 GB)**: These models are suitable for mid-range systems and offer a good balance of precision and performance. They can handle more demanding tasks and are ideal for developers who need more detailed outputs without sacrificing too much speed.
   
3. **Advanced Models (~32 GB - 40 GB)**: These models are designed for high-performance systems with significant memory. They are best suited for resource-intensive tasks that require the highest level of detail and precision.

By understanding how different model variations affect memory usage and computational demands, you can make informed decisions that align with your system's capabilities and your project's requirements. This table should serve as a quick reference guide to help you match the right model with your hardware, ensuring smooth and efficient performance during development.
