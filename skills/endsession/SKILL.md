---
name: endsession
description: Close a Grimoire work session by recording durable activity, updating CURRENT, and producing a continuation handoff.
---

# End Session

`prompts/session-close.md` is canonical. Follow it exactly when available.

If the canonical prompt is not locally available:

1. Identify the project and its architecture repository.
2. Write or continue `activity/YYYY-MM-DD-<slug>.md` using `activity/SESSION-TEMPLATE.md`.
3. Record findings, failures, verification state, unresolved questions, and possible architecture changes without promoting them.
4. Rewrite `activity/CURRENT.md` with the record path, current state, single next action, and anything that should not be retried.
5. Commit as `activity: <project> — <short description>` when Git is available; otherwise output the complete record and replacement `CURRENT.md` for the user to commit.
6. Produce a continuation handoff and stop. Do not begin new work.

Never commit secrets, credentials, tokens, keys, or pasted personal data.
