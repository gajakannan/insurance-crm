# Manual Run Evidence

This directory stores evidence packages for human-orchestrated action runs.

## Structure

- One folder per run:
  - `planning-mds/operations/evidence/<run-id>/`

Each run folder should contain:
- `action-context.md`
- `artifact-trace.md`
- `gate-decisions.md`
- `commands.log`
- `lifecycle-gates.log`

## Example Package

- `plan-2026-02-08-preview-walkthrough/` demonstrates the required format for preview release readiness.

For execution requirements, see `docs/MANUAL-ORCHESTRATION-RUNBOOK.md`.
