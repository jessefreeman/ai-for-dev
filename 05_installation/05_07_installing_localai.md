---
title: "Installing LocalAI"
parent: "Installation"
nav_order: 7
---
---
title: "Installing LocalAI"
parent: "Installation"
nav_order: 7
---

# Installing LocalAI

# Installing LocalAI

LocalAI is for when you want more control over your setup and need API compatibility with OpenAI. It's definitely more complex than LM Studio or Ollama, but if you're building applications that need to integrate with LLMs programmatically, it's worth the extra complexity.

I spent a weekend getting this set up properly, and here's what I learned.

## Why I Use LocalAI

**Advantages:**

- **OpenAI API Compatible**: Drop-in replacement for OpenAI API calls
- **Multi-Modal Support**: Text, image, audio, and embedding models
- **Backend Flexibility**: Supports llama.cpp, gpt4all, whisper, and more
- **No Internet Required**: Completely offline operation
- **Docker Ready**: Easy deployment and scaling
- **Enterprise Features**: Authentication, rate limiting, monitoring
- **Active Development**: Regular updates and feature additions

**Best For:**

- Developers migrating from OpenAI API
- Enterprise deployments requiring privacy
- Applications needing multi-modal AI capabilities
- Docker-based infrastructure
- API-first development workflows

---

## System Requirements

### Minimum Requirements

- **RAM**: 8GB (16GB recommended)
- **Storage**: 20GB free space
- **CPU**: Modern multi-core processor
- **OS**: Linux, macOS, or Windows with Docker support

### Recommended Requirements

- **RAM**: 32GB+ for larger models
- **Storage**: 100GB+ SSD storage
- **GPU**: NVIDIA GPU with 8GB+ VRAM (optional)
- **CPU**: 8+ cores for optimal performance
- **Network**: For initial model downloads

---

## Installation Methods

### Method 1: Docker Installation (Recommended)

Docker is the easiest and most reliable way to run LocalAI.

#### Basic Docker Setup

```bash
# Pull the LocalAI Docker image
docker pull localai/localai:latest

# Create a directory for models
mkdir -p ~/localai/models

# Run LocalAI container
docker run -p 8080:8080 \
  -v ~/localai/models:/models \
  -ti localai/localai:latest
```

#### Docker Compose Setup

Create a `docker-compose.yml` file:

```yaml
version: "3.6"

services:
  localai:
    image: localai/localai:latest
    tty: true # Enable colorized logs
    restart: always # Should this be on-failure ?
    ports:
      - 8080:8080
    environment:
      - DEBUG=true
      - MODELS_PATH=/models
      - THREADS=4
    volumes:
      - ./models:/models:cached
    command: ["/usr/bin/local-ai"]
```

```bash
# Start LocalAI with Docker Compose
docker-compose up -d

# View logs
docker-compose logs -f
```

#### GPU-Enabled Docker

```bash
# For NVIDIA GPU support
docker run -p 8080:8080 \
  --gpus all \
  -v ~/localai/models:/models \
  -e CUDA_VISIBLE_DEVICES=0 \
  localai/localai:v2.15.0-cublas-cuda12-ffmpeg
```

### Method 2: Binary Installation

#### Linux Binary

```bash
# Download the latest binary
wget https://github.com/mudler/LocalAI/releases/download/v2.15.0/local-ai-Linux-x86_64

# Make executable
chmod +x local-ai-Linux-x86_64

# Create models directory
mkdir -p ~/localai/models

# Run LocalAI
./local-ai-Linux-x86_64 --models-path ~/localai/models
```

#### macOS Binary

```bash
# Download for macOS
wget https://github.com/mudler/LocalAI/releases/download/v2.15.0/local-ai-Darwin-x86_64

# Make executable and run
chmod +x local-ai-Darwin-x86_64
./local-ai-Darwin-x86_64 --models-path ~/localai/models
```

#### Windows Binary

