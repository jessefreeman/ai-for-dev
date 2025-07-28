---
title: "Evaluation"
has_children: true
nav_order: 5
---

# Evaluation

Testing models was something I initially skipped, and it cost me time later. I'd download a model, try it for a few minutes, and if it seemed okay, I'd start using it for everything. Bad idea. Different models are good at different things, and what works for one type of coding task might be terrible for another.

Here's how I learned to actually test models properly.

## Why I Started Testing Models Systematically

Early on, I wasted weeks using a model that was great at explaining code but terrible at generating it. I only realized this when I tried a different model for the same tasks and got dramatically better results. Now I test every model against a standard set of tasks before committing to it.

My current testing approach:

- Test with actual coding tasks, not toy examples
- Use the same prompts across different models
- Time how long responses take
- Check memory usage during inference
- Test with different types of code (Python, JavaScript, systems stuff)

## My Testing Framework

I've developed a simple but effective testing routine that takes about 30 minutes per model:

**Quick Tests** (5 minutes):

- Generate a simple function with error handling
- Explain a complex piece of code
- Debug a function with an obvious bug

**Real-World Tests** (15 minutes):

- Build a small but complete feature (like a REST endpoint)
- Refactor existing messy code
- Write unit tests for existing code

**Performance Tests** (10 minutes):

- Time response speed with different prompt lengths
- Check memory usage during heavy prompts
- Test with different quantization levels

## What Actually Matters

After testing dozens of models, here's what I've learned matters most:

**Code Quality**: Does it generate code that actually works and follows good practices?
**Speed**: Can I have a conversation without waiting forever for responses?
**Context Understanding**: Does it remember what we talked about earlier in the conversation?
**Explanation Quality**: Can it explain its code in a way that helps me learn?

## My Actual Testing Process

[Testing Individual Models](06_01_testing_each_model.md) - My step-by-step process for evaluating any new model
[Comparing Models](06_02_evaluating_models.md) - How I run head-to-head comparisons
