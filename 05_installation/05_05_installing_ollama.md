---
title: "Installing Ollama"
parent: "Installation"
nav_order: 5
---

# Installing Ollama

Ollama has become my preferred choice for terminal-based LLM work. It's incredibly simple to set up and use, especially if you're comfortable with command-line tools. Here's how I got it working and what I learned along the way.

## Why I Like Ollama

**Advantages:**

- **Simple Setup**: Single binary installation with minimal configuration
- **Broad Model Support**: Supports Llama, Mistral, Phi, Qwen, CodeLlama, and many more
- **Automatic Model Management**: Downloads, updates, and manages models automatically
- **Cross-Platform**: Works on Windows, macOS, and Linux
- **Active Development**: Regular updates and new model support
- **REST API**: Built-in API server for integration with other tools

**Best For:**

- Developers who prefer command-line tools
- Users who want to quickly try multiple models
- Integration with development workflows
- Automated deployments and scripting

---

## Installation by Platform

### Windows Installation

#### Method 1: Direct Download (Recommended)

1. **Download Ollama for Windows**

   - Visit [ollama.com](https://ollama.com/download)
   - Click "Download for Windows"
   - Download the `.exe` installer

2. **Run the Installer**

   ```powershell
   # Run the downloaded installer
   .\OllamaSetup.exe
   ```

3. **Verify Installation**
   ```powershell
   # Open PowerShell and verify Ollama is installed
   ollama --version
   ```

#### Method 2: Windows Package Manager

```powershell
# Install via winget
winget install Ollama.Ollama

# Or via Chocolatey
choco install ollama
```

#### Method 3: Manual Installation

```powershell
# Download and extract manually
Invoke-WebRequest -Uri "https://ollama.com/download/ollama-windows-amd64.zip" -OutFile "ollama.zip"
Expand-Archive -Path "ollama.zip" -DestinationPath "C:\Program Files\Ollama"

# Add to PATH
$env:PATH += ";C:\Program Files\Ollama"
```

### macOS Installation

#### Method 1: Direct Download (Recommended)

1. **Download Ollama for macOS**

   - Visit [ollama.com](https://ollama.com/download)
   - Click "Download for macOS"
   - Download the `.pkg` installer

2. **Install the Package**

   - Double-click the downloaded `.pkg` file
   - Follow the installation wizard
   - Enter your admin password when prompted

3. **Verify Installation**
   ```bash
   # Open Terminal and verify
   ollama --version
   ```

#### Method 2: Homebrew

```bash
# Install via Homebrew
brew install ollama

# Start Ollama service
brew services start ollama
```

#### Method 3: Manual Installation

```bash
# Download and install manually
curl -fsSL https://ollama.com/install.sh | sh
```

### Linux Installation

#### Method 1: Official Install Script (Recommended)

```bash
# Download and run the official install script
curl -fsSL https://ollama.com/install.sh | sh

# Verify installation
ollama --version
```

#### Method 2: Package Managers

**Ubuntu/Debian:**

```bash
# Add Ollama repository
curl -fsSL https://ollama.com/install.sh | sh

# Or download .deb package
wget https://ollama.com/download/ollama-linux-amd64.deb
sudo dpkg -i ollama-linux-amd64.deb
```

**CentOS/RHEL/Fedora:**

```bash
# Download and install RPM
wget https://ollama.com/download/ollama-linux-amd64.rpm
sudo rpm -i ollama-linux-amd64.rpm
```

**Arch Linux:**

```bash
# Install from AUR
yay -S ollama
# or
paru -S ollama
```

#### Method 3: Docker Installation

```bash
# Run Ollama in Docker
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama

# For GPU support (NVIDIA)
docker run -d --gpus=all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
```

---

## First Steps with Ollama

### 1. Start Ollama Service

```bash
# Start Ollama service (runs in background)
ollama serve
```

**Note**: On Windows and macOS, Ollama typically starts automatically after installation.

### 2. Download Your First Model

```bash
# Download and run Llama 3.1 8B (good starting model)
ollama run llama3.1

# Or try a coding-specific model
ollama run codellama

# For a smaller, faster model
ollama run phi3
```

### 3. Basic Ollama Commands

```bash
# List available models
ollama list

# Pull a model without running it
ollama pull mistral

# Show model information
ollama show llama3.1

# Remove a model
ollama rm llama3.1

# Update all models
ollama pull --all
```

### 4. Interactive Chat

```bash
# Start interactive chat with a model
ollama run llama3.1
>>> Hello! Can you help me write Python code?

# Exit chat mode
>>> /bye
```

---

## Model Recommendations

### For Beginners

- **llama3.1** (8B) - Excellent general-purpose model
- **phi3** (3.8B) - Fast and efficient, good for basic tasks
- **gemma2** (9B) - Good balance of capability and speed

### For Coding

- **codellama** (7B/13B/34B) - Specialized for code generation
- **codegemma** (7B) - Google's coding model
- **deepseek-coder** (6.7B/33B) - Strong coding performance

### For Advanced Users

- **llama3.1** (70B) - High capability, requires significant RAM
- **mistral** (7B/8x7B) - Excellent reasoning capabilities
- **qwen2.5** (7B/14B/32B) - Strong multilingual support

---

## Configuration

### Environment Variables

```bash
# Set custom model directory
export OLLAMA_MODELS=/path/to/your/models

# Set custom host and port
export OLLAMA_HOST=0.0.0.0:11434

# Enable debug logging
export OLLAMA_DEBUG=1
```

### GPU Configuration

**NVIDIA GPU Support:**

```bash
# Ollama automatically detects NVIDIA GPUs
# Ensure NVIDIA drivers and CUDA are installed

# Check GPU detection
ollama serve --help
```

**AMD GPU Support (ROCm):**

```bash
# Install ROCm drivers first
# Ollama will automatically use ROCm if available
```

**Apple Silicon:**

```bash
# Metal acceleration is automatic on Apple Silicon Macs
# No additional configuration needed
```

### Memory Management

```bash
# Set context length (affects memory usage)
ollama run llama3.1 --context-length 4096

# Set number of GPU layers (hybrid CPU/GPU)
ollama run llama3.1 --num-gpu 20
```

---

## Integration Examples

### REST API Usage

```bash
# Start Ollama API server
ollama serve

# Generate text via API
curl http://localhost:11434/api/generate -d '{
  "model": "llama3.1",
  "prompt": "Why is the sky blue?",
  "stream": false
}'
```

### Python Integration

```python
import requests
import json

def query_ollama(prompt, model="llama3.1"):
    url = "http://localhost:11434/api/generate"
    data = {
        "model": model,
        "prompt": prompt,
        "stream": False
    }

    response = requests.post(url, json=data)
    return response.json()["response"]

# Example usage
result = query_ollama("Write a Python function to calculate fibonacci numbers")
print(result)
```

### VS Code Extension

```bash
# Install the Ollama VS Code extension
# Search for "Ollama" in VS Code Extensions marketplace
```

---

## Troubleshooting

### Common Issues

**Issue: "ollama command not found"**

```bash
# Solution: Add Ollama to PATH
export PATH=$PATH:/usr/local/bin/ollama

# Or reinstall Ollama
curl -fsSL https://ollama.com/install.sh | sh
```

**Issue: "Connection refused" when using API**

```bash
# Solution: Start Ollama service
ollama serve

# Check if service is running
ps aux | grep ollama
```

**Issue: Model download fails**

```bash
# Solution: Check internet connection and disk space
df -h  # Check disk space
ping ollama.com  # Check connectivity

# Try downloading again
ollama pull llama3.1
```

**Issue: Out of memory errors**

```bash
# Solution: Use smaller models or adjust memory settings
ollama run phi3  # Try smaller model

# Or set memory limits
ollama run llama3.1 --memory 8GB
```

**Issue: Slow performance**

```bash
# Solution: Check GPU detection
ollama run llama3.1 --verbose

# Ensure drivers are installed
nvidia-smi  # For NVIDIA
rocm-smi   # For AMD
```

### GPU Troubleshooting

**NVIDIA GPU not detected:**

```bash
# Check NVIDIA drivers
nvidia-smi

# Install CUDA toolkit
# Visit: https://developer.nvidia.com/cuda-downloads

# Reinstall Ollama after CUDA installation
```

**AMD GPU not detected:**

```bash
# Install ROCm
# Ubuntu/Debian:
sudo apt update
sudo apt install rocm-dev

# Check ROCm installation
rocm-smi
```

### Performance Optimization

```bash
# Monitor resource usage
htop
nvidia-smi -l 1  # For NVIDIA GPU monitoring

# Optimize for speed vs quality
ollama run llama3.1 --temperature 0.1  # More deterministic
ollama run llama3.1 --top-p 0.9        # Focused responses
```

---

## Advanced Usage

### Custom Models

```bash
# Create custom model from Modelfile
echo 'FROM llama3.1
PARAMETER temperature 0.1
SYSTEM "You are a helpful coding assistant."' > Modelfile

# Build custom model
ollama create mycodellama -f Modelfile

# Use custom model
ollama run mycodellama
```

### Model Quantization

```bash
# Ollama automatically uses optimized quantizations
# Q4_0, Q4_1, Q5_0, Q5_1, Q8_0 variants available

# Check available variants
ollama list | grep llama3.1
```

### Batch Processing

```bash
# Process multiple prompts
echo "Explain machine learning" | ollama run llama3.1
echo "Write a Python function" | ollama run codellama
```

---

## Next Steps

Once you have Ollama installed and running:

1. **Explore Models**: Try different models for various tasks
2. **Integration**: Connect Ollama to your development workflow
3. **API Development**: Build applications using Ollama's REST API
4. **Performance Tuning**: Optimize settings for your hardware

## Related Sections

- [Installing GPT4All](05_06_installing_gpt4all.md) - Alternative GUI-based option
- [Model Selection Guide](../03_selecting_models/03_01_selecting_the_right_model.md) - Choosing the right model
- [Hardware Requirements](../03_selecting_models/03_03_model_size_and_memory.md) - Memory and GPU guidance
- [Best Practices](../07_best_practices/07_01_best_practices_for_running_local_llms.md) - Optimization tips

---

_Last updated: July 20, 2025_
