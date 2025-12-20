# Colors

The application uses a CSS variable-based palette defined in `:root`.

## Palette

### Backgrounds
- **`--bg-color`** `#1a1a1d`: Deep charcoal, almost black. Main application background.
- **`--card-bg`** `rgba(255, 255, 255, 0.05)`: Subtle transparent white for containers.

### Board Colors
- **`--board-dark`** `#6f4e37`: Coffee brown. Used for dark squares.
- **`--board-light`** `#f5deb3`: Wheat/Cream. Used for light squares.

### Accents
- **`--accent-color`** `#d4af37`: Metallic Gold. Used for borders, buttons, and highlights.
- **`--accent-hover`** `#b4941f`: Darker gold for hover states.

### Text
- **`--text-color`** `#f0f0f0`: Off-white for high readability on dark backgrounds.

### Status Indicators
- **`--highlight-move`** `rgba(212, 175, 55, 0.5)`: Semi-transparent gold for last move indication.
- **`--highlight-check`** `rgba(255, 0, 0, 0.5)`: Semi-transparent red for King in check or Game Over errors.

## Usage
Colors should always be referenced via `var(--variable-name)` to allow for future theming.
