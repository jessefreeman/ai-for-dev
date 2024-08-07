# Understanding Model Naming

Different variations of the CodeLlama, specifically the Instruct model, balance memory usage, resources required, and speed. Choosing the right model depends on your specific needs and the capabilities of your hardware. Since our goal is to have a robust local LLM that can assist us in generating detailed and accurate code, we are focusing on the CodeLlama Instruct models. These models are specifically optimized for coding tasks, making them ideal for our purposes. Unfortunately, there isn’t a single model you can choose from, and before you pick the right one, we should discuss how to read and understand each model’s name. 

Here's a simplified key to interpret the model names.

Example: CodeLlama-13b-Instruct.Q3_K_M.gguf

| **Component** | **Meaning**                                                  |
| ------------- | ------------------------------------------------------------ |
| CodeLlama     | Indicates the model family optimized for coding tasks.       |
| 13b           | Parameter size: 13 billion parameters. Larger sizes offer better performance and accuracy but require more resources. |
| Instruct      | In this case, the variant that’s been optimized for instruction-following tasks. |
| Q3            | Quantization level: Q3 indicates moderate quantization, balancing model size and precision. |
| K_M           | Quantization scheme: K_M (Medium) balances resource usage and performance. |
| gguf          | File format optimized for running on specific frameworks or hardware configurations. |


If you are new to this, it can feel a bit overwhelming. Choosing the right model involves understanding the various properties that affect performance and resource requirements. Luckily there are really 3 things you need to understand once you’ve picked a model. Here’s a detailed explanation of these properties:

**Parameter Size (B):** The parameter size represents the number of parameters in billions, such as 34B. Larger parameter sizes generally offer better performance and accuracy because they can capture more intricate patterns and relationships in the data. However, they also require more memory and computational resources, which can be a constraint for systems with limited hardware capabilities.

**Quantization Level (Q):** Quantization refers to the precision of the model parameters. Higher quantization levels (e.g., Q4, Q5) indicate less quantization and higher precision, resulting in better accuracy but also increased memory and computational power requirements. Conversely, lower quantization levels (e.g., Q2) result in smaller model sizes and faster loading times, but they compromise on accuracy. Therefore, selecting the right quantization level involves balancing the need for precision against the available system resources.

**Quantization Scheme (K):** The quantization scheme indicates the specific approach used within a quantization level. These schemes often impact resource usage and performance. For instance, the K_S scheme is designed to be small, using minimal resources, making it suitable for environments with strict resource constraints. The K_M scheme offers a medium balance, providing a good mix of performance and resource efficiency. On the other hand, the K_L scheme is larger and offers better performance but requires more resources, suitable for environments where performance is the top priority and resources are not a constraint.
