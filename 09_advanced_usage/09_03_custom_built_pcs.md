# Custom Built PCs

When building a custom PC for running local LLMs, it's important to prioritize the components that will have the greatest impact on performance for your specific use case. Here are some key considerations to keep in mind:

### CPU Considerations:

- **Core Count vs. Clock Speed:** LLM workloads don’t rely heavily on high core counts unless you're doing extensive multitasking or parallel processing. In most cases, a modern CPU with solid single-core performance is sufficient, particularly since the bulk of the processing is often offloaded to the GPU.
- **Multitasking and Data Loading:** Look for a CPU that can handle the simultaneous tasks of loading models, managing datasets, and running the necessary interfaces with the GPU. Newer CPUs, even mid-range ones, typically handle these tasks efficiently.

### RAM Considerations:

- **Memory Size:** Aim for **32GB to 64GB of RAM** depending on the size of the models and datasets you'll be working with. More RAM ensures that you can run multiple models concurrently, perform data preprocessing, and avoid bottlenecks related to memory limits, particularly when working with larger datasets.
- **Memory Speed:** While high-speed RAM can provide small performance gains, it’s less critical than the overall memory size. Prioritize capacity first, then speed.

### GPU Considerations:

- **VRAM Size:** This is the most important factor when running LLMs. Aim for a GPU with at least **10GB of VRAM** for smaller models and light inference tasks. For larger models (13B and up), a GPU with **16GB or more VRAM** will provide better performance. Running out of VRAM can cause major slowdowns or make certain tasks impossible to complete.
- **GPU Power:** Choose a GPU that balances your needs and budget. High-end GPUs, such as the RTX 4090 or A100, are great for demanding workloads and large models but are expensive. Mid-tier GPUs like the RTX 4070 or 4060 offer solid performance for small to medium LLMs at a more affordable price.

### Storage Considerations:

- **Fast SSD:** A fast **NVMe SSD** with a minimum of **1TB** of storage is recommended for quick loading of datasets and models. If you're working with large amounts of data, consider expanding storage to at least **2TB** or more. Storage speed can reduce bottlenecks when loading or moving large datasets.

### Cooling and Power Supply:

- **Cooling:** Ensure your system has adequate cooling, especially if you plan on running sustained workloads. This is particularly important for GPUs that can run hot under load. A good CPU cooler and adequate case airflow are essential for maintaining optimal performance.
- **Power Supply:** Choose a reliable PSU that provides enough wattage to support your GPU, CPU, and other components. Make sure to leave some headroom to accommodate future upgrades.

### Flexibility for Future Upgrades:

- **Motherboard and Expandability:** Consider choosing a motherboard with enough PCIe lanes and RAM slots to accommodate future expansions. As your workloads evolve, you may want to add more memory, storage, or upgrade to a more powerful GPU.

### Conclusion:

When building a system for running local LLMs, prioritize **GPU VRAM** and **RAM capacity**, as these will have the greatest impact on your ability to handle large models and datasets. A modern mid-range CPU will generally suffice for most tasks, with higher-end CPUs only being necessary for heavy multitasking or data-intensive operations. Invest in a fast SSD for quick data access, and ensure your system has proper cooling and a reliable power supply to maintain performance under load. Finally, build with flexibility in mind, allowing for future upgrades as your needs grow.