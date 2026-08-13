# Activity

This directory contains work-session context.

Activity records exist so another human or compatible tool can continue work without depending on a previous chat, IDE session, or device.

Name records `YYYY-MM-DD-<slug>.md`. If the same line of work continues more than once on the same date, continue the existing record.

`CURRENT.md` is the bounded pointer into the active edge of the work. Rewrite it at session close rather than appending to it. It should point to the latest relevant record, state where things stand, name the single next action, and preserve anything that should not be retried.

A useful activity record usually captures:

- goal
- context used
- work performed
- findings
- result
- possible architecture changes
- unresolved questions
- continuation context

Activity is evidence, not canon. A newer activity record may identify that architecture appears stale or wrong, but it does not replace architecture until that change is deliberately promoted.

Prefer useful summaries and evidence over exhaustive transcripts.
