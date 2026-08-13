# Session Open

Use this prompt to resume a project without relying on prior conversation memory.

## Canonical instruction

Resume `<PROJECT>` under the Grimoire protocol.

1. Read the personal Grimoire: `GRIMOIRE.md`, then `projects.yaml`, and resolve the named project to its architecture repository. If the route is ambiguous or missing, report that instead of guessing.
2. Read the project's `AGENTS.md` / `FAMILIAR.md` and `architecture/` first.
3. Read `activity/CURRENT.md` and the three most recent dated activity records. Do not load the whole activity history by default.
4. Architecture remains canonical until deliberately promoted. Activity is evidence. If recent activity contradicts architecture, surface the contradiction rather than silently choosing a replacement truth.
5. Open the optional source/content repository only when the requested work requires it.
6. Before beginning work, report in under 150 words: current state, next action from `CURRENT.md`, contradictions found, and expected context that is missing.
7. Stop after that report so the loaded context can be checked before work continues.

Do not fill missing context with plausible reconstruction.
