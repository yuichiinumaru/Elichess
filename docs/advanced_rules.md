# Advanced Rules Implementation

## Overview
Implemented advanced chess rules and game over detection.

## Features
- **En Passant:** Capture logic and target tracking.
- **Castling:** Rights tracking, path validation (including checking through check), and move execution.
- **Promotion:** Pawn promotion logic (defaults to Queen if unspecified in Move struct, though MoveMade event supports it).
- **Check Detection:** `CheckValidator` checks if a King is under attack.
- **Game Over:** `GameRules` calculates Checkmate and Stalemate eager-ly on every state change.
- **50-Move Rule:** `GameState` tracks `half_move_clock` and declares draw if it reaches 100.

## Architecture
- `ChessServer.Domain.Logic.CheckValidator`: Pure function to detect checks.
- `ChessServer.Domain.Logic.GameRules`: Pure function to determine game status.
- `ChessServer.Domain.MoveValidator`: Integrated with CheckValidator to prevent self-check.
- `ChessServer.Domain.GameState`: Orchestrates state updates, using GameRules to set status.
- `ChessServer.Domain.Aggregates.Game`: Updated to persist promotion info in events and replay full logic to ensure consistency.

## Testing
- Unit tests added for all new modules.
- Covered edge cases (e.g., castling through check, en passant validation, 50-move rule reset).
