# Project Context

This repository contains the durable architecture and work activity for one project.

## Architecture

`architecture/` contains the project's reconciled current understanding: intent, structure, important decisions, current state, and direction.

Architecture remains the canonical record until deliberately changed. If activity reveals that architecture may be stale or wrong, surface that contradiction for refinement rather than silently allowing activity to supersede it.

## Activity

`activity/` contains work-session context and evidence: notes, experiments, partial ideas, failures, findings, and unresolved questions.

Activity preserves continuity across chats, tools, devices, and work sessions. It is evidence, not canon.

`activity/CURRENT.md` is a bounded pointer to the latest relevant session record, current state, next action, and approaches that should not be retried.

## Context Flow

```text
architecture
  -> CURRENT.md + bounded recent activity
  -> work session
  -> activity update
  -> deliberate refinement
  -> architecture
```

## Principle

**Preserve activity freely. Promote architecture deliberately.**
