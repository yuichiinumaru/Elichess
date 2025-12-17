# 09 - Troubleshooting

**Audience:** Everyone
**Time:** As needed
**Goal:** Resolve common issues

---

## 📋 Table of Contents

1. [Database Connection](#database-connection)
2. [EventStore Issues](#eventstore-issues)

---

## Database Connection

**Error:** `econnrefused`
**Fix:** Ensure Postgres is running and credentials in `config/dev.exs` match.

## EventStore Issues

**Error:** `relation "stream" does not exist`
**Fix:** Run `mix event_store.init` and `mix event_store.migrate`.

---
**Version:** 1.0
**Status:** 🟢 Implemented
