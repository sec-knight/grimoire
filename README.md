# Grimoire

**A Git-native context routing protocol for human/AI work.**

Grimoire gives humans and AI tools one small, durable map for finding the context that belongs to a project.

It does not replace GitHub, your IDE, your AI assistant, or your project repositories. Instead, it provides a convention for connecting them.

```text
Public Grimoire
   ↓ fork/clone
Personal Grimoire
   ↓ routes tools to
Project architecture repos
   ↓ optionally link to
Project source/content repos
```

## Why

Modern work is spread across ChatGPT, Claude, Codex, Claude Code, IDEs, local files, Git repositories, and manual sessions. Each tool may be capable, but context is easily stranded inside individual conversations or workspaces.

Grimoire uses Git as the common durable layer.

A personal Grimoire tells a capable tool:

- what projects exist
- where each project's architecture lives
- where implementation or content lives, when applicable
- where working-session activity belongs
- how to read and write project context

Because the routing map and project knowledge are stored in Git, changes are portable, inspectable, versioned, and reversible.

## Grimoire v0.1

The first version is intentionally small.

Grimoire is:

1. a public specification and set of conventions
2. a template for a personal Grimoire
3. a template for project architecture repositories
4. rules for routing work context between them

It is **not** an orchestrator, database, autonomous agent, project-management application, or model runtime.

Any human or tool that can work with Git can participate.

## Getting Started

1. Clone or fork this repository.
2. Copy `templates/personal-grimoire/` into a private repository of your own.
3. Add your projects to `projects.yaml`.
4. Give your preferred AI or development tool access to that personal Grimoire.
5. Tell it to read `GRIMOIRE.md` and follow the project map.

See `docs/concepts.md` and `docs/workflow.md` for the operating model.

## Core Principle

**Route context through Git. Preserve activity freely. Promote architecture deliberately.**
