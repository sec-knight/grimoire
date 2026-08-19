# Project Context

This repository contains the durable architecture and work activity for one project.

## Architecture

`architecture/` contains the project's reconciled durable understanding: intent, structure, important decisions, constraints, and direction.

Architecture remains the canonical record for those durable concerns until deliberately changed. If activity reveals that architecture may be stale or wrong within that role, surface the contradiction for refinement rather than silently allowing activity to supersede it.

## Activity

`activity/` contains work-session context and evidence: notes, experiments, partial ideas, failures, findings, and unresolved questions.

Dated activity preserves continuity across chats, tools, devices, and work sessions. It is evidence and history, not durable canon.

`activity/CURRENT.md` is authoritative for current execution state and the single next action. It is a bounded pointer to the latest relevant session record, current state, next action, and approaches that should not be retried.

`AGENTS.md` and this file define how to interpret and operate the repository. They should not duplicate the active-work pointer.

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
