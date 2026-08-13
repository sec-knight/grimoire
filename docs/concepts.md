# Concepts

## Public Grimoire

The public Grimoire repository defines the protocol, templates, and shared conventions.

Users may adopt it directly, fork it, or copy its templates.

## Personal Grimoire

A personal Grimoire is a small Git repository owned by an individual or team.

Its primary responsibility is routing. It maps human-readable project identities to the repositories that contain their durable context.

Example:

```yaml
projects:
  game-one:
    architecture: git@github.com:example/game-one-architecture.git
    source: git@github.com:example/game-one.git

  book:
    architecture: git@github.com:example/book-architecture.git

  website:
    architecture: git@github.com:example/website-architecture.git
    source: git@github.com:example/website.git
```

The personal Grimoire should remain small. It is a map and rulebook, not a warehouse for all project knowledge.

## Project Architecture Repository

An architecture repository contains the durable understanding of one project.

Its two initial areas are:

- `architecture/` — reconciled current understanding
- `activity/` — work-session context, evidence, notes, experiments, and noise

## Source or Content Repository

A project may optionally link to another repository containing its implementation or primary artifact, such as source code, a website, a manuscript, game assets, or research data.

Not every architecture repository needs a source repository. An idea can exist and mature entirely as architecture before implementation begins.

## Architecture

Architecture is what the project currently believes to be true. It should contain durable intent, structure, important decisions, current state, and direction.

## Activity

Activity is what happened while working. It may be incomplete, contradictory, experimental, or noisy.

Activity exists to preserve continuity across sessions without forcing every observation into canonical project knowledge.

## Refinement

Humans or AI tools periodically review activity and decide what deserves to change architecture.

The initial protocol does not require this process to be automated.
