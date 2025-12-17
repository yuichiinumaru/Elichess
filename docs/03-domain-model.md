# 03 - Domain Model

**Audience:** Developers
**Time:** 45 minutes
**Goal:** Understand the core Chess logic implementation

---

## 📋 Table of Contents

1. [Overview](#overview)
2. [Core Entities](#core-entities)
3. [Move Validation](#move-validation)
4. [Game State](#game-state)

---

## Overview

The Domain Model isolates the pure business logic of Chess. It has zero dependencies on the database, web, or framework. It is pure Elixir functions and structs.

Key characteristics:
- **Immutability**: All operations return new state.
- **Purity**: No side effects.
- **Testability**: Easily unit tested.

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
- Board boundaries

\`\`\`elixir
MoveValidator.valid_move?(board, move, :white)
# returns :ok or {:error, reason}
\`\`\`

---

## Game State

`GameState` is the aggregate root for the domain logic. It holds the `Board`, current `turn_color`, `status`, and `move_count`.

\`\`\`elixir
{:ok, new_state} = GameState.make_move(current_state, move)
\`\`\`

It handles:
1. Validating the move via `MoveValidator`.
2. Updating the `Board`.
3. Switching turns.
4. Incrementing move count.

---
**Version:** 1.0
**Status:** 🟢 Implemented
