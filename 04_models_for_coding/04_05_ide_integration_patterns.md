---
title: "IDE Integration Patterns"
parent: "Models For Coding"
nav_order: 5
---
---
title: "IDE Integration Patterns"
parent: "Models For Coding"
nav_order: 5
---

# IDE Integration Patterns

Learn how to integrate local LLMs with popular IDEs and code editors for enhanced development workflows. This guide covers setup, configuration, and best practices for various development environments.

## Overview

Modern IDEs and editors can be enhanced with local LLM capabilities through extensions, plugins, and direct API integrations. This guide shows you how to set up and optimize these integrations for maximum productivity.

---

## Visual Studio Code Integration

### Method 1: Continue.dev Extension

**Continue.dev** is one of the most popular VS Code extensions for local LLM integration.

#### Installation and Setup

1. **Install the Extension**

   ```bash
   # Open VS Code and install Continue.dev from the marketplace
   # Or via command line:
   code --install-extension continue.continue
   ```

2. **Configure Local LLM**

   Create or edit `.continue/config.json` in your home directory:

   ```json
   {
     "models": [
       {
         "title": "CodeLlama 7B",
         "provider": "ollama",
         "model": "codellama:7b-instruct",
         "apiBase": "http://localhost:11434"
       },
       {
         "title": "DeepSeek Coder",
         "provider": "ollama",
         "model": "deepseek-coder:6.7b-instruct",
         "apiBase": "http://localhost:11434"
       }
     ],
     "tabAutocompleteModel": {
       "title": "CodeLlama Completion",
       "provider": "ollama",
       "model": "codellama:7b-code",
       "apiBase": "http://localhost:11434"
     },
     "embeddingsProvider": {
       "provider": "ollama",
       "model": "nomic-embed-text",
       "apiBase": "http://localhost:11434"
     },
     "systemMessage": "You are an expert software developer. Always provide clean, efficient, and well-documented code.",
     "requestOptions": {
       "timeout": 60000,
       "verifySsl": false
     },
     "allowAnonymousTelemetry": false
   }
   ```

3. **Advanced Configuration Options**

   ```json
   {
     "models": [
       {
         "title": "CodeLlama 13B",
         "provider": "ollama",
         "model": "codellama:13b-instruct",
         "apiBase": "http://localhost:11434",
         "contextLength": 4096,
         "completionOptions": {
           "temperature": 0.2,
           "topP": 0.9,
           "maxTokens": 1024,
           "stop": ["</code>", "\n\n\n"]
         }
       }
     ],
     "contextProviders": [
       {
         "name": "code",
         "params": {
           "maxSubmenuItems": 10
         }
       },
       {
         "name": "docs",
         "params": {
           "startUrl": "https://docs.python.org/3/"
         }
       },
       {
         "name": "web",
         "params": {
           "maxResults": 5
         }
       }
     ],
     "slashCommands": [
       {
         "name": "edit",
         "description": "Edit selected code"
       },
       {
         "name": "comment",
         "description": "Add comments to code"
       },
       {
         "name": "test",
         "description": "Generate tests"
       }
     ]
   }
   ```

#### Usage Patterns

**1. Code Completion**

```python
# Start typing and press Tab to get AI completions
def fibonacci(n):
    # Press Tab here for completion
```

**2. Chat-based Code Generation**

```
# In Continue chat panel:
"Create a Python function that validates email addresses using regex"
```

**3. Code Explanation**

```
# Select code and ask:
"Explain how this algorithm works and its time complexity"
```

**4. Refactoring Assistance**

```
# Select code and use slash command:
/edit "Make this function more efficient and add error handling"
```

### Method 2: Custom API Integration

For more control, create a custom VS Code extension that interfaces with your local LLM.

#### Extension Structure

```
vscode-local-llm/
├── package.json
├── src/
│   ├── extension.ts
│   ├── llmClient.ts
│   ├── codeProvider.ts
│   └── webviewProvider.ts
└── media/
    └── styles.css
```

