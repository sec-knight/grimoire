---
name: endsession
description: Close a Grimoire-managed project session by recording durable activity, updating CURRENT, and producing a continuation handoff. Use when the user asks to end, close, wrap up, or hand off substantial work.
---

# End Session

1. Confirm that this session already has a project and architecture-repository route. If not, ask: **“Which project should I save this session to?”** If a personal Grimoire path is available, read its `projects.yaml` and list the project names as choices. Stop without writing activity, changing `CURRENT.md`, or committing until the user selects a project.
2. When the personal Grimoire path is available, resolve this skill's physical directory, following any directory link. From `<grimoire-root>/.agents/skills/endsession`, read `<grimoire-root>/prompts/session-close.md` and follow its canonical instruction exactly.
3. If that prompt or path is unavailable, use the fallback below.

## Fallback

1. Confirm the project and its architecture repository. If either is unknown, ask the user which project should receive the session record and stop before writing anything.
2. Write or continue `activity/YYYY-MM-DD-<slug>.md` using `activity/SESSION-TEMPLATE.md`.
3. Record findings, failures, verification state, unresolved questions, and possible architecture changes without promoting them.
4. Rewrite `activity/CURRENT.md` with the record path, current state, single next action, and anything that should not be retried.
5. Commit as `activity: <project> — <short description>` when Git is available; otherwise output the complete record and replacement `CURRENT.md` for the user to commit.
6. Produce a continuation handoff and stop. Do not begin new work.

Never commit secrets, credentials, tokens, keys, or pasted personal data.
