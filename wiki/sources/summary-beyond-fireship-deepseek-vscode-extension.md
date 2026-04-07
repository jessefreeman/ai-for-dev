---
type: source-summary
sources: ["I built a DeepSeek R1 powered VS Code extension….md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, tutorial, deepseek, ollama, vscode]
---

# I built a DeepSeek R1 powered VS Code extension

**Author / channel:** [[beyond-fireship|Beyond Fireship]]
**Format:** video
**Source:** [Original](../../raw/archive/I%20built%20a%20DeepSeek%20R1%20powered%20VS%20Code%20extension%E2%80%A6.md)
**Published:** 2025-01-28

## Summary

A from-scratch tutorial walking the official VS Code extension generator (`npx --package yo --package generator-code yo code`) and wiring it to a locally-running [[deepseek]] R1 model via [[ollama]]'s JavaScript SDK. Demonstrates the full loop: register a command, open a webview panel with HTML chat UI, post messages between webview and extension host, stream the Ollama response token-by-token back into the panel. Frames the exercise as the foundation for a personal Cursor-style editor. Notable for being a hands-on builder tutorial, not a tool walkthrough.

## Key Points

- **Extension scaffold** — `npx --package yo --package generator-code yo code` generates the official TypeScript starter; the `extension.ts` `activate()` lifecycle hook is where customization happens.
- **VS Code API surface** — `vscode.window.createWebviewPanel()` is the path to a custom HTML chat UI inside the editor. Commands must be registered both in code (`registerCommand`) and in `package.json` to appear in the command palette.
- **Debugging** — built-in debugger (`F5`) launches a second VS Code window with the extension installed; preferred over compile+install during development.
- **Ollama JS SDK** — `npm install ollama`; after adding `dom` to `tsconfig.json` libs, you can call `ollama.chat({ model: 'deepseek-r1', messages, stream: true })` and `for await` the response chunks.
- **Webview ↔ extension messaging** — `vscode.postMessage()` from the webview, `panel.webview.onDidReceiveMessage()` on the extension side. Stream chunks back to the webview as they arrive for live token display.
- **DX trick** — the `es6-string-html` extension gives syntax highlighting for HTML inside JS template literals via an `/*html*/` comment marker.
- **Hardware caveat** — DeepSeek R1 ranges from small distilled variants to 671B (404 GB). Tutorial uses the 7B variant; recommends starting small and scaling up by what your machine can handle.

## Connected Pages

- [[deepseek]] — the model used
- [[ollama]] — runtime
- [[continue]], [[cline]] — what this extension would compete with at maturity
- [[beyond-fireship|Beyond Fireship]] — channel hub
