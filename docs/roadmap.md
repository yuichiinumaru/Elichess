# Product Roadmap & Feedback

This document tracks future enhancements, architectural refactoring, and feature requests derived from stakeholder feedback.

## 🏗 Architectural Refactoring (Priority 1)

### 1. Fix "Addicted Read" (Race Condition)
**Problem:** The Controller immediately reads from the DB after dispatching a command. Due to CQRS async nature, it often reads stale data.
**Solution:**
- Projectors must broadcast updates via `Phoenix.PubSub`.
- Controllers/Views should listen/wait for these events (or Client uses Sockets).
- **Task:** Add PubSub broadcast to `GameProjector`.

### 2. Remove Changeset from Projections
**Problem:** `GameProjector` uses `Game.changeset`. Events are immutable facts; using changesets risks rejecting valid events due to validation rules meant for user input.
**Solution:** Use `Repo.insert!` and `Repo.update!` directly with structs.
**Task:** Refactor `GameProjector`.

### 3. Standardize Naming Convention
**Goal:** Align event and module names with a hierarchical standard.
**Current:** `ChessServer.Domain.Events.GameCreated`
**Target:**
- `ChessServer.Game` (Context/Aggregate)
- `ChessServer.Game.Started` (Event)
- `ChessServer.Game.Progressed` (Event - for moves)
- `ChessServer.Game.Finished` (Event - for end game)

---

## 🚀 Feature Requests

### 1. Rich Events (Priority 2)
**Goal:** Improve vocabulary.
- `GameFinished` (Checkmate/Stalemate/Draw).
- `PieceCaptured` (Optional, for achievements).
- `CheckDetected` (Optional).

### 2. Game Modes
**Description:** Support different time controls.
- **Blitz**
- **Classic**
- **Rapid**

### 3. Draw Offers
**Description:** Allow players to propose a draw.

### 4. Real-time Notifications (PubSub)
**Description:** Push updates to clients immediately after write.

---

## 📅 Phase 6 Completion Status (Advanced Rules)
- [x] En Passant
- [x] Castling
- [x] Check Validation
- [x] Checkmate/Stalemate Detection
- [x] 50-Move Rule
- [x] Promotion (Basic Persistence)
