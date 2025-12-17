# 02 - Architecture

**Audience:** Architects + Senior Developers  
**Time:** 30 minutes  
**Goal:** Entender a visão geral do sistema e seus componentes

---

## 📋 Table of Contents

1. [System Overview](#system-overview)
2. [Core Principles](#core-principles)
3. [Architectural Layers](#architectural-layers)
4. [Data Flow](#data-flow)
5. [Technology Stack](#technology-stack)
6. [Scalability](#scalability)

---

## System Overview

### High-Level Diagram

```
┌─────────────────────────────────────────────────────────────┐
│                    CLIENT LAYER                             │
│          (Web Browser, Mobile, External APIs)              │
└───────────────────────┬─────────────────────────────────────┘
                        │
            ┌───────────┼────────────┐
            │           │            │
            v           v            v
    ┌──────────────────────────────────────────┐
    │      PHOENIX HTTP API LAYER              │
    │  (Controllers, Routing, Error Handling)  │
    └──────┬─────────────────────┬─────────────┘
           │                     │
    ┌──────v──────────┐   ┌──────v──────────┐
    │  WRITE SIDE     │   │   READ SIDE     │
    │  (Commands)     │   │   (Queries)     │
    └────────┬────────┘   └────────┬────────┘
             │                    │
       ┌─────v─────┐         ┌────v────┐
       │ Validate  │         │  Query  │
       │ Apply     │         │  Service│
       │ Emit      │         │  Cache  │
       │ Events    │         │  Layer  │
       └─────┬─────┘         └────┬────┘
             │                    │
       ┌─────v──────────────────────┐
       │  EVENT STORE (EventStore)  │
       │  PostgreSQL append-only    │
       └─────┬─────────────────────┘
             │
       ┌─────v─────────────────┐
       │   EVENT BUS           │
       │  (Projectors Listen)  │
       └─────┬─────────────────┘
             │
       ┌─────v──────────────────┐
       │  PROJECTOR (GenServer) │
       │  Consome Events        │
       │  Atualiza Read Model   │
       └─────┬──────────────────┘
             │
       ┌─────v─────────────────┐
       │  READ MODEL DB        │
       │  PostgreSQL + Redis   │
       │  Optimizado para      │
       │  leitura rápida       │
       └───────────────────────┘
```

---

## Core Principles

### 1. CQRS (Command Query Responsibility Segregation)

**Separação completa entre escrita (commands) e leitura (queries).**

```
ESCRITA (Command Side):
├─ Commands: CreateGame, MakeMove, AbandonGame
├─ Validação rigorosa
├─ Event Emission
├─ Event Store (append-only)
└─ Garantia: ACID

LEITURA (Query Side):
├─ Queries: GetGame, GetLeaderboard, GetStats
├─ Read Model (tabelas desnormalizadas)
├─ Cache (Redis)
├─ Eventual Consistency
└─ Garantia: Performance
```

**Benefício:** Cada lado otimizado para seu objetivo.

### 2. Event Sourcing

**Todas as mudanças são representadas como imutáveis eventos.**

```
Event Stream (Audit Trail Completo):
┌────────────────────────────────────┐
│ Evento 1: GameCreated              │
│ {game_id, white, black, timestamp} │
├────────────────────────────────────┤
│ Evento 2: MoveMade                 │
│ {game_id, move, fen, timestamp}    │
├────────────────────────────────────┤
│ Evento 3: CheckDetected            │
│ {game_id, checked_player}          │
└────────────────────────────────────┘

✅ Benefícios:
- Replay histórico completo
- Auditoria 100%
- Recover de estados antigos
- Temporal queries ("Como estava em T?")
```

### 3. Domain-Driven Design (DDD)

**Lógica de negócio isolada em Agregados com Invariantes.**

```
Agregado: GameState
├─ Identity: game_id
├─ Value Objects:
│  ├─ Position (file: 0..7, rank: 0..7)
│  ├─ Piece (kind, color)
│  ├─ Move (from, to, promotion)
│  └─ Board (64 squares)
├─ Invariantes:
│  ├─ Peça nunca desaparece sem ser capturada
│  ├─ Rey nunca pode estar em xeque após movimento
│  ├─ Cada jogador só move suas peças
│  └─ Movimento deve ser legal
└─ Commands:
   ├─ CreateGame → GameCreated
   ├─ MakeMove → MoveMade | MoveFailed
   └─ AbandonGame → GameAbandoned
```

---

## Architectural Layers

### Layer 1: Domain Layer

**Pura lógica de negócio, sem dependências externas.**

```elixir
lib/chess_server/domain/
├── aggregates/
│   └── game_state.ex          # Agregado root
├── commands/
│   ├── create_game.ex
│   ├── make_move.ex
│   └── abandon_game.ex
├── events/
│   ├── game_created.ex
│   ├── move_made.ex
│   └── check_detected.ex
└── validators/
    ├── move_validator.ex      # Lógica de xadrez
    ├── check_detector.ex
    └── legal_moves.ex
```

**Características:**
- ✅ Testável em isolamento
- ✅ Sem I/O
- ✅ Sem efeitos colaterais
- ✅ Puro, imutável

### Layer 2: Application Layer

**Use cases e orquestração.**

```elixir
lib/chess_server/application/
├── command_handlers/
│   └── game_handler.ex        # Orquestra commands
├── event_handlers/
│   └── game_projector.ex      # Consome eventos
└── services/
    └── game_query_service.ex  # Queries do read model
```

**Responsibilities:**
- Carregar agregado do event store
- Executar comando
- Persister eventos
- Publicar para subscribers

### Layer 3: Infrastructure Layer

**Implementações de persistência e comunicação.**

```elixir
lib/chess_server/infrastructure/
├── event_store/
│   ├── event_store_adapter.ex # Adapter para EventStore
│   └── event_repository.ex    # Persistência
├── projections/
│   ├── current_game.ex        # Schema
│   ├── game_history.ex
│   └── player_stats.ex
└── repositories/
    └── game_repository.ex     # Data access
```

**Detalhes:**
- PostgreSQL para EventStore (append-only)
- PostgreSQL para Read Model (desnormalizado)
- Redis para cache (cache-aside pattern)

### Layer 4: API Layer

**HTTP endpoints via Phoenix.**

```elixir
lib/chess_server_web/
├── controllers/
│   ├── game_controller.ex
│   └── player_controller.ex
├── views/
│   ├── game_view.ex
│   └── error_view.ex
└── router.ex                  # Routing
```

**Endpoints:**
- `POST /api/v1/games` - CreateGame
- `POST /api/v1/games/{id}/move` - MakeMove
- `GET /api/v1/games/{id}` - GetGameState
- `GET /api/v1/leaderboard` - GetLeaderboard

---

## Data Flow

### Fluxo de um Movimento (Write Path)

```
1. CLIENT REQUEST
   curl -X POST /api/v1/games/{id}/move \
     -d {player: white, from: e2, to: e4}

2. PHOENIX CONTROLLER
   GameController.move/2
   ├─ Parse params
   ├─ Validate structure
   └─ Call command handler

3. COMMAND HANDLER
   GameCommandHandler.handle_make_move/1
   ├─ Load GameState from EventStore
   │  (replay all events for this game_id)
   ├─ Validate with MoveValidator
   │  (check if move is legal)
   ├─ Apply move to GameState
   ├─ Detect state changes
   │  (checkmate? stalemate?)
   └─ Return list of events

4. PERSIST EVENTS
   EventStore.append_events/2
   ├─ Insert events to PostgreSQL
   ├─ Return event IDs
   └─ Publish to event stream

5. RESPONSE
   ├─ 200 OK + new game state
   └─ Client updates board

[Paralelo] EVENT PROCESSING:
   Projector receives events
   ├─ Updates CurrentGames table
   ├─ Inserts GameHistory row
   ├─ Updates PlayerStats
   └─ Invalidates Redis cache
```

### Fluxo de uma Query (Read Path)

```
1. CLIENT REQUEST
   curl GET /api/v1/games/{id}

2. QUERY SERVICE
   GameQueryService.get_game/1
   ├─ Check Redis cache
   │  ├─ HIT: Return cached data
   │  └─ MISS: Continue
   └─ Query PostgreSQL read model

3. DATABASE
   SELECT * FROM current_games
   WHERE game_id = $1

4. RETURN DATA
   {
     game_id, white, black,
     fen, status, current_player,
     created_at
   }

5. CACHE RESULT
   Redis.setex(key, ttl, data)
   (TTL: 1 hour for active games)

6. RESPONSE
   200 OK + game data
```

---

## Technology Stack

### Core

| Layer | Technology | Role |
|-------|-----------|------|
| **Language** | Elixir 1.14+ | Functional, concurrent, distributed |
| **Runtime** | Erlang/OTP 25+ | BEAM VM, process model, fault tolerance |
| **Web Framework** | Phoenix 1.7+ | HTTP, WebSockets, real-time |
| **ORM** | Ecto 3.10+ | Database, migrations, queries |

### Persistence

| Technology | Role |
|-----------|------|
| **PostgreSQL 14+** | Primary database, event store, read model |
| **Redis 7+** | Cache layer, pub/sub for events |
| **EventStore** | Event sourcing library |

### Development

| Tool | Role |
|------|------|
| **Credo** | Code linting |
| **Dialyzer** | Type checking |
| **ExUnit** | Testing framework |
| **Benchee** | Performance benchmarking |
| **ExDoc** | Documentation generation |

### DevOps

| Tool | Role |
|------|------|
| **Docker** | Containerization |
| **docker-compose** | Local multi-service setup |
| **GitHub Actions** | CI/CD pipeline |
| **Kubernetes** | Orchestration (optional) |

---

## Scalability

### Horizontal Scaling

**Write Side:**
```
Multiple app instances → Single EventStore
├─ All instances append to same PostgreSQL
├─ Conflicts handled with optimistic locking
└─ Guarantees ordering per aggregate
```

**Read Side:**
```
Multiple read replicas → Projected data
├─ Projectors run on each instance
├─ Read model syncs from event stream
├─ Eventual consistency (< 100ms typically)
└─ Scale reads infinitely
```

### Performance Characteristics

| Operation | Target | Method |
|-----------|--------|--------|
| Write (MakeMove) | < 50ms | Event Store + async projections |
| Read (GetGame) | < 10ms | Redis cache |
| Query (Leaderboard) | < 100ms | Indexed PostgreSQL |
| Move Validation | < 1ms | In-memory computation |

### Bottlenecks & Solutions

| Bottleneck | Issue | Solution |
|-----------|-------|----------|
| Event Store throughput | High write volume | Partitioning by game_id |
| Read Model lag | Projection delay | Eventual consistency SLA |
| Cache invalidation | Stale data | Event-driven cache invalidation |
| Database size | Event log grows | Archive old events |

---

## [ADVANCED] Advanced Topics

### 1. Consistency Guarantees

**Write Side (Strong Consistency):**
- ACID properties guaranteed
- Pessimistic locking on aggregate
- All-or-nothing event persistence

**Read Side (Eventual Consistency):**
- Projections lag behind writes by 10-100ms
- Acceptable for chess (game doesn't change every millisecond)
- Configurable cache TTL

### 2. Event Versioning

**Problema:** Eventos mudam de schema.

**Solução:** Versionamento + Upcasters

```elixir
defmodule MoveMade do
  # Version 2 (Current)
  defstruct [:game_id, :from, :to, :fen_after, :captured_piece, :v]

  def v1_to_v2(event_v1) do
    %MoveMade{
      game_id: event_v1.game_id,
      from: event_v1.from,
      to: event_v1.to,
      fen_after: event_v1.fen,
      captured_piece: nil,  # infer from fen diff
      v: 2
    }
  end
end
```

### 3. Snapshotting

**Problema:** Replaying 10k eventos leva muito tempo.

**Solução:** Snapshots a cada 100 eventos

```
Event Stream:
├─ Events 1-100 (Snapshot)
├─ Events 101-200 (Snapshot)
└─ Events 201-250

Load: Skip to latest snapshot, replay from there
```

---

## Deployment Architecture

### Development

```
Localhost:4000 → Elixir Process → PostgreSQL + Redis
```

### Production

```
Ingress (Nginx)
    ↓
Load Balancer
    ↓
├─ App Instance 1 ─┐
├─ App Instance 2  ├→ PostgreSQL (Primary + Replicas)
└─ App Instance N ─┘  Redis Cluster
                       Event Store (append-only)
```

---

## References

- [CQRS Pattern - Martin Fowler](https://martinfowler.com/bliki/CQRS.html)
- [Event Sourcing - Martin Fowler](https://martinfowler.com/eaaDev/EventSourcing.html)
- [DDD Quickly - Vaughn Vernon](https://vaughnvernon.com/books/)
- [Designing Event-Driven Systems - Ben Stopford](https://www.oreilly.com/library/view/designing-event-driven-systems/9781492038023/)

---

**Version:** 1.0  
**Last Updated:** Dezembro 2025  
**Status:** 🟢 Production Ready

[← Back to Index](./00-index.md) | [Next: Domain Model →](./03-domain-model.md)
