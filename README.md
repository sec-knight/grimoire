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
5. a small session-continuity protocol for closing and resuming work

The canonical session instructions live in `prompts/`. Optional skills in `skills/` are derived convenience wrappers and should not define behavior independently.

## Non-goals

Grimoire v0.1 deliberately does **not** provide:

- a CLI or required application
- schema validation
- task, ticket, or project-status fields
- automation or orchestration
- generated indexes or a search database
- an autonomous agent or model runtime

Those capabilities may exist in tools that use Grimoire, but they are not part of the protocol.

## Getting Started

1. Clone or fork this repository.
2. Copy `templates/personal-grimoire/` into a private repository of your own.
3. Add your projects to `projects.yaml`.
4. Give your preferred AI or development tool access to that personal Grimoire.
5. Tell it to read `GRIMOIRE.md` and follow the project map.
6. Use `prompts/session-open.md` when resuming work and `prompts/session-close.md` before ending substantial work. Optional `/resume` and `/endsession` skills provide the same flow where supported.

See `docs/concepts.md`, `docs/workflow.md`, and `INSTALL.md` for the operating model and optional skill installation.

## Tools without Git access

Git is the durable layer, but every participating tool does not need direct Git access. A tool that can only produce text can still follow the protocol by outputting the complete activity record and replacement `activity/CURRENT.md`; the user or another Git-capable tool can commit those artifacts. The record is the artifact, not the environment that produced it.

## Core Principle

**Route context through Git. Preserve activity freely. Promote architecture deliberately.**
