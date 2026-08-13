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

An architecture repository contains the durable understanding of one project.

Its two initial areas are:

- `architecture/` — reconciled current understanding
- `activity/` — work-session context, evidence, notes, experiments, and noise

## Source or Content Repository

A project may optionally link to another repository containing its implementation or primary artifact, such as source code, a website, a manuscript, game assets, or research data.

The architecture/source split is optional. For a solo project, keep architecture and implementation in one repository when separating them would add bookkeeping without creating a useful boundary. Use separate repositories when architecture benefits from a different lifecycle, access boundary, size profile, or tool path. Grimoire routes to the structure that best fits the project; it does not require a two-repository pattern.

## Architecture

Architecture is what the project currently believes to be true. It should contain durable intent, structure, important decisions, current state, and direction.

Architecture remains canonical until deliberately changed. Newer activity may show that it is stale or wrong, but activity does not silently supersede it; surface the contradiction for deliberate refinement.

## Activity

Activity is what happened while working. It may be incomplete, contradictory, experimental, or noisy.

Activity exists to preserve continuity across sessions without forcing every observation into canonical project knowledge.

Activity records use `YYYY-MM-DD-<slug>.md`. `activity/CURRENT.md` is the small rewritten pointer to the latest relevant record, current state, next action, and approaches that should not be retried.

## Refinement

Humans or AI tools periodically review activity and decide what deserves to change architecture.

The initial protocol does not require this process to be automated.