```powershell
# Download Windows binary
Invoke-WebRequest -Uri "https://github.com/mudler/LocalAI/releases/download/v2.15.0/local-ai-Windows-x86_64.exe" -OutFile "local-ai.exe"

# Create models directory
New-Item -ItemType Directory -Path ".\models" -Force

# Run LocalAI
.\local-ai.exe --models-path .\models
```

### Method 3: Build from Source

```bash
# Prerequisites: Go 1.21+, Git, Build tools
# Clone repository
git clone https://github.com/mudler/LocalAI.git
cd LocalAI

# Build LocalAI
make build

# Run LocalAI
./local-ai --models-path ./models
```

---

## Configuration

### Basic Configuration

Create a `config.yaml` file:

```yaml
name: llama3-8b
context_size: 4096
threads: 4
f16: true
mmap: true

backend: llama-cpp
parameters:
  model: llama-3-8b-instruct.gguf
  temperature: 0.1
  top_k: 40
  top_p: 0.95

template:
  chat: |
    {{.Input}}
  completion: |
    {{.Input}}
```

### Environment Variables

```bash
# Core settings
export LOCALAI_MODELS_PATH=/path/to/models
export LOCALAI_THREADS=4
export LOCALAI_CONTEXT_SIZE=4096

# Performance settings
export LOCALAI_F16=true
export LOCALAI_MMAP=true
export LOCALAI_LOW_VRAM=false

# API settings
export LOCALAI_ADDRESS=0.0.0.0
export LOCALAI_PORT=8080
export LOCALAI_API_KEY=your-secret-key

# GPU settings (NVIDIA)
export LOCALAI_CUDA=true
export CUDA_VISIBLE_DEVICES=0
```

### Model Configuration Files

For each model, create a `.yaml` config file in the models directory:

**llama3-8b.yaml:**

```yaml
name: llama3-8b
backend: llama-cpp
parameters:
  model: llama-3-8b-instruct.gguf
  context_size: 4096
  threads: 4
  f16: true
  mmap: true

template:
  chat: |
    <|begin_of_text|><|start_header_id|>user<|end_header_id|>
    {{.Input}}<|eot_id|><|start_header_id|>assistant<|end_header_id|>
```

---

## Model Setup

### Downloading Models

LocalAI supports various model formats. Here are popular options:

#### Text Generation Models

```bash
# Download Llama 3 8B (GGUF format)
cd ~/localai/models
wget https://huggingface.co/microsoft/Phi-3-mini-4k-instruct-gguf/resolve/main/Phi-3-mini-4k-instruct-q4.gguf

# Download Phi-3 Mini
wget https://huggingface.co/microsoft/Phi-3-mini-4k-instruct-gguf/resolve/main/Phi-3-mini-4k-instruct-q4.gguf

# Download CodeLlama
wget https://huggingface.co/TheBloke/CodeLlama-7B-Instruct-GGUF/resolve/main/codellama-7b-instruct.Q4_K_M.gguf
```

#### Embedding Models

```bash
# Download all-MiniLM-L6-v2 for embeddings
wget https://huggingface.co/sentence-transformers/all-MiniLM-L6-v2/resolve/main/pytorch_model.bin
```

#### Image Generation Models

```bash
# LocalAI supports Stable Diffusion models
wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt
```

### Model Gallery

LocalAI provides a model gallery for easy installation:

```bash
# List available models
curl http://localhost:8080/models/available

# Install a model from gallery
curl http://localhost:8080/models/apply -H "Content-Type: application/json" -d '{
  "id": "huggingface@microsoft__Phi-3-mini-4k-instruct-gguf__Phi-3-mini-4k-instruct-q4.gguf"
}'
```

---

## Usage Examples

### OpenAI API Compatibility

LocalAI is designed as a drop-in replacement for OpenAI's API:

#### Chat Completions

```bash
# Test chat completion
curl http://localhost:8080/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{
    "model": "llama3-8b",
    "messages": [
      {"role": "user", "content": "Hello! Can you help me write Python code?"}
    ],
    "temperature": 0.1
  }'
```

