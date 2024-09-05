---
title: "Evaluating Models with a Standardized Test"
parent: "06 Evaluation"
order: 2
---
# Evaluating Models with a Standardized Test

To determine the best CodeLlama Instruct model for your MacBook Pro M3 Max, we need a comprehensive and consistent test that challenges the models and allows us to evaluate their performance in terms of speed, accuracy, and resource usage. The chosen prompt involves creating a simple React note-taking application, which will test the models' abilities to generate detailed, functional code while handling various aspects of modern JavaScript development.

The Test Prompt

```
Develop a simple note-taking application using React. The application should have the following features:

1. A homepage that displays a list of notes.
2. A form to add a new note, which includes fields for the note title and content.
3. Each note should have an option to delete it.
4. Use functional components and React hooks (useState and useEffect) for state management.
5. Include error handling for empty note submissions.
6. Ensure the code is well-commented and follows best practices.
```

## Why This Prompt?

This prompt is chosen for several compelling reasons. Firstly, it requires the model to generate multiple components, manage state, and handle user inputs, which are critical tasks in React development. By involving these complexities, we can thoroughly assess the model's capability to generate accurate and comprehensive code.

Furthermore, the prompt specifies the use of functional components and React hooks, ensuring that the generated code adheres to current React practices. This helps us evaluate the model's understanding of modern development paradigms, which is crucial for any developer aiming to stay up-to-date with industry standards.

The inclusion of error handling in the prompt tests the model's ability to write robust and reliable code. Error handling is a fundamental aspect of real-world applications, and the model's competence in this area is essential for producing high-quality outputs.

Lastly, by requiring well-commented code and adherence to best practices, the prompt allows us to evaluate the readability and maintainability of the generated code. These are important aspects of software development, as they impact the ease with which other developers can understand and work with the code.

## What We Are Testing For

The primary goal of this test is to determine which CodeLlama Instruct model best suits your MacBook Pro M3 Max by evaluating key performance metrics.

Response Time: We will measure the time taken by each model to generate a complete response to the prompt. This metric will help us understand how quickly each model can produce usable code, which is crucial for iterative development and real-time coding assistance.

Accuracy: Accuracy will be assessed on multiple fronts:

* Functionality: We will verify that the generated code meets all the specified requirements, such as displaying notes, adding new notes, and deleting notes. This ensures the model can follow detailed instructions and implement complex functionality.
* Correctness: We will check for any syntax or logical errors in the code. Correctness is vital for ensuring the generated code runs without issues and performs as expected.
* Clarity: We will evaluate the quality of the comments and the use of proper coding conventions. Clear and well-commented code is easier to understand and maintain, which is essential for collaborative development environments.

Resource Usage: We will monitor CPU, GPU, and RAM usage during the code generation process. This metric will help us determine how efficiently each model uses the available hardware resources, which is important for optimizing performance on your MacBook Pro M3 Max.

By systematically testing each model with this detailed React note-taking app prompt, we can identify which one provides the best balance of speed, accuracy, and resource efficiency for your specific needs. Each model offers a unique balance of these factors, allowing you to choose the optimal solution for your MacBook Pro M3 Max.
