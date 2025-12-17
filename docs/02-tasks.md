# 02 - Project Tasks & Roadmap

**Status:** 🟡 In Progress
**Total Progress:** ~60%

---

## 📋 Phase 0: Initialization & Documentation (✅ Completed)

### 0.1 Documentation Structure
- [x] Create `docs/` directory.
- [x] Move `forge_00_index.md` to `docs/00-index.md`.
- [x] Move `forge_01_getting_started.md` to `docs/01-getting-started.md`.
- [x] Move `forge_02_architecture.md` to `docs/02-architecture.md`.
- [x] Move `docs_README.md` to `docs/README.md`.
- [x] Move `PROJECT.md` to `docs/PROJECT.md`.
- [x] Rename `_Servidor...` file to `docs/archive_conversation.md`.
- [x] Verify links between documents.

### 0.2 Document Creation
- [x] Write `docs/03-domain-model.md` covering Entities and Validation.
- [x] Write `docs/04-cqrs-pattern.md` explaining Command/Query flow.
- [x] Write `docs/05-api-reference.md` documenting endpoints.
- [x] Write `docs/06-deployment.md` with Docker instructions.
- [x] Write `docs/07-testing.md` outlining strategy.
- [x] Write `docs/08-performance.md` with targets.
- [x] Write `docs/09-troubleshooting.md` for common errors.

---

## 🛠️ Phase 1: Environment & Project Setup (✅ Completed)

### 1.1 Elixir Project Scaffolding
- [x] Install/Verify Elixir version (1.14+).
- [x] Create generic mix project structure (`mix new` equivalent manual setup).
- [x] Configure `.gitignore` for `_build`, `deps`, `bin`.

### 1.2 Dependencies & Configuration
- [x] Create `mix.exs`.
- [x] Add dependency: `phoenix`.
- [x] Add dependency: `ecto_sql` & `postgrex`.
- [x] Add dependency: `commanded`.
- [x] Add dependency: `eventstore`.
- [x] Add dependency: `jason`.
- [x] Create `config/config.exs` (Base config).
- [x] Create `config/dev.exs` (Development environment).
- [x] Create `config/test.exs` (Test environment).
- [x] Create `config/prod.exs` (Production environment).

### 1.3 Application Architecture
- [x] Create `lib/chess_server/application.ex` (OTP Supervisor).
- [x] Create `lib/chess_server/repo.ex` (Ecto Repo).
- [x] Create `lib/chess_server/event_store.ex` (Commanded Adapter).
- [x] Create `lib/chess_server_web/endpoint.ex` (Phoenix Endpoint).
- [x] Register children in Supervisor: `Repo`, `EventStore`, `Endpoint`.

---

## ♟️ Phase 2: Domain Model Implementation (✅ Completed)

### 2.1 Core Entities
- [x] Implement `ChessServer.Domain.Position`.
  - [x] Struct definition (`file`, `rank`).
  - [x] `new/2` with range validation (0..7).
  - [x] `from_string/1` (e.g., "e4").
- [x] Implement `ChessServer.Domain.Piece`.
  - [x] Struct definition (`color`, `type`).
  - [x] `to_fen_char/1`.
  - [x] `from_fen_char/1`.
- [x] Implement `ChessServer.Domain.Board`.
  - [x] Map-based storage (`%{Position => Piece}`).
  - [x] `place_piece/3`.
  - [x] `move_piece/3`.
  - [x] `initial_setup/0` (Standard chess layout).
  - [x] `to_fen/1` (Serialize to FEN string).

### 2.2 Logic & Rules
- [x] Implement `ChessServer.Domain.Move`.
  - [x] Struct definition (`from`, `to`, `promotion`).
- [x] Implement `ChessServer.Domain.MoveValidator`.
  - [x] Basic validation (bounds, turn color).
  - [x] Pawn logic (push, double push, capture).
  - [x] Knight logic (L-shape).
  - [x] Bishop/Rook/Queen logic (sliding + path clear).
  - [x] King logic (1 square).
  - [x] Friendly fire prevention.
- [x] Implement `ChessServer.Domain.GameState`.
  - [x] Struct definition (Aggregate State).
  - [x] `make_move/2` (State transition logic).
  - [x] Turn switching logic.

### 2.3 Domain Testing
- [x] Create `test/chess_server/domain/board_test.exs`.
- [x] Create `test/chess_server/domain/move_validator_test.exs`.

---

## 🔄 Phase 3: CQRS Foundation (✅ Completed)

### 3.1 Commands & Events
- [x] Create `ChessServer.Domain.Commands.CreateGame`.
- [x] Create `ChessServer.Domain.Commands.MakeMove`.
- [x] Create `ChessServer.Domain.Events.GameCreated`.
- [x] Create `ChessServer.Domain.Events.MoveMade`.
- [x] Ensure `Jason.Encoder` derivation for serialization.

