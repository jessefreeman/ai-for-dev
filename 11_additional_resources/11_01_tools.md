---
title: "Tools"
parent: "Additional Resources"
nav_order: 1
---

# Tools

Essential tools, platforms, and utilities for local LLM development. This curated list includes everything from LLM runtime platforms to development integrations and monitoring tools.

## LLM Runtime Platforms

### Primary Platforms

- **[LM Studio](https://lmstudio.ai/)**: The most popular GUI application for running LLMs locally. Features model discovery, easy downloads, and optimized inference.
- **[Ollama](https://ollama.ai/)**: Command-line tool for running LLMs locally with simple model management. Excellent for scripting and automation.
- **[GPT4All](https://www.nomic.ai/gpt4all)**: Open-source ecosystem with both GUI and Python bindings for local LLM deployment.
- **[Jan](https://jan.ai/)**: Open-source alternative to LM Studio with a focus on privacy and customization.

### Advanced/Specialized Platforms

- **[LocalAI](https://localai.io/)**: OpenAI API-compatible server for running local models. Great for API integration.
- **[Oobabooga Text Generation WebUI](https://github.com/oobabooga/text-generation-webui)**: Gradio-based web interface with extensive customization options.
- **[llama.cpp](https://github.com/ggerganov/llama.cpp)**: Low-level C++ implementation for maximum performance and customization.
- **[Kobold.cpp](https://github.com/LostRuins/koboldcpp)**: Easy-to-use version of llama.cpp with a web interface.

## Development Integrations

### IDE Extensions

- **[Continue](https://marketplace.visualstudio.com/items?itemName=Continue.continue)**: VS Code extension for AI-powered code completion using local or remote models.
- **[Hugging Face VS Code Extension](https://marketplace.visualstudio.com/items?itemName=HuggingFace.huggingface-vscode)**: Direct integration with Hugging Face models and datasets.
- **[Codeium](https://codeium.com/)**: Free AI coding assistant with local model support.
- **[Tabnine](https://www.tabnine.com/)**: AI code completion with local deployment options for enterprises.

### Command Line Tools

- **[Aider](https://github.com/paul-gauthier/aider)**: AI pair programming tool that works with local LLMs via API.
- **[GitHub Copilot CLI](https://cli.github.com/)**: GitHub's AI-powered command line assistant.
- **[AI Shell](https://github.com/BuilderIO/ai-shell)**: Transform natural language into shell commands.

## Model Management

### Model Discovery & Download

- **[Hugging Face Hub](https://huggingface.co/models)**: Primary repository for open-source models with filtering for local deployment.
- **[Ollama Model Library](https://ollama.ai/library)**: Curated collection of models optimized for Ollama.
- **[LM Studio Model Browser](https://lmstudio.ai/models)**: Built-in model discovery with performance indicators.

### Model Conversion & Optimization

- **[llama.cpp Model Converter](https://github.com/ggerganov/llama.cpp)**: Convert models to GGML/GGUF format for efficient inference.
- **[AutoGPTQ](https://github.com/PanQiWei/AutoGPTQ)**: Quantization toolkit for reducing model size.
- **[Optimum](https://github.com/huggingface/optimum)**: Hugging Face's optimization toolkit for various hardware accelerators.

## Performance & Monitoring

### Benchmarking Tools

- **[Geekbench AI](https://www.geekbench.com/ai/download/)**: Comprehensive AI performance benchmarking across devices.
- **[MLPerf](https://mlcommons.org/en/inference-datacenter-20/)**: Industry-standard ML performance benchmarks.
- **[AI-Benchmark](https://ai-benchmark.com/)**: Mobile and desktop AI performance testing.

### System Monitoring

- **[nvidia-smi](https://developer.nvidia.com/nvidia-system-management-interface)**: NVIDIA GPU monitoring and management.
- **[htop](https://htop.dev/)**: Enhanced system process monitoring (Linux/macOS).
- **[GPU-Z](https://www.techpowerup.com/gpuz/)**: Detailed GPU information and monitoring (Windows).
- **[HWiNFO](https://www.hwinfo.com/)**: Comprehensive hardware monitoring (Windows).

## Development Frameworks

### Python Libraries

- **[Transformers](https://github.com/huggingface/transformers)**: Hugging Face's transformer library for model deployment.
- **[LangChain](https://github.com/langchain-ai/langchain)**: Framework for developing LLM-powered applications.
- **[LlamaIndex](https://github.com/run-llama/llama_index)**: Data framework for connecting LLMs with external data.
- **[Guidance](https://github.com/guidance-ai/guidance)**: Programming paradigm for controlling language models.

### API & Server Tools

- **[FastAPI](https://fastapi.tiangolo.com/)**: Modern web framework for building LLM APIs.
- **[Llama Stack](https://github.com/meta-llama/llama-stack)**: Standardized APIs for generative AI applications.
- **[vLLM](https://github.com/vllm-project/vllm)**: High-throughput and memory-efficient inference engine.
- **[TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)**: NVIDIA's optimized inference library.

## Hardware & Infrastructure

### Container & Deployment

- **[Docker](https://www.docker.com/)**: Containerization platform with GPU support for LLM deployment.
- **[NVIDIA Container Toolkit](https://github.com/NVIDIA/nvidia-container-toolkit)**: GPU access in containers.
- **[Docker Compose](https://docs.docker.com/compose/)**: Multi-container application deployment.

### Cloud Alternatives

- **[Runpod](https://www.runpod.io/)**: GPU cloud computing for model inference.
- **[Vast.ai](https://vast.ai/)**: Decentralized GPU marketplace for affordable compute.
- **[Lambda Labs](https://lambdalabs.com/)**: Cloud GPU instances optimized for ML workloads.

## Utilities & Quality of Life

### File Management

- **[7-Zip](https://www.7-zip.org/)**: Archive utility for compressed model downloads.
- **[rclone](https://rclone.org/)**: Cloud storage sync tool for model backup and sharing.
- **[rsync](https://rsync.samba.org/)**: File synchronization for model management (Linux/macOS).

### Text Processing

- **[jq](https://stedolan.github.io/jq/)**: Command-line JSON processor for API responses.
- **[Pandoc](https://pandoc.org/)**: Document converter for various text formats.
- **[ripgrep](https://github.com/BurntSushi/ripgrep)**: Fast text search tool for code analysis.

### Network Tools

- **[curl](https://curl.se/)**: Command-line tool for API testing and file downloads.
- **[Postman](https://www.postman.com/)**: API development and testing platform.
- **[HTTPie](https://httpie.io/)**: User-friendly command-line HTTP client.

## Specialized Tools

### Model Fine-tuning

- **[Axolotl](https://github.com/OpenAccess-AI-Collective/axolotl)**: Tool for fine-tuning various LLM architectures.
- **[Unsloth](https://github.com/unslothai/unsloth)**: Efficient fine-tuning framework.
- **[LoRA](https://github.com/microsoft/LoRA)**: Low-rank adaptation for efficient model fine-tuning.

### Data Preparation

- **[datasets](https://github.com/huggingface/datasets)**: Hugging Face dataset library.
- **[tiktoken](https://github.com/openai/tiktoken)**: Tokenizer library for counting tokens.
- **[sentencepiece](https://github.com/google/sentencepiece)**: Tokenization library used by many LLMs.


_Tool recommendations updated as of July 2025. Check project websites for the latest versions and features._