#### Core Extension Code

**package.json**

```json
{
  "name": "local-llm-assistant",
  "displayName": "Local LLM Assistant",
  "description": "AI coding assistant using local LLMs",
  "version": "1.0.0",
  "engines": {
    "vscode": "^1.74.0"
  },
  "categories": ["Other"],
  "activationEvents": [
    "onCommand:localLLM.generateCode",
    "onCommand:localLLM.explainCode",
    "onCommand:localLLM.optimizeCode"
  ],
  "main": "./out/extension.js",
  "contributes": {
    "commands": [
      {
        "command": "localLLM.generateCode",
        "title": "Generate Code",
        "category": "Local LLM"
      },
      {
        "command": "localLLM.explainCode",
        "title": "Explain Code",
        "category": "Local LLM"
      },
      {
        "command": "localLLM.optimizeCode",
        "title": "Optimize Code",
        "category": "Local LLM"
      }
    ],
    "menus": {
      "editor/context": [
        {
          "command": "localLLM.explainCode",
          "when": "editorHasSelection",
          "group": "localLLM"
        },
        {
          "command": "localLLM.optimizeCode",
          "when": "editorHasSelection",
          "group": "localLLM"
        }
      ]
    },
    "configuration": {
      "title": "Local LLM",
      "properties": {
        "localLLM.apiUrl": {
          "type": "string",
          "default": "http://localhost:11434",
          "description": "URL of the local LLM API"
        },
        "localLLM.model": {
          "type": "string",
          "default": "codellama:7b-instruct",
          "description": "Model to use for code generation"
        },
        "localLLM.temperature": {
          "type": "number",
          "default": 0.2,
          "description": "Temperature for code generation"
        }
      }
    }
  },
  "scripts": {
    "vscode:prepublish": "npm run compile",
    "compile": "tsc -p ./",
    "watch": "tsc -watch -p ./"
  },
  "devDependencies": {
    "@types/vscode": "^1.74.0",
    "typescript": "^4.9.4"
  }
}
```

**src/extension.ts**

