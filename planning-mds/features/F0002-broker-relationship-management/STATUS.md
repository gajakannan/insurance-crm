# F0002 — Broker & MGA Relationship Management — Status

**Overall Status:** In Progress (Auth/scope enforcement finalized in F0009)
**Last Updated:** 2026-03-05

## Story Checklist

| Story | Title | Status | Notes |
|-------|-------|--------|-------|
| F0002-S0001 | Create Broker | Done | |
| F0002-S0002 | Search Brokers | Done | |
| F0002-S0003 | Read Broker (Broker 360 View) | Done | |
| F0002-S0004 | Update Broker | Done | |
| F0002-S0005 | Delete Broker (Deactivate) | Done | |
| F0002-S0006 | Manage Broker Contacts | Done | |
| F0002-S0007 | View Broker Activity Timeline | Done | |
| F0002-S0008 | Reactivate Broker | Not Started | New story — reverse of S0005 |

## Deferred To F0009

- Broker and contact endpoint authorization parity with `policy.csv` is deferred to F0009 implementation scope.
- BrokerUser tenant isolation (`broker_tenant_id` claim resolution + query-layer scoping) is deferred to F0009-S0004.
- BrokerUser field-boundary filtering for Broker/Contact/Timeline responses is deferred to F0009-S0004.
