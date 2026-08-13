# Personal Grimoire

This repository is a routing map for project context.

`projects.yaml` associates a project name with its architecture repository and, when present, its source or content repository.

The normal context path is:

```text
personal Grimoire
  -> project entry
  -> architecture repository
  -> relevant architecture and activity
  -> optional source/content repository
```

Project-specific knowledge belongs in the project architecture repository rather than in this routing repository.

This repository should remain small and portable. Its purpose is to identify where context lives and how the repositories relate to one another.

## Session helpers

`CHAT.md` is the entry point for a cloud chat with GitHub-only access. `prompts/` contains the canonical session-open, session-close, and GitHub chat-bootstrap instructions. `.agents/skills/` contains optional Codex wrappers. Run `scripts/install-codex-skills.ps1` once to make those wrappers available from any local project repository.

When starting a Codex task outside this repository, provide this repository's local path with the task. The `resume` skill uses that path to resolve the project route before it reads project context.
