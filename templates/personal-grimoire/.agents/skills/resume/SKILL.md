---
name: resume
description: Resume a Grimoire-managed project and report the loaded context before work begins. Use when the user asks to resume, continue, or orient a project session.
---

# Resume

1. Identify the personal Grimoire path from the user or the current workspace. If it is not available, ask for it and stop.
2. Resolve this skill's physical directory, following any directory link. From `<grimoire-root>/.agents/skills/resume`, read `<grimoire-root>/prompts/session-open.md` and follow its canonical instruction exactly.
3. If that prompt is unavailable, use the fallback below.

## Fallback

1. Read the personal Grimoire's `GRIMOIRE.md`, then `projects.yaml`, and resolve the named project.
2. Read the project's local instructions and `architecture/` first.
3. Read `activity/CURRENT.md` and the three most recent dated activity records.
4. Treat activity as evidence, not canon. Surface contradictions; do not silently let activity replace architecture.
5. Report where the project stands, the next action, contradictions, and missing expected context in under 150 words.
6. Stop before beginning the next action.

Do not reconstruct missing context from guesses.
