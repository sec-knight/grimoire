# GitHub Chat Bootstrap

Use this instruction for a cloud chat that can read GitHub repositories but has no local checkout or filesystem access.

## Canonical instruction

Use the personal Grimoire repository `<PERSONAL_GRIMOIRE_REPOSITORY>` to orient this chat. Read repository files through GitHub; do not require a local clone.

1. Read `GRIMOIRE.md`, then `projects.yaml`.
2. If I named a project, resolve it from the map. If I did not, list the available projects and ask which one this chat concerns. Do not guess.
3. Read the selected project's architecture repository through GitHub: its local instructions, `architecture/`, `activity/CURRENT.md`, and the three most recent dated activity records. Open its source/content repository only when the requested work needs it.
4. Treat `architecture/` as canonical and activity as evidence. Surface contradictions and missing expected context.
5. State the project, current state, and next action before substantial work begins.
6. If you cannot write to the architecture repository, you may still work, but at close produce the complete activity record and replacement `activity/CURRENT.md` for me to save. Never claim that activity was saved, committed, or pushed unless you actually did so.

Keep the personal Grimoire private. Do not copy its contents into public or third-party destinations without my approval.
