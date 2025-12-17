# 07 - Testing strategies

**Audience:** QA + Developers
**Time:** 50 minutes
**Goal:** Understand testing layers

---

## 📋 Table of Contents

1. [Unit Tests](#unit-tests)
2. [Integration Tests](#integration-tests)
3. [Running Tests](#running-tests)

---

## Unit Tests

Focus on `ChessServer.Domain`.
- Fast execution
- No side effects
- Located in `test/chess_server/domain/`

Example: `BoardTest`, `MoveValidatorTest`.

## Integration Tests

Focus on `ChessServerWeb` and `Infrastructure`.
- Tests Controllers, Projectors, Repositories
- Requires DB connection (Sandbox mode)
- Located in `test/chess_server_web/` and `test/infrastructure/`

---

## Running Tests

```bash
# Run all
mix test

# Run specific file
mix test test/chess_server/domain/board_test.exs
```

---
**Version:** 1.0
**Status:** 🟢 Implemented