```typescript
import * as vscode from "vscode";
import { LLMClient } from "./llmClient";
import { CodeProvider } from "./codeProvider";

export function activate(context: vscode.ExtensionContext) {
  const config = vscode.workspace.getConfiguration("localLLM");
  const llmClient = new LLMClient(
    config.get("apiUrl", "http://localhost:11434"),
    config.get("model", "codellama:7b-instruct")
  );

  const codeProvider = new CodeProvider(llmClient);

  // Generate Code Command
  const generateCodeCommand = vscode.commands.registerCommand(
    "localLLM.generateCode",
    async () => {
      const prompt = await vscode.window.showInputBox({
        prompt: "Describe the code you want to generate",
        placeHolder: "e.g., Create a function that sorts an array",
      });

      if (!prompt) return;

      const editor = vscode.window.activeTextEditor;
      if (!editor) return;

      try {
        vscode.window.withProgress(
          {
            location: vscode.ProgressLocation.Notification,
            title: "Generating code...",
            cancellable: true,
          },
          async (progress, token) => {
            const code = await codeProvider.generateCode(prompt, {
              language: editor.document.languageId,
              context: getEditorContext(editor),
            });

            if (token.isCancellationRequested) return;

            const position = editor.selection.active;
            await editor.edit((editBuilder) => {
              editBuilder.insert(position, code);
            });
          }
        );
      } catch (error) {
        vscode.window.showErrorMessage(`Code generation failed: ${error}`);
      }
    }
  );

  // Explain Code Command
  const explainCodeCommand = vscode.commands.registerCommand(
    "localLLM.explainCode",
    async () => {
      const editor = vscode.window.activeTextEditor;
      if (!editor || editor.selection.isEmpty) {
        vscode.window.showWarningMessage("Please select code to explain");
        return;
      }

      const selectedCode = editor.document.getText(editor.selection);

      try {
        const explanation = await codeProvider.explainCode(selectedCode, {
          language: editor.document.languageId,
        });

        // Show explanation in a new document
        const doc = await vscode.workspace.openTextDocument({
          content: explanation,
          language: "markdown",
        });
        await vscode.window.showTextDocument(doc);
      } catch (error) {
        vscode.window.showErrorMessage(`Code explanation failed: ${error}`);
      }
    }
  );

  // Optimize Code Command
  const optimizeCodeCommand = vscode.commands.registerCommand(
    "localLLM.optimizeCode",
    async () => {
      const editor = vscode.window.activeTextEditor;
      if (!editor || editor.selection.isEmpty) {
        vscode.window.showWarningMessage("Please select code to optimize");
        return;
      }

      const selectedCode = editor.document.getText(editor.selection);

      try {
        const optimizedCode = await codeProvider.optimizeCode(selectedCode, {
          language: editor.document.languageId,
          focus: "performance", // or 'readability', 'memory'
        });

        // Show diff view
        const originalUri = vscode.Uri.parse("untitled:Original");
        const optimizedUri = vscode.Uri.parse("untitled:Optimized");

        await vscode.workspace.openTextDocument(originalUri);
        await vscode.workspace.openTextDocument(optimizedUri);

        // Open diff view
        await vscode.commands.executeCommand(
          "vscode.diff",
          originalUri,
          optimizedUri,
          "Code Optimization Comparison"
        );
      } catch (error) {
        vscode.window.showErrorMessage(`Code optimization failed: ${error}`);
      }
    }
  );

  context.subscriptions.push(
    generateCodeCommand,
    explainCodeCommand,
    optimizeCodeCommand
  );
}

function getEditorContext(editor: vscode.TextEditor): string {
  const document = editor.document;
  const selection = editor.selection;

  // Get surrounding context (10 lines before and after)
  const startLine = Math.max(0, selection.start.line - 10);
  const endLine = Math.min(document.lineCount - 1, selection.end.line + 10);

  const contextRange = new vscode.Range(
    new vscode.Position(startLine, 0),
    new vscode.Position(endLine, document.lineAt(endLine).text.length)
  );

  return document.getText(contextRange);
}

export function deactivate() {}
```

**src/llmClient.ts**

```typescript
import axios, { AxiosInstance } from "axios";

export interface LLMResponse {
  content: string;
  model: string;
  done: boolean;
}

export interface LLMRequest {
  model: string;
  prompt: string;
  stream: boolean;
  options?: {
    temperature?: number;
    top_p?: number;
    max_tokens?: number;
    stop?: string[];
  };
}

export class LLMClient {
  private client: AxiosInstance;
  private model: string;

  constructor(apiUrl: string, model: string) {
    this.client = axios.create({
      baseURL: apiUrl,
      timeout: 60000,
      headers: {
        "Content-Type": "application/json",
      },
    });
    this.model = model;
  }

  async generateCompletion(prompt: string, options?: any): Promise<string> {
    const request: LLMRequest = {
      model: this.model,
      prompt,
      stream: false,
      options: {
        temperature: options?.temperature || 0.2,
        top_p: options?.top_p || 0.9,
        max_tokens: options?.max_tokens || 1024,
        stop: options?.stop || [],
      },
    };

    try {
      const response = await this.client.post("/api/generate", request);
      return response.data.response || response.data.content || "";
    } catch (error) {
      if (axios.isAxiosError(error)) {
        throw new Error(
          `LLM API Error: ${error.response?.data?.error || error.message}`
        );
      }
      throw error;
    }
  }

  async streamCompletion(
    prompt: string,
    onChunk: (chunk: string) => void,
    options?: any
  ): Promise<void> {
    const request: LLMRequest = {
      model: this.model,
      prompt,
      stream: true,
      options,
    };

    try {
      const response = await this.client.post("/api/generate", request, {
        responseType: "stream",
      });

      response.data.on("data", (chunk: Buffer) => {
        const lines = chunk.toString().split("\n");
        for (const line of lines) {
          if (line.trim()) {
            try {
              const data = JSON.parse(line);
              if (data.response) {
                onChunk(data.response);
              }
            } catch (e) {
              // Ignore invalid JSON lines
            }
          }
        }
      });
    } catch (error) {
      throw new Error(`Streaming failed: ${error}`);
    }
  }

  async testConnection(): Promise<boolean> {
    try {
      await this.client.get("/api/tags");
      return true;
    } catch {
      return false;
    }
  }
}
```

