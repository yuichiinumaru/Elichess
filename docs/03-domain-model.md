# 03 - Domain Model

**Audience:** Developers
**Time:** 45 minutes
**Goal:** Understand the core Chess logic implementation

---

## 📋 Table of Contents

1. [Overview](#overview)
2. [Standard Naming Convention](#standard-naming-convention)
3. [Core Entities](#core-entities)
4. [Move Validation](#move-validation)
5. [Game State](#game-state)

---

## Overview

The Domain Model isolates the pure business logic of Chess. It has zero dependencies on the database, web, or framework. It is pure Elixir functions and structs.

Key characteristics:
- **Immutability**: All operations return new state.
- **Purity**: No side effects.
- **Testability**: Easily unit tested.

---

## Standard Naming Convention

We adhere to a hierarchical naming convention for better organization and discoverability, especially for Events.

**Structure:**
`Context.Entity.Action`

**Examples:**
- `ChessServer.Game.Started` (instead of `GameCreated`)
- `ChessServer.Game.Progressed` (instead of `MoveMade`)
- `ChessServer.Game.Finished` (Event for Checkmate/Draw)

*Note: Current implementation uses `ChessServer.Domain.Events.*`. Refactoring to this standard is planned.*

---

## Core Entities

### Position
Represents a coordinate on the board (file 0-7, rank 0-7).
\`\`\`elixir
%Position{file: 0, rank: 0} # a1
\`\`\`

### Piece
Represents a chess piece with color and type.
\`\`\`elixir
%Piece{color: :white, type: :pawn}
\`\`\`

### Board
Represents the 8x8 grid. Implemented as a Map of `Position => Piece` for sparse storage and O(1) lookup.
\`\`\`elixir
%Board{
  squares: %{
    %Position{file: 4, rank: 0} => %Piece{type: :king, ...}
  }
}
\`\`\`

---

## Move Validation

The `MoveValidator` module enforces standard chess rules.

**Supported Validations:**
- Turn order (White moves first)
- Piece movement patterns (Pawn, Knight, Bishop, Rook, Queen, King)
- Path blocking (cannot jump over pieces, except Knight)
- Capturing rules (cannot capture own pieces)
- **Advanced Rules:** En Passant, Castling, Promotion.
- **Safety:** Check validation (cannot move King into check).

\`\`\`elixir
MoveValidator.valid_move?(game_state, move)
# returns :ok or {:error, reason}
\`\`\`

---

## Game State

`GameState` is the aggregate root for the domain logic. It holds the `Board`, current `turn_color`, `status`, `move_count`, and advanced tracking fields (`en_passant_target`, `castling_rights`).

\`\`\`elixir
{:ok, new_state} = GameState.make_move(current_state, move)
\`\`\`

It handles:
1. Validating the move via `MoveValidator`.
2. Applying moves, captures, castling, and promotion.
3. Detecting Game Over conditions via `GameRules` (Checkmate, Stalemate, 50-move rule).
4. Switching turns.

---
**Version:** 1.1
**Status:** 🟢 Updated (Advanced Rules)
