---
title: Prompt Fu — Unit Testing for AI Prompts
summary: Prompt Fu is an open-source prompt testing framework (acquired by OpenAI) that lets you test prompts × models and run automated red team attacks for prompt injection.
tags: [tool_prompt_fu, topic_testing, topic_security, source_fireship_7_tools]
---

# Prompt Fu — Unit Testing for AI Prompts

## Context

From [[summary-fireship-7-open-source-tools|Fireship's 7 Open-Source Tools]]. See also [[Prompt Fu]].

## Content

Prompt Fu (recently acquired by OpenAI) is a unit testing framework for AI prompts.

**Two capabilities:**
1. **Prompt × model testing**: Run the same prompt against multiple models; compare outputs; find the best combination for your use case
2. **Red team attacks**: Automated adversarial testing for prompt injection vulnerabilities — can your chatbot be tricked into revealing API keys by a 14-year-old on Discord?

**Why it matters for production**: If you're building an app where end users interact with AI, you need to know (a) which model × prompt combo works best, and (b) whether your system is vulnerable to prompt injection (an OWASP-level vulnerability).