**src/codeProvider.ts**

````typescript
import { LLMClient } from "./llmClient";

export interface CodeContext {
  language: string;
  context?: string;
  focus?: string;
}

export class CodeProvider {
  private llmClient: LLMClient;

  constructor(llmClient: LLMClient) {
    this.llmClient = llmClient;
  }

  async generateCode(
    description: string,
    context: CodeContext
  ): Promise<string> {
    const prompt = this.buildCodeGenerationPrompt(description, context);
    const response = await this.llmClient.generateCompletion(prompt);
    return this.extractCodeFromResponse(response);
  }

  async explainCode(code: string, context: CodeContext): Promise<string> {
    const prompt = this.buildExplanationPrompt(code, context);
    return await this.llmClient.generateCompletion(prompt);
  }

  async optimizeCode(code: string, context: CodeContext): Promise<string> {
    const prompt = this.buildOptimizationPrompt(code, context);
    const response = await this.llmClient.generateCompletion(prompt);
    return this.extractCodeFromResponse(response);
  }

  async generateTests(code: string, context: CodeContext): Promise<string> {
    const prompt = this.buildTestGenerationPrompt(code, context);
    const response = await this.llmClient.generateCompletion(prompt);
    return this.extractCodeFromResponse(response);
  }

  async documentCode(code: string, context: CodeContext): Promise<string> {
    const prompt = this.buildDocumentationPrompt(code, context);
    const response = await this.llmClient.generateCompletion(prompt);
    return this.extractCodeFromResponse(response);
  }

  private buildCodeGenerationPrompt(
    description: string,
    context: CodeContext
  ): string {
    return `You are an expert ${
      context.language
    } developer. Generate clean, efficient, and well-documented code.

Task: ${description}

Language: ${context.language}
${context.context ? `Context:\n${context.context}\n` : ""}

Requirements:
- Write clean, readable code
- Include appropriate comments
- Follow ${context.language} best practices
- Handle edge cases and errors
- Only return the code, no explanations

Code:`;
  }

  private buildExplanationPrompt(code: string, context: CodeContext): string {
    return `Explain the following ${context.language} code in detail. Include:
- What the code does
- How it works
- Time and space complexity (if applicable)
- Potential improvements
- Best practices demonstrated

Code:
\`\`\`${context.language}
${code}
\`\`\`

Explanation:`;
  }

  private buildOptimizationPrompt(code: string, context: CodeContext): string {
    const focus = context.focus || "performance";

    return `Optimize the following ${context.language} code for ${focus}. 

Original code:
\`\`\`${context.language}
${code}
\`\`\`

Requirements:
- Maintain the same functionality
- Improve ${focus}
- Add comments explaining optimizations
- Follow ${context.language} best practices
- Only return the optimized code

Optimized code:`;
  }

  private buildTestGenerationPrompt(
    code: string,
    context: CodeContext
  ): string {
    return `Generate comprehensive unit tests for the following ${context.language} code:

Code to test:
\`\`\`${context.language}
${code}
\`\`\`

Requirements:
- Test normal cases
- Test edge cases
- Test error conditions
- Use appropriate testing framework for ${context.language}
- Include descriptive test names
- Only return the test code

Tests:`;
  }

