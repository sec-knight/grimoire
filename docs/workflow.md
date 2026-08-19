# Workflow

## 1. Enter through the Personal Grimoire

When starting work, first identify the user's personal Grimoire.

Read:

- `GRIMOIRE.md`
- `projects.yaml`

Resolve the requested project from the routing map. For a cloud chat with GitHub access but no local filesystem, start with the personal Grimoire's root `CHAT.md`; its matching `prompts/chat-bootstrap.md` is the canonical public instruction. `prompts/session-open.md` (or the optional `resume` skill) defines the bounded resume flow for a fresh session.

## 2. Establish Repository Freshness

Before trusting project context from a local checkout, verify that the checkout matches the latest shared repository state that can be adopted safely.

If the tool is reading the configured remote directly, no local synchronization step is required.

For a local checkout:

1. Refresh remote-tracking information without changing local files.
2. Compare the checked-out branch with its configured upstream.
3. If the checkout is clean and only behind upstream, bring it forward without creating a merge commit.
4. If local work exists, history has diverged, no usable upstream exists, or the remote cannot be checked, report the condition and stop for direction rather than changing local work automatically.
5. If repository freshness cannot be checked, report it as unverified.

Apply the same check to a local source/content repository when its state matters to the requested work.

## 3. Read Project Context by Authority

After freshness is established, open the project's architecture repository.

Read the repository's local instructions and architecture first, then `activity/CURRENT.md` and the three most recent activity records by filename date.

Use one authority for each type of information:

- `architecture/` — durable intent, constraints, structure, and deliberately promoted design decisions
- `activity/CURRENT.md` — current execution state and the single next action
- dated `activity/` records — evidence and history
- `AGENTS.md` / `FAMILIAR.md` — instructions for interpreting and operating the repository

If these sources contradict one another within their respective roles, surface the contradiction rather than silently resolving it. Do not allow an older architecture or guidance statement to override `CURRENT.md` merely because it mentions a work item.

If implementation or content work is required, follow the optional source/content repository link.

## 4. Start or Continue Activity

For substantial work, create or continue a record in the architecture repository's `activity/` area.

Activity records are named `YYYY-MM-DD-<slug>.md`. If the same line of work already has a record on that date, continue that record rather than creating another.

Activity should preserve enough context that another human or AI can continue later without relying on the original chat or workspace.

## 5. Perform the Work

Work may happen in any compatible environment, including ChatGPT, Claude, Codex, Claude Code, an IDE, a terminal, a local editor, or manual work on another device.

No tool owns the project.

## 6. Close the Session

Before ending substantial work, follow `prompts/session-close.md` or the optional `endsession` skill. If the session was not routed to a project, the close flow asks the user to choose a project before it writes activity.

The close flow:

- writes or updates the activity record
- records failures, findings, evidence, and unresolved questions
- proposes possible architecture changes without promoting them
- rewrites `activity/CURRENT.md`
- commits the activity when Git is available
- emits a continuation block for another session

If the current tool cannot write to Git, it should output the complete activity record and replacement `CURRENT.md` so the user or another tool can commit them.

Do not preserve exhaustive transcripts merely for completeness.

## 7. Refine Periodically

Periodically review accumulated activity.

Promote durable conclusions into `architecture/` deliberately. Keep architecture promotion separate from routine activity commits so Git history preserves the distinction.

Git history records both the original activity and the later refinement.

## Routing Rule

```text
Personal Grimoire
        ↓
Project route
        ↓
Verify local freshness when applicable
        ↓
Project architecture
        ↓
CURRENT.md + bounded recent activity
        ↓
Optional source/content repository
        ↓
Work
        ↓
Session close + activity update
        ↓
Deliberate architecture refinement
```

The resume rule in one sentence:

**Resolve the right repository, make sure the local copy is safe and current, then read each kind of context from its designated authority.**
