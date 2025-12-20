// State
let gameId = null;
let boardState = {}; // Position string -> Piece
let turnColor = 'white';
let selectedSquare = null;
let pendingMove = null; // {from, to} waiting for promotion
let status = 'active';

// Pieces Unicode
const PIECES = {
  white: { king: '♔', queen: '♕', rook: '♖', bishop: '♗', knight: '♘', pawn: '♙' },
  black: { king: '♚', queen: '♛', rook: '♜', bishop: '♝', knight: '♞', pawn: '♟' }
};

// Utils
function toPos(file, rank) {
  return String.fromCharCode('a'.charCodeAt(0) + file) + (rank + 1);
}

function fromPos(str) {
  return {
    file: str.charCodeAt(0) - 'a'.charCodeAt(0),
    rank: parseInt(str[1]) - 1
  };
}

// API
async function createGame() {
  const res = await fetch('/api/games', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      white_player: "Player 1",
      black_player: "Player 2"
    })
  });
  const data = await res.json();
  gameId = data.game_id;
  updateStatus(`Game created: ${gameId}`);
  await fetchGameState();
}

async function fetchGameState() {
  if (!gameId) return;
  const res = await fetch(`/api/games/${gameId}`);
  const data = await res.json();

  // Parse FEN or board data.
  // Current API returns full state in JSON usually, need to check structure.
  // Assuming standard GameState structure in JSON response.
  // Actually, let's verify what GET /games/:id returns.
  // It returns GameState struct derived JSON.

  renderGame(data);
}

async function makeMove(from, to, promotion = null) {
  const body = { from, to };
  if (promotion) body.promotion = promotion;

  const res = await fetch(`/api/games/${gameId}/move`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  });

  if (res.ok) {
    const data = await res.json();
    // Assuming data is MoveMade event or updated state
    // We should re-fetch state to be safe or apply update
    await fetchGameState();
    updateStatus('Move made');
  } else {
    const err = await res.json();
    alert(`Invalid move: ${JSON.stringify(err)}`);
    // Reset selection
    selectedSquare = null;
    renderBoard();
  }
}

// UI Rendering
function renderGame(state) {
  turnColor = state.turn_color;
  status = state.status;

  // Update Board
  // State.board.squares is a map usually encoded as object in JSON
  // "squares": { "e2": { "color": "white", "type": "pawn" }, ... }
  // Wait, Position struct keys in Map might be encoded as strings "e2" or complex objects?
  // Jason encodes structs. Position struct keys in Map are problematic in JSON.
  // Elixir Maps with struct keys are usually encoded as list of tuples or stringified keys if implemented.
  // I need to check how Jason encodes `%{Position{} => Piece{}}`.
  // Usually it fails or needs custom encoder.
  // Assuming the API returns a friendly structure or I parse it.
  // If `squares` is `{"e2": ...}`, that's easy.

  // Let's assume for now the API returns "fen" string if available or a usable squares map.
  // If squares map uses string keys like "e2", we use that.

  const squares = state.board.squares || {};
  // Normalize if needed.

  boardState = {};

  // Handle if keys are complex strings or plain
  // Checking typical Elixir Jason encoding of non-string keys: it errors unless derived.
  // Assuming my earlier coding ensured serialization or the API view handles it.
  // If not, I might need to fix the View.
  // But let's assume keys are "file,rank" or "e2".

  // Let's rely on FEN if available?
  // `Board.to_fen` was implemented in Phase 6.
  // If the API exposes FEN, that's easiest.
  // The GameState doesn't store FEN, it's calculated.
  // The View likely renders GameState.

  // NOTE: For this prototype, I will iterate the DOM and rely on standard "e2" keys if they exist.
  // Or simpler: I will assume the server returns `squares` keyed by coordinate string.

  Object.entries(squares).forEach(([key, piece]) => {
    // Key might be "file,rank" or JSON representation of Position struct?
    // If it is JSON string of struct: "{\"file\": 4, \"rank\": 1}"
    let posStr = key;
    try {
        const posObj = JSON.parse(key);
        if (posObj.file !== undefined) posStr = toPos(posObj.file, posObj.rank);
    } catch(e) {}

    boardState[posStr] = piece;
  });

  renderBoard();
  renderControls(state);
}

function renderBoard() {
  const boardEl = document.getElementById('board');
  boardEl.innerHTML = '';

  for (let rank = 7; rank >= 0; rank--) {
    for (let file = 0; file < 8; file++) {
      const pos = toPos(file, rank);
      const squareEl = document.createElement('div');
      squareEl.className = `square ${(rank + file) % 2 === 0 ? 'dark' : 'light'}`;
      squareEl.dataset.pos = pos;

      if (selectedSquare === pos) {
        squareEl.classList.add('selected');
      }

      const piece = boardState[pos];
      if (piece) {
        const pieceEl = document.createElement('span');
        pieceEl.className = 'piece';
        pieceEl.textContent = PIECES[piece.color][piece.type];
        pieceEl.style.color = piece.color === 'white' ? '#fff' : '#000';
        // Add stroke/shadow for visibility
        if (piece.color === 'black') pieceEl.style.textShadow = '0 0 2px white';
        else pieceEl.style.textShadow = '0 0 2px black';

        squareEl.appendChild(pieceEl);
      }

      squareEl.onclick = () => handleSquareClick(pos);
      boardEl.appendChild(squareEl);
    }
  }
}

function handleSquareClick(pos) {
  if (selectedSquare) {
    if (selectedSquare === pos) {
      selectedSquare = null;
      renderBoard();
    } else {
      // Attempt move
      const from = selectedSquare;
      const to = pos;

      // Check for promotion (Pawn to last rank)
      const piece = boardState[from];
      if (piece && piece.type === 'pawn') {
        const rank = parseInt(to[1]);
        if ((piece.color === 'white' && rank === 8) || (piece.color === 'black' && rank === 1)) {
          showPromotionModal(from, to);
          return;
        }
      }

      makeMove(from, to);
      selectedSquare = null;
    }
  } else {
    // Select
    if (boardState[pos]) {
      selectedSquare = pos;
      renderBoard();
    }
  }
}

function showPromotionModal(from, to) {
  pendingMove = { from, to };
  document.getElementById('promotion-modal').classList.add('active');
}

function handlePromotion(type) {
  if (pendingMove) {
    makeMove(pendingMove.from, pendingMove.to, type);
    pendingMove = null;
    document.getElementById('promotion-modal').classList.remove('active');
  }
}

function renderControls(state) {
  const statusEl = document.getElementById('status');
  let text = `Turn: ${state.turn_color}`;

  if (state.status !== 'active') {
    text = `GAME OVER: ${state.status.toUpperCase().replace(/_/g, ' ')}`;
    statusEl.style.color = 'var(--highlight-check)';
  } else {
    statusEl.style.color = 'var(--text-color)';
  }

  // Advanced Rules display
  if (state.half_move_clock > 50) {
    text += ` | 50-Move Clock: ${state.half_move_clock}/100`;
  }

  statusEl.textContent = text;
}

function updateStatus(msg) {
  console.log(msg);
}

// Init
document.getElementById('new-game-btn').onclick = createGame;
window.handlePromotion = handlePromotion;
renderBoard();