  private buildDocumentationPrompt(code: string, context: CodeContext): string {
    return `Add comprehensive documentation to the following ${context.language} code:

Code:
\`\`\`${context.language}
${code}
\`\`\`

Requirements:
- Add function/method docstrings
- Add inline comments for complex logic
- Follow ${context.language} documentation standards
- Include parameter and return value descriptions
- Only return the documented code

Documented code:`;
  }

  private extractCodeFromResponse(response: string): string {
    // Remove markdown code blocks if present
    const codeBlockRegex = /```[\w]*\n([\s\S]*?)\n```/;
    const match = response.match(codeBlockRegex);

    if (match) {
      return match[1].trim();
    }

    // If no code blocks, return the response as-is
    return response.trim();
  }
}
````

---

## JetBrains IDEs Integration

### Method 1: AI Assistant Plugin

JetBrains offers official AI integration, but you can also configure it for local models.

#### Setup for Local LLMs

1. **Install Plugin**

   - Go to Settings → Plugins
   - Search for "AI Assistant" or custom LLM plugins
   - Install and restart

2. **Configure Local Model**

   Create a custom configuration:

   ```xml
   <!-- In .idea/ai-assistant.xml -->
   <component name="AIAssistantConfiguration">
     <option name="customProviders">
       <list>
         <option name="name" value="Local Ollama" />
         <option name="apiUrl" value="http://localhost:11434/api/generate" />
         <option name="model" value="codellama:7b-instruct" />
         <option name="headers">
           <map>
             <entry key="Content-Type" value="application/json" />
           </map>
         </option>
       </list>
     </option>
   </component>
   ```

### Method 2: Custom Plugin Development

Create a custom IntelliJ plugin for local LLM integration.

#### Plugin Structure

```
local-llm-plugin/
├── build.gradle.kts
├── src/main/
│   ├── kotlin/
│   │   └── com/example/localllm/
│   │       ├── LocalLLMPlugin.kt
│   │       ├── actions/
│   │       ├── services/
│   │       └── ui/
│   └── resources/
│       └── META-INF/
│           └── plugin.xml
```

#### Core Plugin Code

**plugin.xml**

```xml
<idea-plugin>
    <id>com.example.local-llm-assistant</id>
    <name>Local LLM Assistant</name>
    <version>1.0.0</version>
    <vendor>Your Name</vendor>

    <description>AI coding assistant using local LLMs</description>

    <depends>com.intellij.modules.platform</depends>
    <depends>com.intellij.modules.lang</depends>

    <extensions defaultExtensionNs="com.intellij">
        <applicationService serviceImplementation="com.example.localllm.services.LLMService"/>
        <toolWindow id="Local LLM"
                   factoryClass="com.example.localllm.ui.LLMToolWindowFactory"
                   anchor="right" />
    </extensions>

    <actions>
        <group id="LocalLLM.Actions" text="Local LLM" popup="true">
            <action id="LocalLLM.GenerateCode"
                   class="com.example.localllm.actions.GenerateCodeAction"
                   text="Generate Code"
                   description="Generate code using AI">
                <keyboard-shortcut keymap="$default" first-keystroke="ctrl alt G"/>
            </action>
            <action id="LocalLLM.ExplainCode"
                   class="com.example.localllm.actions.ExplainCodeAction"
                   text="Explain Code"
                   description="Explain selected code">
                <keyboard-shortcut keymap="$default" first-keystroke="ctrl alt E"/>
            </action>
            <add-to-group group-id="EditorPopupMenu" anchor="last"/>
        </group>
    </actions>
</idea-plugin>
```

**LocalLLMPlugin.kt**

