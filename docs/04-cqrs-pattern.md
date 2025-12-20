# 04 - CQRS Pattern

**Audience:** Architects + Developers
**Time:** 60 minutes
**Goal:** Deep dive into the Command Query Responsibility Segregation implementation

---

## 📋 Table of Contents

1. [Architecture](#architecture)
2. [Write Side (Command)](#write-side-command)
3. [Read Side (Query)](#read-side-query)
4. [Event Flow](#event-flow)
5. [Refactoring Goals](#refactoring-goals)

---

## Architecture

We use the **Commanded** framework to implement CQRS/ES.

```
Command -> Router -> Aggregate -> Event -> EventStore -> Projector -> Read DB
```

---

## Write Side (Command)

### Commands
Structs representing intent.
- `CreateGame`
- `MakeMove`

### Aggregate (`Game`)
The authoritative source of truth.
- **Identity**: `game_id`
- **State**: `ChessServer.Domain.GameState`
- **Logic**:
  - `execute/2`: Validates command against current state, emits events.
  - `apply/2`: Mutates state based on events.

*Note: Calculations are strictly kept OUTSIDE the aggregate module itself, delegated to pure domain modules (`GameRules`, `GameState`) to support reusability in other contexts (e.g., Daily Problems).*

\`\`\`elixir
# Example Execute
def execute(%GameState{} = state, %MakeMove{} = cmd) do
  case GameState.make_move(state, move) do
    {:ok, _} -> %MoveMade{...}
    {:error, _} -> {:error, ...}
  end
end
\`\`\`

---

## Read Side (Query)

### Projections
Ecto schemas optimized for reading.
- `ChessServer.Infrastructure.Projections.Game`

### Projectors
Event handlers that update the Read DB.
- `GameProjector`: Listens to `GameCreated`, `MoveMade` and updates the `games` table.

---

## Event Flow

1. **User** POSTs to `/api/games`.
2. **Controller** dispatches `CreateGame` command.
3. **Router** sends to `Game` aggregate.
4. **Aggregate** emits `GameCreated`.
5. **EventStore** saves event.
6. **GameProjector** receives event, inserts row in Postgres.
7. **Controller** returns 201 Created.

---

## Refactoring Goals

Based on architectural review, the following improvements are planned:

1.  **Read Model Library**: Switch from manual `Commanded.Event.Handler` to **`commanded_ecto_projections`**.
    *   *Reason*: Manual handlers face concurrency issues when rebuilding the database from event history. `commanded_ecto_projections` handles idempotency and transactions robustly.

2.  **Real-time Updates**: Emit events to `Phoenix.PubSub` immediately after persistence to support reactive UIs (Webhooks/Sockets).

---
**Version:** 1.1
**Status:** 🟡 Refactoring Planned
