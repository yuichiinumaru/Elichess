# 05 - API Reference

**Audience:** Developers
**Time:** 30 minutes
**Goal:** Reference for HTTP Endpoints

---

## 📋 Table of Contents

1. [Overview](#overview)
2. [Endpoints](#endpoints)

---

## Overview

Base URL: `/api`
Content-Type: `application/json`

---

## Endpoints

### Create Game

**POST** `/games`

Creates a new chess game.

**Body:**
```json
{
  "white_player": "Alice",
  "black_player": "Bob"
}
```

**Response (201 Created):**
```json
{
  "data": {
    "id": "uuid",
    "status": "active",
    "white_player": "Alice",
    "black_player": "Bob"
  }
}
```

---

### Get Game

**GET** `/games/:id`

Retrieves current game state.

**Response (200 OK):**
```json
{
  "data": {
    "id": "uuid",
    "fen": "rnbqkbnr/...",
    "turn_color": "white",
    "move_count": 5
  }
}
```

---

### Make Move

**POST** `/games/:id/move`

Executes a move.

**Body:**
```json
{
  "from": "e2",
  "to": "e4",
  "promotion": null
}
```

**Response (200 OK):**
Returns the updated game state.

---
**Version:** 1.0
**Status:** 🟢 Implemented