```kotlin
package com.example.localllm

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.actionSystem.CommonDataKeys
import com.intellij.openapi.command.WriteCommandAction
import com.intellij.openapi.editor.Editor
import com.intellij.openapi.project.Project
import com.intellij.openapi.ui.InputDialog
import com.intellij.openapi.ui.Messages
import com.example.localllm.services.LLMService

class GenerateCodeAction : AnAction() {
    override fun actionPerformed(e: AnActionEvent) {
        val project = e.project ?: return
        val editor = e.getData(CommonDataKeys.EDITOR) ?: return

        val dialog = InputDialog(
            "Describe the code you want to generate:",
            "Generate Code",
            Messages.getQuestionIcon(),
            "",
            null
        )

        if (dialog.showAndGet()) {
            val prompt = dialog.inputString
            if (prompt.isNotBlank()) {
                generateCode(project, editor, prompt)
            }
        }
    }

    private fun generateCode(project: Project, editor: Editor, prompt: String) {
        val llmService = LLMService.getInstance()

        llmService.generateCode(prompt, editor.document.text) { result ->
            WriteCommandAction.runWriteCommandAction(project) {
                val offset = editor.caretModel.offset
                editor.document.insertString(offset, result)
            }
        }
    }
}

class ExplainCodeAction : AnAction() {
    override fun actionPerformed(e: AnActionEvent) {
        val project = e.project ?: return
        val editor = e.getData(CommonDataKeys.EDITOR) ?: return
        val selectionModel = editor.selectionModel

        if (!selectionModel.hasSelection()) {
            Messages.showWarningDialog(
                "Please select code to explain",
                "No Selection"
            )
            return
        }

        val selectedText = selectionModel.selectedText ?: return
        explainCode(project, selectedText)
    }

    private fun explainCode(project: Project, code: String) {
        val llmService = LLMService.getInstance()

        llmService.explainCode(code) { explanation ->
            // Show explanation in a dialog or tool window
            Messages.showInfoMessage(explanation, "Code Explanation")
        }
    }
}
```

---

## Neovim Integration

### Method 1: Using nvim-cmp with Local LLM

Configure Neovim for local LLM completions.

#### Required Plugins

```lua
-- In your init.lua or plugins config
{
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
}

-- Custom LLM completion source
{
  'local/cmp-ollama',
  config = function()
    require('cmp-ollama').setup({
      model = "codellama:7b-code",
      url = "http://localhost:11434/api/generate",
      timeout = 30000,
    })
  end
}
```

#### Custom LLM Source Implementation

Create `lua/cmp-ollama/init.lua`:

```lua
local cmp = require('cmp')
local curl = require('plenary.curl')

local M = {}

M.config = {
  model = "codellama:7b-code",
  url = "http://localhost:11434/api/generate",
  timeout = 30000,
  temperature = 0.2,
  max_tokens = 100,
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend('force', M.config, opts or {})
end

local source = {}

source.new = function()
  return setmetatable({}, { __index = source })
end

source.get_trigger_characters = function()
  return { '.' }
end

source.get_keyword_pattern = function()
  return [[\k\+]]
end

source.complete = function(self, request, callback)
  local context = request.context
  local line = context.cursor_line
  local col = context.cursor.col

  -- Get context around cursor
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  local before_cursor = string.sub(line, 1, col - 1)
  local after_cursor = string.sub(line, col)

  -- Build prompt with context
  local context_lines = {}
  local current_line = context.cursor.row
  local start_line = math.max(0, current_line - 10)
  local end_line = math.min(#lines - 1, current_line + 5)

  for i = start_line, end_line do
    if i < current_line then
      table.insert(context_lines, lines[i + 1])
    elseif i == current_line then
      table.insert(context_lines, before_cursor .. "<CURSOR>" .. after_cursor)
    else
      table.insert(context_lines, lines[i + 1])
    end
  end

  local prompt = table.concat(context_lines, "\n")

  -- Make request to local LLM
  self:request_completion(prompt, function(completions)
    local items = {}
    for _, completion in ipairs(completions) do
      table.insert(items, {
        label = completion,
        kind = cmp.lsp.CompletionItemKind.Text,
        insertText = completion,
        detail = "AI Generated",
      })
    end
    callback({ items = items })
  end)
end

source.request_completion = function(self, prompt, callback)
  local data = {
    model = M.config.model,
    prompt = prompt,
    stream = false,
    options = {
      temperature = M.config.temperature,
      max_tokens = M.config.max_tokens,
    }
  }

  curl.post(M.config.url, {
    body = vim.json.encode(data),
    headers = {
      ["Content-Type"] = "application/json",
    },
    timeout = M.config.timeout,
    callback = function(response)
      if response.status == 200 then
        local result = vim.json.decode(response.body)
        local completion = result.response or ""

        -- Process completion into suggestions
        local suggestions = self:process_completion(completion)
        callback(suggestions)
      else
        callback({})
      end
    end
  })
end

source.process_completion = function(self, completion)
  -- Split completion into meaningful suggestions
  local suggestions = {}

  -- Simple processing - can be enhanced
  local lines = vim.split(completion, '\n')
  for _, line in ipairs(lines) do
    line = vim.trim(line)
    if line ~= "" and #line > 2 then
      table.insert(suggestions, line)
    end
  end

  return suggestions
end

-- Register the source
cmp.register_source('ollama', source.new())

return M
```

