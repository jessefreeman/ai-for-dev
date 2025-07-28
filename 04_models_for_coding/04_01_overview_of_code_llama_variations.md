---
title: "Overview of Code Llama Variations"
parent: "Models For Coding"
nav_order: 1
---

# Overview of Code Llama Variations

Code Llama was one of the first models I tried specifically for coding work. It's based on Meta's Llama 2 but trained on a massive amount of code. For TypeScript and JavaScript development, my experience has been mixed - some variations work much better than others.

## My Experience with Code Llama for TypeScript/JS

**CodeLlama Base Models** are okay for general coding but not great with modern TypeScript patterns. They tend to generate older JavaScript syntax and struggle with TypeScript's more advanced features like conditional types or mapped types.

**CodeLlama-Instruct** has been my go-to when I need to explain what I want in plain English and get TypeScript code back. It's much better at understanding context like "create a React component with TypeScript interfaces" compared to the base models.

**CodeLlama-Python** - I don't use this one since I work primarily with TypeScript, but I mention it because people often confuse it with the general models.

## What Actually Works for TypeScript/JavaScript

Based on testing these models extensively with TypeScript/React projects:

| **Model Variation**        | **Memory Usage** | **Speed** | **TypeScript Quality** | **JavaScript Quality** | **My Rating** |
| -------------------------- | ---------------- | --------- | ---------------------- | ---------------------- | ------------- |
| **CodeLlama-7B**           | 4GB              | Fast      | Poor                   | Decent                 | 6/10          |
| **CodeLlama-13B**          | 8GB              | Moderate  | Fair                   | Good                   | 7/10          |
| **CodeLlama-34B**          | 20GB             | Slow      | Good                   | Very Good              | 8/10          |
| **CodeLlama-Instruct-7B**  | 4GB              | Fast      | Fair                   | Good                   | 7/10          |
| **CodeLlama-Instruct-13B** | 8GB              | Moderate  | Good                   | Very Good              | 8/10          |
| **CodeLlama-Instruct-34B** | 20GB             | Slow      | Very Good              | Excellent              | 9/10          |

## My Recommendations

**For daily TypeScript work**: CodeLlama-Instruct-13B hits the sweet spot of quality vs speed
**If you have the hardware**: CodeLlama-Instruct-34B is noticeably better with complex TypeScript
**If you're resource-constrained**: CodeLlama-Instruct-7B works but expect to do more editing

## What I Use Each For

**Quick JSON parsing/manipulation**: Any Instruct model works fine
**React component generation**: 13B or larger for decent TypeScript interfaces  
**Complex type definitions**: 34B model or I switch to a different model entirely
**Code explanation**: Instruct models are much better than base models

The reality is that while Code Llama was groundbreaking when it came out, there are now better options for TypeScript/JavaScript work. I still use it sometimes, but it's not my first choice anymore.