#### Text Completions

```bash
# Test text completion
curl http://localhost:8080/v1/completions \
  -H "Content-Type: application/json" \
  -d '{
    "model": "llama3-8b",
    "prompt": "def fibonacci(n):",
    "max_tokens": 100,
    "temperature": 0.1
  }'
```

#### Embeddings

```bash
# Generate embeddings
curl http://localhost:8080/v1/embeddings \
  -H "Content-Type: application/json" \
  -d '{
    "model": "all-MiniLM-L6-v2",
    "input": "The quick brown fox jumps over the lazy dog"
  }'
```

### Python Integration

```python
import openai

# Configure OpenAI client to use LocalAI
openai.api_base = "http://localhost:8080/v1"
openai.api_key = "not-needed-for-localai"

# Chat completion
response = openai.ChatCompletion.create(
    model="llama3-8b",
    messages=[
        {"role": "user", "content": "Write a Python function to sort a list"}
    ],
    temperature=0.1
)

print(response.choices[0].message.content)

# Text completion
response = openai.Completion.create(
    model="llama3-8b",
    prompt="def quicksort(arr):",
    max_tokens=150,
    temperature=0.1
)

print(response.choices[0].text)
```

### Node.js Integration

```javascript
const { OpenAI } = require("openai");

const openai = new OpenAI({
  baseURL: "http://localhost:8080/v1",
  apiKey: "not-needed-for-localai",
});

async function chatWithLocalAI() {
  const completion = await openai.chat.completions.create({
    messages: [
      { role: "user", content: "Explain machine learning in simple terms" },
    ],
    model: "llama3-8b",
    temperature: 0.1,
  });

  console.log(completion.choices[0].message.content);
}

chatWithLocalAI();
```

---

## Advanced Features

### Authentication

```yaml
# config.yaml
api_keys:
  - "your-secret-api-key-1"
  - "your-secret-api-key-2"

# Use with requests
curl -H "Authorization: Bearer your-secret-api-key-1" \
  http://localhost:8080/v1/models
```

### Rate Limiting

```yaml
# config.yaml
rate_limits:
  requests_per_minute: 100
  tokens_per_minute: 10000
```

### Multi-Model Setup

```yaml
# config.yaml
models:
  - name: llama3-8b
    backend: llama-cpp
    parameters:
      model: llama-3-8b-instruct.gguf

  - name: phi3-mini
    backend: llama-cpp
    parameters:
      model: phi-3-mini-4k-instruct-q4.gguf

  - name: embeddings
    backend: bert-embeddings
    parameters:
      model: all-MiniLM-L6-v2
```

### Function Calling

```python
# Function calling example
response = openai.ChatCompletion.create(
    model="llama3-8b",
    messages=[
        {"role": "user", "content": "What's the weather like in San Francisco?"}
    ],
    functions=[
        {
            "name": "get_weather",
            "description": "Get current weather information",
            "parameters": {
                "type": "object",
                "properties": {
                    "location": {"type": "string", "description": "City name"}
                },
                "required": ["location"]
            }
        }
    ]
)
```

---

## Performance Optimization

### Hardware Optimization

**CPU Optimization:**

```yaml
# config.yaml
threads: 8 # Match your CPU cores
mmap: true # Enable memory mapping
f16: true # Use 16-bit floating point
```

**GPU Optimization:**

```yaml
# config.yaml
gpu_layers: 35 # Number of layers to offload to GPU
main_gpu: 0 # Primary GPU ID
tensor_split: [1.0] # GPU memory distribution
```

**Memory Optimization:**

```yaml
# config.yaml
context_size: 2048 # Reduce for lower memory usage
batch_size: 512 # Adjust batch processing
rope_scaling: 1.0 # RoPE scaling factor
```

### Container Optimization

```yaml
# docker-compose.yml
version: "3.6"
services:
  localai:
    image: localai/localai:latest
    deploy:
      resources:
        limits:
          memory: 16G
          cpus: "8"
    environment:
      - THREADS=8
      - CONTEXT_SIZE=4096
      - MMAP=true
    volumes:
      - ./models:/models:cached
    shm_size: 1g
```

