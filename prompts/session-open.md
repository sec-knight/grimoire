# Session Open

Use this prompt to resume a project without relying on prior conversation memory.

## Canonical instruction

Resume `<PROJECT>` under the Grimoire protocol.

1. Read the personal Grimoire: `GRIMOIRE.md`, then `projects.yaml`, and resolve the named project to its architecture repository. If the route is ambiguous or missing, report that instead of guessing.
2. Read the project's `AGENTS.md` / `FAMILIAR.md` and `architecture/` first.
3. Read `activity/CURRENT.md` and the three most recent dated activity records. Do not load the whole activity history by default.
4. Apply authority by information type:
   - `architecture/` is canonical for durable intent, constraints, structure, and deliberately promoted design decisions.
   - `activity/CURRENT.md` is authoritative for current execution state and the single next action.
   - dated `activity/` records are evidence and history.
   - `AGENTS.md` / `FAMILIAR.md` define how to interpret and operate the repository; they must not duplicate the active-work pointer.
   If these sources contradict one another within their respective roles, surface the contradiction rather than silently resolving it. Do not let an older architecture or guidance statement override a newer `CURRENT.md` merely because it names a work item.
5. Open the optional source/content repository only when the requested work requires it.
6. Before beginning work, report in under 150 words: current state, next action from `CURRENT.md`, contradictions found, and expected context that is missing.
7. Stop after that report so the loaded context can be checked before work continues.

Do not fill missing context with plausible reconstruction.
