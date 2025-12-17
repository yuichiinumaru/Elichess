# 06 - Deployment

**Audience:** DevOps / Ops
**Time:** 40 minutes
**Goal:** Guide for deploying to production

---

## 📋 Table of Contents

1. [Docker](#docker)
2. [Environment Variables](#environment-variables)
3. [Production Checklist](#production-checklist)

---

## Docker

Build the release image:

```bash
docker build -t chess_server .
```

Run the container:

```bash
docker run -e DATABASE_URL=... -e SECRET_KEY_BASE=... chess_server
```

---

## Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `DATABASE_URL` | Postgres connection string | Yes |
| `SECRET_KEY_BASE` | Phoenix secret key | Yes |
| `PHX_HOST` | Hostname (e.g. example.com) | Yes |
| `PORT` | HTTP Port (default 4000) | No |

---

## Production Checklist

- [ ] Ensure DB migrations are run (`mix ecto.migrate`)
- [ ] Set secure `SECRET_KEY_BASE`
- [ ] Configure SSL/TLS
- [ ] Set up monitoring (Telemetry)

---
**Version:** 1.0
**Status:** 🟡 Pending (Dockerfile not yet created)
