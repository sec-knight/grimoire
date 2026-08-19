# Concepts

## Public Grimoire

The public Grimoire repository defines the protocol, templates, and shared conventions.

Users may adopt it directly, fork it, or copy its templates.

## Personal Grimoire

A personal Grimoire is a small Git repository owned by an individual or team. Its primary responsibility is routing: it maps human-readable project identities to the repositories that contain their durable context.

Example:

```yaml
projects:
  game-one:
    architecture: https://github.com/example/game-one-architecture.git
    source: https://github.com/example/game-one.git
  book:
    architecture: https://github.com/example/book-architecture.git
```

The personal Grimoire should remain small. It is a map and rulebook, not a warehouse for all project knowledge.

## Project Architecture Repository

An architecture repository contains the durable understanding and resumable activity for one project.

Its two initial areas are:

- `architecture/` — durable intent, constraints, structure, and deliberately promoted design decisions
- `activity/` — work-session context, evidence, history, and the bounded current handoff

## Source or Content Repository

A project may optionally link to another repository containing its implementation or primary artifact, such as source code, a website, a manuscript, game assets, or research data.

The architecture/source split is optional. For a solo project, keep architecture and implementation in one repository when separating them would add bookkeeping without creating a useful boundary. Use separate repositories when architecture benefits from a different lifecycle, access boundary, size profile, or tool path. Grimoire routes to the structure that best fits the project; it does not require a two-repository pattern.

## Architecture

Architecture is the project's durable understanding: intent, constraints, structure, important decisions, and direction that have been deliberately promoted.

Architecture remains canonical for those durable concerns until deliberately changed. Newer activity may show that architecture is stale or wrong, but activity does not silently supersede it; surface the contradiction for deliberate refinement.

Architecture should not duplicate the active work pointer merely to say what is next.

## Activity

Activity is what happened while working. It may be incomplete, contradictory, experimental, or noisy.

Activity exists to preserve continuity across sessions without forcing every observation into canonical project knowledge.

Dated activity records use `YYYY-MM-DD-<slug>.md` and serve as evidence and history.

`activity/CURRENT.md` has a narrower role: it is authoritative for the project's current execution state, single next action, latest relevant activity pointer, and approaches that should not be retried.

## Repository Freshness

Authority only helps if the copy being read is current.

When a tool reads the configured remote directly, it is already reading the shared repository state. When it works from a local checkout, it should establish freshness before treating local `CURRENT.md` as the latest shared state.

The safe resume behavior is:

1. fetch the configured upstream without modifying the worktree;
2. compare the local branch with its upstream tracking branch;
3. fast-forward only when the checkout is clean and strictly behind;
4. if the checkout is dirty, diverged, lacks a usable upstream, or cannot fetch, report that condition instead of resetting, rebasing, merging, stashing, or overwriting automatically;
5. if freshness cannot be checked, say that it is unverified.

The same rule applies to a local source/content repository when its state matters to the requested work.

## Authority Model

Use one authority for each kind of information:

- `architecture/` — durable intent and design
- `activity/CURRENT.md` — current execution state and next action
- dated `activity/` — evidence and history
- `AGENTS.md` / `FAMILIAR.md` — instructions for reading and operating the repository

**Know which artifact owns the truth, then make sure you are reading the current copy of it.**

## Refinement

Humans or AI tools periodically review activity and decide what deserves to change architecture.

The initial protocol does not require this process to be automated.
