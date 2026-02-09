# Shared JSON Schemas

This directory stores canonical JSON Schemas shared across frontend and backend.

Current baseline:
- `problem-details.schema.json` - RFC 7807 error contract with Nebula extension fields
- `broker-create-request.schema.json` - validation rules for broker creation payload
- `broker-search-query.schema.json` - constrained broker search query contract

Use these files as the source of truth for validation, OpenAPI alignment, and generated types.
