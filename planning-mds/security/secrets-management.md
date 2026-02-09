# Secrets Management

Status: Draft
Last Updated: 2026-02-08
Owner: Security + DevOps

## Objective

Define how secrets are stored, accessed, rotated, and audited across environments.
This draft is a planning baseline for implementation hardening.

## Secret Categories

| Category | Examples | Storage Target | Rotation Requirement |
|---|---|---|---|
| Application credentials | DB/API credentials | Secret manager | Scheduled + on incident |
| Signing material | JWT/signing keys | Secret manager or HSM | Scheduled with key versioning |
| External provider tokens | LLM/provider keys | Secret manager | Scheduled + least privilege |
| CI/CD credentials | Pipeline tokens | CI secret store | Scheduled + scope-restricted |

## Baseline Controls

- Do not commit secrets to source control.
- Use environment-variable references to secret manager values.
- Separate secrets per environment (dev/staging/prod).
- Enforce least privilege for runtime service identities.

## Rotation And Revocation

- Define rotation cadence by secret category before implementation.
- Require emergency revocation playbook for compromised credentials.
- Track key versions and rollout windows to avoid downtime.

## Local Development Rules

- Use placeholder values in `.env.example`, never real credentials.
- Prefer short-lived local credentials where available.
- Document onboarding path for secure local secret access.

## Incident Response Expectations

- Detect suspected secret exposure.
- Revoke and rotate affected secrets immediately.
- Record incident details and remediation actions.

## Sign-Off

- Security Reviewer: Pending
- DevOps Reviewer: Pending
- Date: Pending