#### Configuration

```lua
-- In your nvim-cmp configuration
local cmp = require('cmp')

cmp.setup({
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'ollama', trigger_characters = { ' ', '\t', '\n' } },
  }),

  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
})
```

### Method 2: Custom AI Commands

Create custom Neovim commands for AI assistance.

```lua
-- Add to your init.lua
local function call_ai_api(prompt, callback)
  local curl = require('plenary.curl')

  curl.post('http://localhost:11434/api/generate', {
    body = vim.json.encode({
      model = "codellama:7b-instruct",
      prompt = prompt,
      stream = false,
    }),
    headers = {
      ["Content-Type"] = "application/json",
    },
    callback = function(response)
      if response.status == 200 then
        local result = vim.json.decode(response.body)
        callback(result.response or "")
      else
        vim.notify("AI request failed: " .. response.status, vim.log.levels.ERROR)
      end
    end
  })
end

-- Generate code command
vim.api.nvim_create_user_command('AIGenerate', function(opts)
  local prompt = opts.args
  if prompt == "" then
    prompt = vim.fn.input("Describe the code to generate: ")
  end

  if prompt ~= "" then
    local full_prompt = string.format([[
You are a helpful coding assistant. Generate clean, efficient code based on this request:

%s

Only return the code, no explanations.
]], prompt)

    call_ai_api(full_prompt, function(response)
      local lines = vim.split(response, '\n')
      local row, col = unpack(vim.api.nvim_win_get_cursor(0))
      vim.api.nvim_buf_set_lines(0, row, row, false, lines)
    end)
  end
end, { nargs = '*' })

-- Explain code command
vim.api.nvim_create_user_command('AIExplain', function()
  local start_line, end_line = vim.fn.line("'<"), vim.fn.line("'>")
  local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)
  local code = table.concat(lines, '\n')

  if code ~= "" then
    local prompt = string.format([[
Explain the following code in detail:

%s

Provide a clear explanation of what this code does, how it works, and any notable patterns or techniques used.
]], code)

    call_ai_api(prompt, function(response)
      -- Open explanation in a new buffer
      local buf = vim.api.nvim_create_buf(false, true)
      vim.api.nvim_buf_set_option(buf, 'buftype', 'nofile')
      vim.api.nvim_buf_set_option(buf, 'filetype', 'markdown')

      local explanation_lines = vim.split(response, '\n')
      vim.api.nvim_buf_set_lines(buf, 0, -1, false, explanation_lines)

      vim.api.nvim_win_set_buf(0, buf)
    end)
  else
    vim.notify("No code selected", vim.log.levels.WARN)
  end
end, {})

-- Key mappings
vim.keymap.set('n', '<leader>ag', ':AIGenerate<CR>', { desc = 'AI Generate Code' })
vim.keymap.set('v', '<leader>ae', ':AIExplain<CR>', { desc = 'AI Explain Code' })
```

