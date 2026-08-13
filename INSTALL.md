# Session helper installation

Grimoire's canonical session behavior lives in:

- `prompts/session-open.md`
- `prompts/session-close.md`

The files in `skills/` are optional derived wrappers for tools that support reusable skills or commands. If a skill and its canonical prompt disagree, the prompt wins.

Tools without a skill mechanism can use the prompts directly through their normal project-instruction or chat workflow.

Direct Git access is optional. A tool that cannot write the repository can still produce the complete activity record and replacement `activity/CURRENT.md` for a Git-capable human or tool to commit.

Do not evolve the skill wrappers independently. Reconcile or regenerate them from `prompts/` whenever the protocol changes.
