# Authorization Review

Status: Draft
Last Updated: 2026-02-08
Owner: Security + Architect

## Objective

Review authorization model assumptions for planning completeness before implementation.
This draft tracks what must be verified for resource-level access control and least privilege.

## Authorization Model Summary

- Model direction: ABAC/RBAC hybrid based on architecture guidance.
- Decision points:
  - API endpoint access
  - Resource ownership/tenant checks
  - Workflow transition permissions
- Expected outputs:
  - Resource-action matrix
  - Policy test cases
  - Negative/forbidden path coverage

## Resource-Action Review Checklist

| Area | Expected Control | Status | Notes |
|---|---|---|---|
| Endpoint access | Explicit policy per endpoint | Draft | Matrix not finalized |
| Object-level checks | Ownership or scope validation | Draft | Story mapping in progress |
| Workflow actions | Transition-level authorization | Draft | Need mapping to state rules |
| Admin operations | Least privilege and break-glass rules | Draft | Policy definitions pending |
| Auditability | Denied/allowed decisions traceable | Draft | Logging contract pending |

## Key Gaps To Resolve

- Missing consolidated resource-action matrix in planning artifacts.
- No finalized policy test catalog for allow/deny scenarios.
- No explicit cross-reference between stories and auth policies yet.

## Remediation Plan

1. Produce resource-action matrix in architecture artifacts.
2. Add authorization acceptance criteria to story templates where missing.
3. Define minimum authorization test evidence for lifecycle promotion.

## Sign-Off

- Security Reviewer: Pending
- Architect: Pending
- Date: Pending
