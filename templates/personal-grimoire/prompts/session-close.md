# Session Close

Use this prompt to preserve enough durable context for another session to continue without the current conversation.

## Canonical instruction

Close the current project session under the Grimoire protocol.

1. Confirm the project and architecture repository. Reuse the route already established in this session when available. If no project route is established, ask: **“Which project should I save this session to?”** When the personal Grimoire is available, list its project names as choices. Otherwise ask for the project name and its personal-Grimoire or architecture-repository path. Stop without writing an activity record, changing `CURRENT.md`, or committing until the user selects a destination.
2. Create or continue `activity/YYYY-MM-DD-<slug>.md` using `activity/SESSION-TEMPLATE.md`.
3. Record decisions and reasoning, work performed, findings, failures and dead ends, exact identifiers or paths that matter, verification state, unresolved questions, and continuation context. Prefer evidence and concise durable findings over transcript-style history.
4. Put possible durable changes under `Possible Architecture Changes`. Do not promote them into `architecture/` as part of routine session close.
5. Rewrite `activity/CURRENT.md` with only: the activity-record path, current state in two or three sentences, the single next action, and anything that should not be retried and why.
6. When Git is available, commit routine session records with `activity: <project> — <short description>`. Keep deliberate architecture promotions in separate `architecture:` commits.
7. When Git is unavailable, output the complete activity record, its exact filename, and the replacement `activity/CURRENT.md` so a Git-capable human or tool can commit them.
8. Produce a continuation handoff containing the project/repository, activity-record path, current state, next action, and ruled-out approaches.
9. End the session after reporting what was recorded. Do not begin new work.

Never include secrets, credentials, tokens, keys, or pasted personal data in durable records; record where a needed value lives rather than the value itself.
