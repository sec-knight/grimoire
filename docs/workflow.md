# Workflow

## 1. Enter through the Personal Grimoire

When starting work, first identify the user's personal Grimoire.

Read:

- `GRIMOIRE.md`
- `projects.yaml`

Resolve the requested project from the routing map. `prompts/session-open.md` (or the optional `/resume` skill) defines the bounded resume flow for a fresh session.

## 2. Follow the Project Route

Open the project's architecture repository.

Read the repository's local instructions and architecture first, then `activity/CURRENT.md` and the three most recent activity records by filename date.

Architecture remains canonical until deliberately promoted. If newer activity contradicts it, surface the contradiction; do not silently let activity replace architecture.

If implementation or content work is required, follow the optional source/content repository link.

## 3. Start or Continue Activity

For substantial work, create or continue a record in the architecture repository's `activity/` area.

Activity records are named `YYYY-MM-DD-<slug>.md`. If the same line of work already has a record on that date, continue that record rather than creating another.

Activity should preserve enough context that another human or AI can continue later without relying on the original chat or workspace.

## 4. Perform the Work

Work may happen in any compatible environment, including ChatGPT, Claude, Codex, Claude Code, an IDE, a terminal, a local editor, or manual work on another device.

No tool owns the project.

## 5. Close the Session

Before ending substantial work, follow `prompts/session-close.md` or the optional `/endsession` skill.

The close flow:

- writes or updates the activity record
- records failures, findings, evidence, and unresolved questions
- proposes possible architecture changes without promoting them
- rewrites `activity/CURRENT.md`
- commits the activity when Git is available
- emits a continuation block for another session

If the current tool cannot write to Git, it should output the complete activity record and replacement `CURRENT.md` so the user or another tool can commit them.

Do not preserve exhaustive transcripts merely for completeness.

## 6. Refine Periodically

Periodically review accumulated activity.

Promote durable conclusions into `architecture/` deliberately. Keep architecture promotion separate from routine activity commits so Git history preserves the distinction.

Git history records both the original activity and the later refinement.

## Routing Rule

```text
Personal Grimoire
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
