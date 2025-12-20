# Components

## Board
- **Class:** `.board`
- **Layout:** CSS Grid (8x8).
- **Styling:** 4px solid gold border.
- **Responsiveness:** Size depends on `--board-size` which is `min(80vh, 600px)`.

## Square
- **Class:** `.square` (plus `.light` or `.dark`)
- **Content:** Unicode chess piece (`.piece`).
- **States:**
    - `.selected`: Inset gold shadow (`box-shadow: inset 0 0 0 4px var(--accent-color)`).
    - `.last-move`: Gold background highlight.
    - `.check`: Red background highlight.

## Button
- **Class:** `.btn`
- **Style:** Solid gold background, black text (high contrast).
- **Behavior:** Full width, bold text.
- **Hover:** Darker gold background.

## Card
- **Class:** `.card`
- **Usage:** Grouping content in the sidebar (Controls, Instructions).
- **Style:** Semi-transparent background, subtle border radius and border.

## Modal
- **Class:** `.modal`
- **Structure:** Overlay (`rgba(0,0,0,0.8)`) + Content Box (`.modal-content`).
- **Usage:** Pawn Promotion selection.
- **Toggle:** Add/remove `.active` class.