---

## Monitoring and Debugging

### Health Checks

```bash
# Check LocalAI status
curl http://localhost:8080/readiness

# List available models
curl http://localhost:8080/v1/models

# Get model info
curl http://localhost:8080/v1/models/llama3-8b
```

### Logging

```bash
# Enable debug logging
export DEBUG=true

# Or in config.yaml
debug: true
log_level: debug
```

### Performance Metrics

```bash
# Monitor resource usage
curl http://localhost:8080/metrics

# Model-specific stats
curl http://localhost:8080/v1/models/llama3-8b/stats
```

---

## Troubleshooting

### Common Issues

**Issue: Models not loading**

```bash
# Check model path and permissions
ls -la ~/localai/models/
docker exec -it localai_container ls -la /models/

# Verify model format
file ~/localai/models/your-model.gguf
```

**Issue: Out of memory errors**

```yaml
# Reduce memory usage in config
context_size: 1024
batch_size: 256
mmap: true
f16: true
```

**Issue: Slow inference**

```yaml
# Optimize for speed
threads: 8 # Match CPU cores
gpu_layers: 35 # Use GPU if available
low_vram: false
```

**Issue: API connection refused**

```bash
# Check if LocalAI is running
docker ps | grep localai
curl http://localhost:8080/readiness

# Check port binding
netstat -tlnp | grep 8080
```

### GPU Troubleshooting

**NVIDIA GPU not detected:**

```bash
# Check NVIDIA Docker runtime
docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi

# Verify CUDA in LocalAI container
docker run --gpus all localai/localai:latest-cublas-cuda12 nvidia-smi
```

**Memory issues with GPU:**

```yaml
# config.yaml
gpu_layers: 20 # Reduce layers on GPU
low_vram: true # Enable low VRAM mode
```

---

## Production Deployment

### Kubernetes Deployment

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: localai
spec:
  replicas: 2
  selector:
    matchLabels:
      app: localai
  template:
    metadata:
      labels:
        app: localai
    spec:
      containers:
        - name: localai
          image: localai/localai:latest
          ports:
            - containerPort: 8080
          env:
            - name: THREADS
              value: "4"
            - name: CONTEXT_SIZE
              value: "4096"
          volumeMounts:
            - name: models
              mountPath: /models
          resources:
            requests:
              memory: "8Gi"
              cpu: "2"
            limits:
              memory: "16Gi"
              cpu: "4"
      volumes:
        - name: models
          persistentVolumeClaim:
            claimName: localai-models
---
apiVersion: v1
kind: Service
metadata:
  name: localai-service
spec:
  selector:
    app: localai
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 8080
  type: LoadBalancer
```

### Load Balancing

```bash
# Use nginx or haproxy for load balancing
# Example nginx config:
upstream localai_backend {
    server 127.0.0.1:8080;
    server 127.0.0.1:8081;
    server 127.0.0.1:8082;
}

server {
    listen 80;
    location / {
        proxy_pass http://localai_backend;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```

---

## Next Steps

After installing LocalAI:

1. **Test API Endpoints**: Verify all endpoints work correctly
2. **Model Optimization**: Fine-tune models for your specific use case
3. **Integration**: Connect to your existing applications
4. **Monitoring**: Set up logging and performance monitoring
5. **Scaling**: Plan for production deployment and scaling

## Related Sections

- [Installing Ollama](05_05_installing_ollama.md) - Command-line alternative
- [Installing GPT4All](05_06_installing_gpt4all.md) - GUI-based option
- [Docker Deployments](05_08_docker_deployments.md) - Container best practices
- [Model Selection](../03_selecting_models/03_01_selecting_the_right_model.md) - Choosing models
- [Best Practices](../07_best_practices/07_01_best_practices_for_running_local_llms.md) - Optimization tips

---

_Last updated: July 20, 2025_
