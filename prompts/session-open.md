# Session Open

Use this prompt to resume a project without relying on prior conversation memory.

## Canonical instruction

Resume `<PROJECT>` under the Grimoire protocol.

1. Read the personal Grimoire: `GRIMOIRE.md`, then `projects.yaml`, and resolve the named project to its architecture repository. If the route is ambiguous or missing, report that instead of guessing.
2. Establish repository freshness before trusting local project context:
   - If reading the architecture repository directly from its configured remote, continue.
   - If using a local checkout and Git/network access are available, fetch its configured upstream without modifying the worktree, then compare the checked-out branch with its upstream tracking branch.
   - If the checkout is clean and strictly behind upstream, update it by fast-forward only.
   - If it has uncommitted changes, has diverged, lacks a usable upstream, or the fetch fails, do not reset, rebase, merge, stash, or overwrite work automatically. Report the condition and stop for direction before treating local `CURRENT.md` as current.
   - If freshness cannot be checked because Git or network access is unavailable, state that freshness is unverified; do not claim the local checkout represents the latest shared state.
3. After freshness is established, read the project's `AGENTS.md` / `FAMILIAR.md` and `architecture/` first.
4. Read `activity/CURRENT.md` and the three most recent dated activity records. Do not load the whole activity history by default.
5. Apply authority by information type:
   - `architecture/` is canonical for durable intent, constraints, structure, and deliberately promoted design decisions.
   - `activity/CURRENT.md` is authoritative for current execution state and the single next action, once repository freshness is established.
   - dated `activity/` records are evidence and history.
   - `AGENTS.md` / `FAMILIAR.md` define how to interpret and operate the repository; they must not duplicate the active-work pointer.
   If these sources contradict one another within their respective roles, surface the contradiction rather than silently resolving it. Do not let an older architecture or guidance statement override a newer `CURRENT.md` merely because it names a work item.
6. Open the optional source/content repository only when the requested work requires it. If a local source/content checkout will be used, apply the same safe freshness check before relying on its local state.
7. Before beginning work, report in under 150 words: repository freshness, current state, next action from `CURRENT.md`, contradictions found, and expected context that is missing.
8. Stop after that report so the loaded context can be checked before work continues.

Do not fill missing context with plausible reconstruction.
