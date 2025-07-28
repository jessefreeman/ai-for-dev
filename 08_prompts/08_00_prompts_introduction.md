---
title: "Prompts"
has_children: true
nav_order: 7
---

# Prompts

Prompting is the most important skill for working with LLMs, and it took me months to get decent at it. The difference between a good prompt and a bad prompt is often the difference between getting exactly what you need and getting complete garbage.

Here are the prompts I actually use and the techniques I've learned through lots of trial and error.

## How My Prompting Evolved

**Early days**: "Write a function to sort an array"
**Result**: Generic, basic code with no context

**Getting better**: "Write a Python function to sort a list of dictionaries by date, handling invalid dates gracefully"
**Result**: Much more useful, but still generic

**Current approach**: "I'm building a task management API in Python. Write a function to sort a list of task dictionaries by due_date field. Some tasks might have null due dates - put those at the end. Include type hints and handle the case where due_date is a string instead of datetime object."
**Result**: Code that actually fits my project and handles real-world edge cases

## My Prompt Categories

These are the types of prompts I use most often:

**Code Generation**: When I need new code written from scratch
**Debugging Help**: When existing code isn't working  
**Code Explanation**: When I'm trying to understand something complex
**Optimization**: When code works but could be better
**Testing**: When I need unit tests or want to verify code quality

## What I've Learned About Effective Prompting

**Context is everything**: Always explain what you're building and why
**Be specific about constraints**: Language version, libraries you're using, performance requirements
**Ask for explanations**: Don't just get code, understand why it works that way
**Iterate on responses**: First answer is rarely perfect, ask for improvements
**Include error handling**: Always specify how edge cases should be handled

## My Prompt Template

Here's the basic structure I use for most coding requests:

```
Context: [What I'm building and why]
Task: [Specific thing I need done]
Requirements: [Language, frameworks, constraints]
Input/Output: [What goes in, what should come out]
Edge cases: [What could go wrong and how to handle it]
```

## Real Examples

Check out [my prompt collection](08_01_collection_of_prompts.md) for actual prompts I use regularly, with examples of the results they produce.

## Getting the Most From Your Prompts

- **Provide Context**: Include relevant background information
- **Set Constraints**: Specify limitations, preferences, and requirements
- **Ask for Explanations**: Request reasoning behind suggestions
- **Request Alternatives**: Ask for multiple approaches to problems
