---
title: Docker Model Runner — Port 12434 + host.docker.internal Pattern
summary: The two facts that matter when integrating Docker Model Runner with Python: it serves OpenAI-compliant API on port 12434 (not 11434 like Ollama), and from inside a container you reach it via host.docker.internal not localhost.
tags: [tool_docker_model_runner, tool_ollama, topic_local_ai, topic_python_integration, person_tech_with_tim, source_tech_with_tim_docker_model_runner]
---

# Docker Model Runner — Port 12434 + host.docker.internal Pattern

## Context

From [[summary-tech-with-tim-docker-model-runner|Tech With Tim's Docker Model Runner tutorial]]. See also [[docker-model-runner]].

## Content

**Two facts that matter when integrating Docker Model Runner with Python:**

### 1. Port: `12434` (not `11434` like Ollama)

| Runtime | Port | Endpoint shape |
|---|---|---|
| **Docker Model Runner** | `12434` | `/engines/llama.cpp/v1/...` |
| **Ollama** | `11434` | `/api/...` and `/v1/...` |

Both are OpenAI-compliant. You can run both on the same machine without conflict.

### 2. Host loopback from inside a container

When your Python code runs **on the host**:
```python
client = OpenAI(base_url="http://localhost:12434/engines/llama.cpp/v1", api_key="ignored")
```

When your Python code runs **inside a Docker container** talking to Docker Model Runner on the host:
```python
client = OpenAI(base_url="http://host.docker.internal:12434/engines/llama.cpp/v1", api_key="ignored")
```

`host.docker.internal` is Docker's special hostname for "talk to the host machine from inside a container." The container has its own loopback so `localhost` doesn't reach the host's port 12434.

### Bonus: the API key is required by the OpenAI library but ignored by the local runtime

```python
api_key="not-used-but-required"   # any string works
```

The `openai` Python library will refuse to construct a client without an API key, but Docker Model Runner (and Ollama) accept any value. Pass any string.

### Bonus 2: Compose `provider: type: model` syntax

For shipping a containerized AI app that depends on a local model:

```yaml
services:
  app:
    depends_on: [llm]
    environment:
      - MODEL_BASE_URL=http://host.docker.internal:12434/engines/llama.cpp/v1
  llm:
    provider:
      type: model
      options:
        model: ai/gemma3
```

The `provider: type: model` block tells Compose to ensure the named model is available via Docker Model Runner before dependent services start. Cleanest pattern for shipping AI apps that don't want to deal with model-management as a separate CI/CD step.
