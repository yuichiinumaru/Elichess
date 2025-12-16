# 01 - Getting Started

**Audience:** Everyone  
**Time:** 15 minutes  
**Goal:** Setup inicial e rodar o projeto localmente

---

## 📋 Table of Contents

1. [Prerequisites](#prerequisites)
2. [Local Setup](#local-setup)
3. [First Run](#first-run)
4. [Verify Installation](#verify-installation)
5. [Troubleshooting](#troubleshooting)

---

## Prerequisites

### Requisitos de Sistema

- **Elixir 1.14+** (com Erlang/OTP 25+)
- **PostgreSQL 14+** (banco de dados)
- **Redis 7+** (cache)
- **Docker 20.10+** e **docker-compose 2.0+** (optional, for containerized setup)
- **Git** (version control)

### Verify Your Setup

```bash
# Check Elixir
elixir --version
# Expected: Elixir 1.14.x compiled with Erlang/OTP 25.x

# Check Erlang
erl -eval 'erlang:system_info(otp_release)' -noshell -s init stop
# Expected: 25 or higher

# Check PostgreSQL
psql --version
# Expected: psql (PostgreSQL) 14.0 or higher

# Check Redis
redis-cli --version
# Expected: redis-cli 7.0.0 or higher
```

⚠️ **WARNING**: Versões antigas podem causar incompatibilidades. Atualize se necessário.

---

## Local Setup

### Option 1: Docker Compose (Recomendado)

**Benefício:** Sem dependências locais, ambiente isolado, pronto para produção.

```bash
# 1. Clone o repositório
git clone https://github.com/your-org/chess-server.git
cd chess-server

# 2. Configure variáveis de ambiente
cp .env.example .env

# 3. Inicie containers
docker-compose up -d

# 4. Aguarde inicialização (2-3 min)
docker-compose logs -f app
```

**Verificar status:**
```bash
docker-compose ps
# Deve mostrar: app, postgres, redis (all running)
```

**Parar containers:**
```bash
docker-compose down
```

### Option 2: Local Development (Mais rápido para dev)

**Benefício:** Feedback mais rápido, debugging mais fácil.

#### 1. Install Dependencies

```bash
# Elixir + Phoenix dependencies
mix deps.get

# Compile código
mix compile

# Create database
mix ecto.create

# Run migrations
mix ecto.migrate
```

#### 2. Start Services

**Em 3 terminais diferentes:**

```bash
# Terminal 1: PostgreSQL
postgres -D /usr/local/var/postgres

# Terminal 2: Redis
redis-server

# Terminal 3: Phoenix dev server
mix phx.server
```

**Alternativa (um comando):**
```bash
# Se você tem foreman ou overmind instalado
foreman start
# ou
overmind s
```

---

## First Run

### 1. Acesse a Aplicação

```bash
# Servidor rodando em:
open http://localhost:4000

# API disponível em:
open http://localhost:4000/api/v1
```

### 2. Create Your First Game

```bash
curl -X POST http://localhost:4000/api/v1/games \
  -H "Content-Type: application/json" \
  -d '{
    "white_player": "Alice",
    "black_player": "Bob"
  }'

# Expected Response:
# {
#   "game_id": "550e8400-e29b-41d4-a716-446655440000",
#   "status": "created",
#   "white_player": "Alice",
#   "black_player": "Bob"
# }
```

### 3. Make Your First Move

```bash
# Substitua {GAME_ID} com o ID do jogo acima

curl -X POST http://localhost:4000/api/v1/games/{GAME_ID}/move \
  -H "Content-Type: application/json" \
  -d '{
    "player": "white",
    "from": "e2",
    "to": "e4"
  }'

# Expected Response:
# {
#   "game_id": "...",
#   "fen": "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1",
#   "status": "active",
#   "current_player": "black"
# }
```

### 4. Query Game State

```bash
curl http://localhost:4000/api/v1/games/{GAME_ID}

# Retorna estado atual do jogo com FEN completo
```

💡 **TIP**: Use a ferramenta `http.rest` no VS Code para salvar requests:

**File: `requests.http`**
```http
@baseUrl = http://localhost:4000/api/v1
@gameId = 550e8400-e29b-41d4-a716-446655440000

### Create Game
POST {{baseUrl}}/games
Content-Type: application/json

{
  "white_player": "Alice",
  "black_player": "Bob"
}

### Make Move
POST {{baseUrl}}/games/{{gameId}}/move
Content-Type: application/json

{
  "player": "white",
  "from": "e2",
  "to": "e4"
}

### Get Game
GET {{baseUrl}}/games/{{gameId}}
```

---

## Verify Installation

### Run Tests

```bash
# Todos os testes
mix test

# Apenas testes rápidos (sem performance)
mix test --exclude slow

# Com cobertura de código
mix coveralls
```

**Expected Output:**
```
Compiling 23 files ...
Generated chess_server app
.............................
Finished in 2.3s
31 doctest, 89 unit tests, 0 failures
```

### Check Code Quality

```bash
# Lint
mix credo

# Type checking
mix dialyzer

# Code formatting
mix format --check-formatted
```

**Expected:** 0 warnings/errors

### Database Check

```bash
# Connect ao PostgreSQL
mix ecto.info

# Expected: shows migration status
# Migrations: 5 migrated (Migrations)
```

---

## Project Structure

```
chess-server/
├── lib/chess_server/
│   ├── domain/              # Domain logic
│   │   ├── aggregates/      # GameState
│   │   ├── commands/        # CreateGame, MakeMove
│   │   ├── events/          # GameCreated, MoveMade
│   │   └── validators/      # MoveValidator
│   ├── application/         # Use cases
│   ├── infrastructure/      # Persistence
│   └── api/                 # HTTP interfaces
│
├── config/
│   ├── config.exs           # Shared config
│   ├── dev.exs              # Development
│   ├── prod.exs             # Production
│   └── test.exs             # Testing
│
├── test/
│   ├── unit/                # Unit tests
│   ├── integration/         # Integration tests
│   └── support/             # Test helpers
│
├── priv/
│   └── repo/migrations/     # Database migrations
│
└── mix.exs                  # Project definition
```

---

## Common Commands

```bash
# Development
iex -S mix phx.server        # Start with IEx console
mix phx.server               # Start dev server
mix phx.gen.context ...      # Generate context

# Database
mix ecto.create              # Create database
mix ecto.migrate             # Run migrations
mix ecto.rollback            # Undo last migration
mix ecto.reset               # Drop + create + migrate

# Testing
mix test                     # Run all tests
mix test test/unit           # Run only unit tests
mix test --watch             # Auto-rerun on changes

# Code Quality
mix credo                    # Lint
mix dialyzer                 # Type checking
mix format                   # Auto-format code
mix docs                     # Generate documentation

# Utilities
mix deps.get                 # Download dependencies
mix clean                    # Clean artifacts
mix deps.tree                # Show dependency tree
```

---

## Environment Variables

**File: `.env`**

```bash
# Database
DATABASE_URL=postgresql://postgres:postgres@localhost/chess_db

# Redis
REDIS_URL=redis://localhost:6379

# Server
PORT=4000
MIX_ENV=dev
```

**For Docker:**

```bash
# Already configured in docker-compose.yml
# No need to set manually
```

---

## Troubleshooting

### "Elixir not found"

```bash
# Install via asdf
asdf install elixir 1.14.0
asdf global elixir 1.14.0

# Or Homebrew
brew install elixir
```

### "Port 4000 already in use"

```bash
# Kill existing process
lsof -i :4000
kill -9 <PID>

# Or use different port
PORT=4001 mix phx.server
```

### "Connection refused (postgres)"

```bash
# Ensure PostgreSQL is running
brew services start postgresql

# Or with Docker
docker run -d -p 5432:5432 postgres:15
```

### "Connection refused (redis)"

```bash
# Ensure Redis is running
brew services start redis

# Or with Docker
docker run -d -p 6379:6379 redis:7-alpine
```

### "Database doesn't exist"

```bash
# Create database
mix ecto.create

# Run migrations
mix ecto.migrate
```

### Tests failing with "ExUnit timeout"

```bash
# Increase timeout em config/test.exs
config :ex_unit,
  timeout: 10_000  # 10 seconds (default 1s)
```

---

## Next Steps

✅ **Installation complete!**

### Now What?

1. **Understand Architecture** → Read [02-Architecture.md](./02-architecture.md)
2. **Learn Domain Model** → Read [03-Domain-Model.md](./03-domain-model.md)
3. **Implement Features** → Read [04-CQRS-Pattern.md](./04-cqrs-pattern.md)
4. **Write Tests** → Read [07-Testing.md](./07-testing.md)
5. **Deploy to Production** → Read [06-Deployment.md](./06-deployment.md)

---

## Support

**Having issues?**
1. Check [Troubleshooting](#troubleshooting) above
2. Search closed GitHub issues
3. Ask in #chess-server Slack channel
4. File new issue with `setup` label

---

**Version:** 1.0  
**Last Updated:** Dezembro 2025  
**Status:** 🟢 Production Ready

[← Back to Index](./00-index.md)
