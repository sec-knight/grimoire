# Personal Grimoire

This repository is a routing map for project context.

`projects.yaml` associates a project name with its architecture repository and, when present, its source or content repository.

The normal context path is:

```text
personal Grimoire
  -> project entry
  -> architecture repository
  -> verify local freshness when applicable
  -> relevant architecture and activity
  -> optional source/content repository
```

Project-specific knowledge belongs in the project architecture repository rather than in this routing repository.

This repository should remain small and portable. Its purpose is to identify where context lives and how the repositories relate to one another.

## Authority and freshness

Grimoire separates kinds of truth rather than duplicating them:

- `architecture/` owns durable intent, constraints, structure, and deliberately promoted design decisions.
- `activity/CURRENT.md` owns current execution state and the single next action.
- dated `activity/` records preserve evidence and history.
- `AGENTS.md` / `FAMILIAR.md` explain how to interpret and operate the repository.

When a local checkout is used, establish its freshness before treating `CURRENT.md` as the latest shared state. Fetch first, compare with upstream, and fast-forward only when the checkout is clean and strictly behind. Dirty, diverged, untracked, or unreachable repositories are reported rather than rewritten automatically.

A cloud tool reading the configured remote directly already sees the shared copy and does not need this local synchronization step.

## Session helpers

`CHAT.md` is the entry point for a cloud chat with GitHub-only access. `prompts/` contains the canonical session-open, session-close, and GitHub chat-bootstrap instructions. `.agents/skills/` contains optional Codex wrappers. Run `scripts/install-codex-skills.ps1` once to make those wrappers available from any local project repository.

When starting a Codex task outside this repository, provide this repository's local path with the task. The `resume` skill uses that path to resolve the project route, verify a local project checkout against its upstream when possible, and only then read project context.
