---
title: "Collection of Prompts"
parent: "Prompts"
nav_order: 1
---

# Collection of Prompts

This section provides a comprehensive collection of battle-tested prompts for different coding tasks. These prompts are organized by category and include examples, variations, and tips for getting the best results from your local LLM.

## Code Generation Prompts

### Basic Function Creation

**Prompt:**

```
Create a [LANGUAGE] function that [DESCRIPTION]. The function should:
- Take [PARAMETERS] as input
- Return [RETURN_TYPE]
- Handle [ERROR_CONDITIONS] gracefully
- Include proper documentation

Please provide the complete function with comments explaining the logic.
```

**Example Usage:**

```
Create a Python function that validates email addresses. The function should:
- Take an email string as input
- Return a boolean indicating validity
- Handle empty strings and None values gracefully
- Include proper documentation

Please provide the complete function with comments explaining the logic.
```

**Expected Output:**

```python
def validate_email(email):
    """
    Validates an email address using regex pattern matching.

    Args:
        email (str): The email address to validate

    Returns:
        bool: True if email is valid, False otherwise
    """
    import re

    if not email or not isinstance(email, str):
        return False

    pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
    return bool(re.match(pattern, email.strip()))
```

### Class Design

**Prompt:**

```
Design a [LANGUAGE] class called [CLASS_NAME] that represents [CONCEPT]. The class should include:
- Private attributes: [LIST_ATTRIBUTES]
- Public methods: [LIST_METHODS]
- Constructor with validation
- String representation method
- Follow [DESIGN_PATTERN] pattern if applicable

Include docstrings and type hints where appropriate.
```

### API Integration

**Prompt:**

```
Create a [LANGUAGE] function to interact with the [API_NAME] API. The function should:
- Make a [HTTP_METHOD] request to [ENDPOINT]
- Handle authentication using [AUTH_METHOD]
- Parse the JSON response and extract [DATA_FIELDS]
- Include proper error handling for network issues and API errors
- Return a structured response

Please include example usage and required dependencies.
```

## Code Analysis Prompts

### Code Review

**Prompt:**

```
Please review the following [LANGUAGE] code for:
- Code quality and best practices
- Potential bugs or security issues
- Performance optimizations
- Readability improvements
- Adherence to [STYLE_GUIDE] standards

[CODE_BLOCK]

Provide specific suggestions with explanations and improved code examples where applicable.
```

### Bug Detection

**Prompt:**

```
Analyze this [LANGUAGE] code and identify potential bugs:

[CODE_BLOCK]

For each issue found, please:
1. Describe the problem
2. Explain why it's problematic
3. Provide a fixed version
4. Suggest how to prevent similar issues

Focus on logic errors, edge cases, and runtime exceptions.
```

### Performance Analysis

**Prompt:**

```
Review this [LANGUAGE] code for performance bottlenecks:

[CODE_BLOCK]

Please identify:
- Time complexity issues
- Memory usage problems
- Inefficient algorithms or data structures
- Opportunities for optimization

Provide optimized alternatives with explanations of the improvements.
```

## Documentation & Learning Prompts

### Code Explanation

**Prompt:**

```
Explain this [LANGUAGE] code in detail:

[CODE_BLOCK]

Please provide:
1. High-level overview of what the code does
2. Step-by-step breakdown of the logic
3. Explanation of any complex concepts or algorithms used
4. Purpose of each major section or function
5. Any design patterns or principles demonstrated

Use beginner-friendly language with technical accuracy.
```

### Documentation Generation

**Prompt:**

```
Generate comprehensive documentation for this [LANGUAGE] code:

[CODE_BLOCK]

Include:
- Function/class docstrings in [FORMAT] format
- Parameter descriptions with types
- Return value documentation
- Usage examples
- Any exceptions that might be raised
- Notes about performance or limitations
```

### Learning New Technologies

**Prompt:**

```
I'm learning [TECHNOLOGY/FRAMEWORK] and want to understand [SPECIFIC_CONCEPT]. Please:
1. Explain the concept in simple terms
2. Show a basic example
3. Provide a more advanced example
4. List common pitfalls to avoid
5. Suggest related concepts to explore next

Assume I have experience with [BACKGROUND_TECHNOLOGY] but am new to [TARGET_TECHNOLOGY].
```

## Testing & Quality Assurance Prompts

