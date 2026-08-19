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
2. If using a local project checkout, establish whether it is current with its configured upstream before trusting local context. A clean checkout that is only behind may be brought forward safely; otherwise report local work, divergence, missing upstream, failed remote access, or unverified freshness and stop for direction rather than changing local work automatically.
3. Read the project's local instructions and `architecture/` first.
4. Read `activity/CURRENT.md` and the three most recent dated activity records.
5. Treat `architecture/` as authoritative for durable intent and design, `CURRENT.md` as authoritative for current execution state and next action once freshness is established, dated activity as evidence/history, and local guidance as operating instructions. Surface contradictions within those roles.
6. Report repository freshness, where the project stands, the next action, contradictions, and missing expected context in under 150 words.
7. Stop before beginning the next action.

Do not reconstruct missing context from guesses.