### 3.2 Aggregate Root
- [x] Create `ChessServer.Domain.Aggregates.Game`.
- [x] Implement `execute/2` for `CreateGame`.
  - [x] Handle `nil` state (initial creation).
  - [x] Validate uniqueness (idempotency check).
- [x] Implement `execute/2` for `MakeMove`.
  - [x] Delegate to `GameState.make_move/2`.
  - [x] Return `MoveMade` event with FEN.
- [x] Implement `apply/2` for `GameCreated`.
  - [x] Initialize `GameState`.
- [x] Implement `apply/2` for `MoveMade`.
  - [x] Update board and turn.

### 3.3 Wiring
- [x] Create `ChessServer.Router`.
  - [x] Dispatch commands to `Game` aggregate.
- [x] Create `ChessServer.App` (Commanded Application).
- [x] Update `application.ex` to start `ChessServer.App`.
- [x] Create `GameTest` for Aggregate logic.

---

## 📖 Phase 4: Read Model & Projections (✅ Completed)

### 4.1 Database Schema
- [x] Create Migration `create_games`.
  - [x] Fields: `id`, `white`, `black`, `fen`, `status`.
- [x] Create Schema `ChessServer.Infrastructure.Projections.Game`.
  - [x] Ecto schema definition.
  - [x] Changeset for validation.

### 4.2 Projectors
- [x] Create `ChessServer.Infrastructure.Projectors.GameProjector`.
  - [x] Use `Commanded.Event.Handler`.
  - [x] Handle `GameCreated` (Insert).
  - [x] Handle `MoveMade` (Update FEN/Turn).
- [x] Register Projector in supervision tree.

---

## 🌐 Phase 5: API Layer (✅ Completed)

### 5.1 Web Infrastructure
- [x] Create `ChessServerWeb`.
- [x] Create `ChessServerWeb.Router`.
  - [x] Define `/api` scope.
- [x] Create `ChessServerWeb.Telemetry`.
- [x] Create `ChessServerWeb.ErrorJSON`.
- [x] Create `ChessServerWeb.FallbackController`.

### 5.2 Controllers
- [x] Create `ChessServerWeb.GameController`.
  - [x] `POST /api/games` (Dispatch CreateGame).
  - [x] `GET /api/games/:id` (Read Projection).
  - [x] `POST /api/games/:id/move` (Dispatch MakeMove).
- [x] Create `ChessServerWeb.GameJSON`.
  - [x] JSON formatting for Game resource.

---

## 🚧 Phase 6: Advanced Rules (TODO)

### 6.1 Special Moves
- [ ] **En Passant**
  - [ ] Update `GameState` to track `en_passant_square`.
  - [ ] Update `MoveValidator` for pawn capture.
  - [ ] Update `MoveMade` event to include special state.
- [ ] **Castling**
  - [ ] Update `GameState` to track `castling_rights` (KQkq).
  - [ ] Update `MoveValidator` to check rights and path.
  - [ ] Update `Board` to move Rook along with King.
- [ ] **Promotion**
  - [ ] Handle `promotion` field in `Move`.
  - [ ] Update `Board` to replace Pawn with requested piece.

### 6.2 Game End Conditions
- [ ] **Check Detection**
  - [ ] Implement `is_check?(board, color)`.
  - [ ] Prevent moves that leave King in check.
- [ ] **Checkmate**
  - [ ] Implement `is_checkmate?`.
  - [ ] Update `GameState` status to `:white_won` or `:black_won`.
- [ ] **Stalemate**
  - [ ] Implement `is_stalemate?`.
  - [ ] Update status to `:draw`.

---

## 🚀 Phase 7: Deployment & Ops (TODO)

### 7.1 Containerization
- [ ] Create `Dockerfile`.
  - [ ] Multi-stage build (Builder vs Runner).
  - [ ] Install hex/rebar.
  - [ ] Compile release.
- [ ] Create `docker-compose.yml`.
  - [ ] Service: `db` (Postgres).
  - [ ] Service: `app` (Phoenix).
  - [ ] Service: `eventstore` (if separate DB needed).

### 7.2 Production Hardening
- [ ] Configure SSL in `prod.exs`.
- [ ] Setup `rel/env.sh.eex`.
- [ ] Add Health Check endpoint.

---

## 🧪 Phase 8: Testing & Quality (TODO)

### 8.1 Integration Tests
- [ ] Implement `ChessServerWeb.GameControllerTest` with real DB.
- [ ] Test full CQRS loop (Command -> Event -> Projection -> Query).

### 8.2 Code Quality
- [ ] Run `mix format`.
- [ ] Run `mix credo --strict`.
- [ ] Run `mix dialyzer`.

### 8.3 Performance Benchmarks
- [ ] Create `bench/perft.exs`.
- [ ] Measure nodes per second (NPS).
- [ ] Measure API latency under load.