### Unit Test Generation

**Prompt:**

```
Generate comprehensive unit tests for this [LANGUAGE] function:

[CODE_BLOCK]

Create tests using [TESTING_FRAMEWORK] that cover:
- Happy path scenarios
- Edge cases and boundary conditions
- Error conditions and exception handling
- Different input types and values
- Mock external dependencies if needed

Include setup, teardown, and test data as appropriate.
```

### Test Case Design

**Prompt:**

```
Design test cases for [FEATURE_DESCRIPTION]. Consider:
- Functional requirements: [REQUIREMENTS]
- Input variations: [INPUT_TYPES]
- Expected behaviors: [BEHAVIORS]
- Error conditions: [ERROR_SCENARIOS]

Provide test cases in [FORMAT] format with:
- Test case ID
- Description
- Prerequisites
- Test steps
- Expected results
```

## Refactoring & Optimization Prompts

### Code Refactoring

**Prompt:**

```
Refactor this [LANGUAGE] code to improve [SPECIFIC_ASPECT]:

[CODE_BLOCK]

Goals:
- [REFACTORING_GOAL_1]
- [REFACTORING_GOAL_2]
- [REFACTORING_GOAL_3]

Maintain the same functionality while applying best practices like [PRINCIPLES].
Explain the changes made and their benefits.
```

### Architecture Improvement

**Prompt:**

```
Review the architecture of this [LANGUAGE] project and suggest improvements:

[PROJECT_STRUCTURE]

Current issues:
- [ISSUE_1]
- [ISSUE_2]

Please suggest:
- Better separation of concerns
- Improved design patterns
- More maintainable structure
- Enhanced testability

Provide before/after comparisons where helpful.
```

## Configuration & Setup Prompts

### Environment Setup

**Prompt:**

```
Create a setup guide for a [LANGUAGE] development environment that includes:
- Required dependencies and versions
- Installation steps for [OPERATING_SYSTEM]
- Configuration files needed
- Verification steps to ensure everything works
- Common troubleshooting issues

Target audience: [SKILL_LEVEL] developers
```

### Build & Deployment

**Prompt:**

```
Create a [BUILD_TOOL] configuration for a [PROJECT_TYPE] project that:
- Compiles/builds the project
- Runs tests automatically
- Handles dependencies
- Creates deployment artifacts
- Includes [SPECIFIC_REQUIREMENTS]

Provide the configuration file and explain each section.
```

## Model-Specific Optimization Tips

### For Code Llama

- Use technical terminology and be specific about requirements
- Include context about the programming language and framework
- Specify coding standards or style guides when relevant

### For Mistral Models

- Structure requests with clear, numbered steps
- Provide context about the project scope and constraints
- Ask for explanations along with code examples

### For Smaller Models (< 7B)

- Keep prompts focused and specific
- Avoid overly complex multi-step requests
- Provide more context and examples in the prompt

### For Larger Models (13B+)

- Can handle complex, multi-part requests
- Good at understanding implicit requirements
- Can provide architectural advice and design patterns

## Prompt Optimization Techniques

### 1. **Be Specific About Context**

```
**Poor**: "Create a function to process data"
**Better**: "Create a Python function to validate and clean user input data for a web form"
```

### 2. **Specify Output Format**

```
**Poor**: "Explain this code"
**Better**: "Explain this code with numbered steps and include code comments"
```

### 3. **Include Constraints**

```
**Poor**: "Optimize this function"
**Better**: "Optimize this function for memory usage while maintaining O(n) time complexity"
```

### 4. **Request Examples**

```
**Poor**: "Show me how to use this API"
**Better**: "Show me how to use this API with a complete example including error handling"
```

## Troubleshooting Common Issues

### Model Gives Generic Responses

- **Problem**: LLM provides vague or overly general code
- **Solution**: Add more specific requirements and constraints to your prompt

### Incorrect Language/Framework

- **Problem**: Model uses wrong programming language or framework
- **Solution**: Explicitly state the language and version in your prompt

### Missing Error Handling

- **Problem**: Generated code lacks proper error handling
- **Solution**: Always request error handling and edge case consideration

### Code Doesn't Follow Best Practices

- **Problem**: Generated code works but isn't optimized or well-structured
- **Solution**: Specify coding standards, style guides, or best practices in your prompt
