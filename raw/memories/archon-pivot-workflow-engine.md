---
title: Archon Pivoted to Workflow Engine
summary: Cole Medin's Archon has pivoted from AI OS (knowledge backbone via MCP) to a YAML-based deterministic workflow engine for AI coding agents with git worktree isolation.
tags: [tool_archon, person_cole_medin, topic_ai_coding, source_archon_readme]
---

# Archon Pivoted to Workflow Engine

## Context

From [[summary-archon-readme|Archon README]]. See also [[archon-os]], [[cole-medin]].

## Content

Archon has undergone three eras: (1) Python AI agent builder with RAG, (2) AI OS — knowledge + task backbone via MCP + Supabase + Docker, (3) **current: workflow engine** — YAML DAG workflows defining development processes (plan → implement → validate → review → PR) with deterministic + AI nodes, git worktree isolation per run, and multi-platform adapters (CLI, Web UI, Slack, Telegram, Discord, GitHub). Framing: "Dockerfiles for AI coding." Ships 17 default workflows including `archon-ralph-dag` (Ralph loop) and `archon-piv-loop` (PIV loop). Previous version preserved on `archive/v1-task-management-rag` branch.
