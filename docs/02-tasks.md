# Detailed Project Roadmap & Task List

This document serves as the granular, step-by-step task list based on expert architectural feedback.

## Status Legend
- [x] Completed
- [ ] Pending

---

## ♟️ Phase 6: Advanced Chess Rules (Core Logic)

**Goal:** Ensure the chess engine enforces all rules strictly, including game termination.

- [x] **En Passant**
    - [x] Add `en_passant_target` to `GameState`.
    - [x] Update `MoveValidator` to validate En Passant moves.
    - [x] Update `GameState` to execute En Passant capture (remove pawn).
    - [x] Add tests.

- [x] **Castling (Roque)**
    - [x] Add `castling_rights` to `GameState`.
    - [x] Implement validation: King/Rook moved? Path clear?
    - [x] **Critical:** Implement "Path Safe" check (King cannot pass through check).
    - [x] Update `GameState` to move Rook along with King.
    - [x] Add tests.

- [x] **Check & Checkmate (Xeque & Mate)**
    - [x] Implement `CheckValidator.is_in_check?/2`.
    - [x] Integrate `CheckValidator` into `MoveValidator` (Prevent self-check).
    - [x] Implement `GameRules` for Game Over detection (Checkmate vs Stalemate).
    - [x] Add tests for Fool's Mate and Stalemate positions.

- [x] **Promotion**
    - [x] Update `Move` struct to accept `promotion` type.
    - [x] Update `MoveMade` event to persist `promotion` selection.
    - [x] Update `GameState` to replace Pawn with promoted piece.

- [x] **50-Move Rule**
    - [x] Track `half_move_clock`.
    - [x] Reset on Pawn move or Capture.
    - [x] Declare Draw if clock >= 100.

---

## 🏗 Phase 7: Architecture Refactoring (Tech Debt & Scalability)

**Goal:** Fix race conditions, standardize events, and prepare for scaling.

### 7.1. Fix "Addicted Read" (Race Condition)
- [x] **PubSub Integration**
    - [x] Add `Phoenix.PubSub` broadcast to `GameProjector` after DB update.
    - [x] Broadcast topic: `"games:{id}"`.
    - [x] Payload: `{:game_updated, game_struct}`.

### 7.2. Projector Safety
- [x] **Remove Changeset Validation**
    - [x] Refactor `GameProjector` to use `Repo.insert!` and `Repo.update!` directly.
    - [x] Ensure Events are treated as facts, not user input.

### 7.3. Event Standardization (Semantic Events)
- [ ] **Define Semantic Events**
    - [ ] Create `ChessServer.Domain.Events.PieceCaptured` (game_id, piece, square).
    - [ ] Create `ChessServer.Domain.Events.KingChecked` (game_id, color).
    - [ ] Create `ChessServer.Domain.Events.PawnPromoted` (game_id, square, piece_type).
- [ ] **Refactor Aggregate to Emit Rich Events**
    - [ ] Update `Game.execute` to emit list of events: `[MoveMade, PieceCaptured?, KingChecked?, GameFinished?]`.
    - [ ] Ensure `MoveMade` remains the primary event for state reconstruction.

### 7.4. Naming Convention (Refactoring)
- [ ] **Rename Modules to Standard**
    - [ ] Rename `GameCreated` -> `ChessServer.Game.Started`.
    - [ ] Rename `MoveMade` -> `ChessServer.Game.Progressed`.
    - [ ] Rename `GameFinished` -> `ChessServer.Game.Finished`.
    - [ ] Update all references in Aggregates, Projectors, and Tests.

### 7.5. Read Model Library
- [ ] **Migrate to `commanded_ecto_projections`**
    - [ ] Add dependency `commanded_ecto_projections`.
    - [ ] Replace `GameProjector` (EventHandler) with `EctoProjection` module.
    - [ ] Verify database migrations and replay capability.

---

## 🚀 Phase 8: New Features & Domain Separation

### 8.1. Domain Separation
- [ ] **Extract Pure Logic**
    - [ ] Create `ChessServer.Chess` context (or similar pure module).
    - [ ] Move `Board`, `MoveValidator`, `GameRules` logic into this context.
    - [ ] Ensure `Game` aggregate delegates to `ChessServer.Chess` functions.
    - [ ] *Goal:* Allow other aggregates (DailyProblem) to use the same logic.

### 8.2. Game Modes
- [ ] **Time Controls**
    - [ ] Add `time_control` to `CreateGame` command (Blitz, Rapid, Classic).
    - [ ] Implement Timer Logic (GenServer or check timestamps).
- [ ] **Draw Offers**
    - [ ] Add command `OfferDraw`.
    - [ ] Add event `DrawOffered`.
    - [ ] Add command `RespondToDraw` (Accept/Decline).

### 8.3. Strong Typing
- [ ] **Refactor Primitives**
    - [ ] Replace `:white`/`:black` atoms with `ChessServer.Domain.Color` struct or Enum where appropriate.
    - [ ] Ensure type safety in Command definitions.

---

## 📅 Roadmap Summary

1.  **Immediate:** Complete Phase 7.3 (Semantic Events) and 7.4 (Naming Convention).
2.  **Next:** Migrate to `commanded_ecto_projections` (Phase 7.5).
3.  **Future:** Implement Game Modes and Draw Offers (Phase 8).
