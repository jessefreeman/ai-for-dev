# Contributing

I welcome and appreciate contributions that help grow this content for others to learn from. Here’s how you can contribute:

## How to Contribute

### 1. Fork the Repository

1. Navigate to the [AI For Dev repository](https://github.com/jessefreeman/ai-for-dev).
2. Click on the "Fork" button in the top-right corner of the page.
3. This creates a copy of the repository under your GitHub account.

### 2. Clone the Forked Repository

Clone the forked repository to your local machine using the following command:

```bash
git clone https://github.com/yourusername/dev_local_llm_guide.git
cd dev_local_llm_guide
```

### 3. Create a New Branch

Create a new branch for your changes. Use a descriptive name for your branch:

```bash
git checkout -b add-model-test-results
```

### 4. Make Your Changes

Add your model test results, best practices, or other content. Ensure your changes are well-documented and formatted correctly.

### 5. Commit Your Changes

Commit your changes with a clear and concise commit message:

```bash
git add .
git commit -m "Add test results for Model X on Hardware Y"
```

### 6. Push to Your Fork

Push your changes to your forked repository:

```bash
git push origin add-model-test-results
```

### 7. Create a Pull Request

1. Navigate to the original repository on GitHub.
2. Click on the "Pull Requests" tab.
3. Click on the "New Pull Request" button.
4. Select your fork and branch from the dropdown menus.
5. Provide a detailed description of your changes in the pull request comments.

### What to Include in the Pull Request Comments

- **Description**: A brief summary of the changes you made.
- **Model Details**: Information about the model you tested (name, version, source).
- **Hardware Specifications**: Details about the hardware you used for testing (CPU, GPU, RAM, etc.).
- **Test Results**: Include metrics and observations from your tests.
- **Best Practices**: Share any tips or best practices that might be helpful for others.
- **Credits**: If you want to be credited for your contribution, include your name or GitHub handle.

### Example Pull Request Comment

```markdown
## Description
Added test results for GPT-3 model on NVIDIA GTX 1080.

## Model Details
- **Model**: GPT-3
- **Version**: 3.0
- **Source**: OpenAI

## Hardware Specifications
- **CPU**: Intel i7-9700K
- **GPU**: NVIDIA GTX 1080
- **RAM**: 32GB

## Test Results
- **Inference Time**: 2.3s per token
- **Accuracy**: 89% on benchmark dataset
- **Notes**: Model performs well on single GPU, minor performance issues observed with larger batch sizes.

## Best Practices
- Ensure CUDA drivers are up to date for optimal performance.
- Use batch sizes that fit comfortably within GPU memory to avoid bottlenecks.

## Credits
- Contributed by [yourname](https://github.com/yourusername)
```

## Additional Tips for Contributing

- **Stay Updated**: Regularly pull updates from the main repository to keep your fork up to date.
- **Follow the Style Guide**: Adhere to the project's formatting and style guidelines to ensure consistency.
- **Be Detailed**: The more information you provide, the easier it will be to review and accept your contribution.
- **Engage with the Community**: Participate in discussions, provide feedback on other contributions, and help answer questions.

By following these guidelines, you can help make the AI For Dev Guide a valuable resource for developers everywhere. 

Thank you for your contributions!
