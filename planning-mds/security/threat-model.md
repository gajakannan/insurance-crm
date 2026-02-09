# Threat Model

Status: Draft
Last Updated: 2026-02-08
Owner: Security + Architect

## Scope And Objectives

This document captures the initial threat model for the Nebula reference planning artifacts.
It is a working draft used to identify high-risk attack paths before implementation hardening.

## System Context And Assets

- Primary artifacts: `planning-mds/`, generated application layers (`engine/`, `experience/`, `neuron/`).
- Trust boundaries: user/browser, API/service boundary, data stores, external identity/provider integrations.
- High-value assets:
  - Authentication and authorization decisions
  - Customer/account/order data
  - Secrets and environment configuration
  - Audit trail and activity history

## Threat Inventory (Draft)

| Threat Area | Example Threat | Initial Risk | Current Control | Gap |
|---|---|---|---|---|
| Authentication | Stolen tokens used to call APIs | High | Planned token validation patterns | Final runtime policy not implemented |
| Authorization | Missing resource-level checks | High | ABAC guidance in architecture docs | Endpoint-by-endpoint verification pending |
| Input Handling | Injection or malformed payload abuse | Medium | Contract/schema validation planned | Runtime enforcement tests pending |
| Sensitive Data | Data exposure in logs/errors | High | ProblemDetails and redaction guidance | Centralized logging policy pending |
| Supply Chain | Vulnerable dependencies/images | Medium | Gate design references scanning | Scanning not yet wired in app runtime |

## Mitigation Plan (Pre-Implementation)

- Define mandatory authn/authz checks per API surface.
- Require input validation at API and workflow boundaries.
- Define log redaction policy before external testing.
- Add dependency and container scanning in app runtime CI.
- Record residual risks for deferred mitigations.

## Open Questions

- Which threat scenarios are accepted for preview versus blocked for implementation?
- What minimum evidence set is required before stage promotion to `implementation`?
- Which security checks are mandatory for AI workflow paths in `neuron/`?

## Approval And Sign-Off

- Security Reviewer: Pending
- Architect: Pending
- Date: Pending
