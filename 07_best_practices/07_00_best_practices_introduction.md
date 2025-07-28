---
title: "Best Practices"
has_children: true
nav_order: 6
---

# Best Practices

These are hard-learned lessons from over a year of using local LLMs for development work. I made a lot of mistakes early on that cost me time and frustration. Here's what I wish someone had told me when I started.

## My Biggest Early Mistakes

**Mistake #1**: Trying to use the biggest model I could fit in memory, thinking bigger = better. Wrong. A smaller, faster model that you can actually have a conversation with beats a huge model that takes 30 seconds per response.

**Mistake #2**: Not setting up proper workflows. I'd just open the LLM app whenever I felt like it, with no consistent approach. This led to inconsistent results and a lot of wasted effort.

**Mistake #3**: Treating the LLM like a magic oracle. These things need guidance and iteration. The first response is rarely the best response.

**Mistake #4**: Not backing up my conversations. Lost so many good examples and prompts when I reset sessions.

## What Actually Works

After lots of trial and error, here's what I've learned:

**Pick the right model size**: I use a 7B model for quick tasks and conversations, a 13B model for complex coding, and only fire up the 34B model for really tough problems.

**Create a workflow**: I have specific models for specific tasks. Code review gets one model, explanation gets another, generation gets a third.

**Save your good prompts**: I keep a text file of prompts that work well. When I find something that gives good results, I save it.

**Iterate, don't accept first answers**: The first response is usually 70% there. I ask for improvements, clarifications, optimizations.

**Keep your code**: Don't lose good conversations. I copy important code and explanations to my notes.

## My Current Setup

**Daily Development**: CodeLlama-13B-Instruct for most coding tasks
**Code Explanation**: Mistral-7B when I need something explained quickly  
**Complex Problems**: Mixtral-8x7B when I'm really stuck
**Quick Questions**: Phi-3-mini for fast answers

## Areas That Actually Matter

Based on my experience, focus your energy on:

**Getting prompting right** - This makes more difference than any other factor
**Hardware optimization** - A well-tuned 7B model beats a poorly configured 34B model
**Workflow integration** - Having models ready when you need them, not fighting with setup
**Context management** - Keeping conversations focused and relevant

## What I've Learned Not to Worry About

**Perfect model choice** - Any decent model is better than no model
**Latest models** - Stable, well-supported models > bleeding edge
**Benchmarks** - Real-world performance > synthetic test scores
**Complex setups** - Simple, reliable > fancy but fragile

Want the details? Check out [my specific practices](07_01_best_practices_for_running_local_llms.md).

## Getting Started

Whether you're a solo developer or part of a team, start with the [Best Practices for Running Local LLMs](07_01_best_practices_for_running_local_llms.md) to establish a solid foundation for your local AI development environment.
