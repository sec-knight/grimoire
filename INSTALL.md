# Session helper installation

Grimoire's canonical session behavior lives in a personal Grimoire at:

- `prompts/session-open.md`
- `prompts/session-close.md`

The template's `.agents/skills/resume` and `.agents/skills/endsession` directories are optional Codex wrappers. The wrappers resolve and read the canonical prompts from their source personal Grimoire; if a wrapper and its prompt disagree, the prompt wins.

## Codex desktop, CLI, and IDE extension

From the root of your personal Grimoire on Windows, run:

```powershell
.\scripts\install-codex-skills.ps1
```

The script creates user-wide directory junctions in `$HOME\.agents\skills` without overwriting an existing skill. This makes the wrappers available while working in any project repository without Administrator privileges. Use `-CopyInsteadOfLink` only when directory links are unavailable, and re-run it after updating the private Grimoire.

In the desktop app, invoke `@resume` or `@endsession`. In Codex CLI and the IDE extension, invoke `$resume` or `$endsession`. Start a task with the local personal-Grimoire path, for example: `Resume website using the personal Grimoire at C:\Users\Mark\Documents\GitHub\marks-grimoire.`

Tools without a skill mechanism can use the prompts directly through their normal project-instruction or chat workflow.

Direct Git access is optional. A tool that cannot write the repository can still produce the complete activity record and replacement `activity/CURRENT.md` for a Git-capable human or tool to commit.

Do not evolve the skill wrappers independently. Reconcile them with the canonical prompts whenever the protocol changes.