---

## Emacs Integration

### Using copilot.el with Local Models

Configure Emacs for local LLM integration.

#### Installation

```elisp
;; Add to your init.el
(use-package request
  :ensure t)

(use-package company
  :ensure t
  :config
  (global-company-mode 1))

;; Custom local LLM integration
(defcustom local-llm-url "http://localhost:11434/api/generate"
  "URL for local LLM API."
  :type 'string
  :group 'local-llm)

(defcustom local-llm-model "codellama:7b-instruct"
  "Model to use for code generation."
  :type 'string
  :group 'local-llm)

(defun local-llm-request (prompt callback)
  "Send a request to the local LLM API."
  (request local-llm-url
    :type "POST"
    :headers '(("Content-Type" . "application/json"))
    :data (json-encode `((model . ,local-llm-model)
                         (prompt . ,prompt)
                         (stream . :json-false)))
    :parser 'json-read
    :success (cl-function
              (lambda (&key data &allow-other-keys)
                (funcall callback (alist-get 'response data))))
    :error (cl-function
            (lambda (&key error-thrown &allow-other-keys)
              (message "Local LLM request failed: %s" error-thrown)))))

(defun local-llm-generate-code ()
  "Generate code using local LLM."
  (interactive)
  (let ((prompt (read-string "Describe the code to generate: ")))
    (when (not (string-empty-p prompt))
      (local-llm-request
       (format "Generate clean, efficient code for: %s\n\nOnly return the code, no explanations." prompt)
       (lambda (response)
         (insert response))))))

(defun local-llm-explain-region ()
  "Explain the selected region using local LLM."
  (interactive)
  (if (use-region-p)
      (let ((code (buffer-substring-no-properties (region-beginning) (region-end))))
        (local-llm-request
         (format "Explain the following code:\n\n%s" code)
         (lambda (response)
           (with-output-to-temp-buffer "*LLM Explanation*"
             (princ response)))))
    (message "No region selected")))

;; Key bindings
(global-set-key (kbd "C-c a g") 'local-llm-generate-code)
(global-set-key (kbd "C-c a e") 'local-llm-explain-region)
```

---

## Best Practices for IDE Integration

### 1. Performance Optimization

- **Model Selection**: Use smaller, faster models for real-time features
- **Caching**: Cache frequent requests and responses
- **Streaming**: Use streaming responses for better UX
- **Timeout Handling**: Set appropriate timeouts for requests

### 2. User Experience

- **Progressive Disclosure**: Start with basic features, add advanced ones
- **Keyboard Shortcuts**: Provide intuitive shortcuts for common actions
- **Visual Feedback**: Show loading states and progress indicators
- **Error Handling**: Graceful fallbacks when AI is unavailable

### 3. Context Management

- **Smart Context**: Include relevant surrounding code
- **Language Detection**: Automatic language detection for better prompts
- **Project Awareness**: Consider project structure and dependencies
- **History Tracking**: Remember previous interactions for context

### 4. Privacy and Security

- **Local Processing**: Keep all data local to your machine
- **No Telemetry**: Avoid sending usage data to external services
- **Configuration Security**: Secure API endpoints and tokens
- **Code Sanitization**: Clean sensitive data from prompts

### 5. Customization

- **Model Switching**: Easy switching between different models
- **Prompt Templates**: Customizable prompt templates
- **Response Formatting**: Configurable response processing
- **Integration Hooks**: Allow custom pre/post processing

---

_Next: [Advanced Prompting Techniques](08_01_collection_of_prompts.md)_

---

_Last updated: July 20, 2025_
