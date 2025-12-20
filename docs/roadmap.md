# Product Roadmap & Feedback

This document tracks future enhancements, architectural refactoring, and feature requests derived from stakeholder feedback.

## 🏗 Architectural Refactoring

### 1. Standardize Naming Convention
**Goal:** Align event and module names with a hierarchical standard.
**Current:** `ChessServer.Domain.Events.GameCreated`
**Target:**
- `ChessServer.Game` (Context/Aggregate)
- `ChessServer.Game.Started` (Event)
- `ChessServer.Game.Progressed` (Event - for moves)
- `ChessServer.Game.Finished` (Event - for end game)

### 2. Projection Library
**Goal:** Replace manual `Commanded.Event.Handler` with `commanded_ecto_projections`.
**Reasoning:** Manual handlers can cause issues when rebuilding the database from the event store history (replay concurrency/idempotency issues).

### 3. Aggregate Responsibility
**Goal:** Ensure aggregates remain thin.
**Status:** ✅ Confirmed. Game logic is delegated to `Board`, `MoveValidator`, and `GameRules` modules. This facilitates future extensions like "DailyProblem" or "Exercise" aggregates reusing the same logic.

---

## 🚀 Feature Requests

### 1. Game Modes
**Description:** Support different time controls.
- **Blitz**
- **Classic**
- **Rapid**
**Implementation:** Add `time_control` field to `CreateGame` command and `GameState`. Implement timer logic (likely requiring a GenServer per game or client-side + server validation).

### 2. Draw Offers
**Description:** Allow players to propose a draw.
**Mechanics:**
- Command: `OfferDraw`
- Event: `DrawOffered`
- Response: `AcceptDraw` / `DeclineDraw`
- Resolution: Triggers `GameFinished` (Draw).

### 3. Explicit End Game Events
**Description:** Emit explicit events when game ends.
**Current:** Status field in `GameState` updates to `:checkmate_x_wins`.
**Target:** Emit `ChessServer.Game.Finished` event containing reason (`checkmate`, `stalemate`, `draw`, `resignation`) and winner.

### 4. Real-time Notifications (PubSub)
**Description:** Push updates to clients immediately after write.
**Mechanics:**
- Emit to `Phoenix.PubSub` after event persistence.
- Webhook integration for external systems.

---

## 📅 Phase 6 Completion Status (Advanced Rules)
- [x] En Passant
- [x] Castling
- [x] Check Validation
- [x] Checkmate/Stalemate Detection
- [x] 50-Move Rule
- [x] Promotion (Basic Persistence)
