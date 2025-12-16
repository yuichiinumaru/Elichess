# PROJECT.md - Manifest do Projeto

**Chess Server CQRS em Elixir**

## 📋 Project Metadata

```yaml
project:
  name: Chess Server CQRS
  description: Servidor de xadrez altamente escalável com CQRS e Event Sourcing
  organization: TBD
  repository: https://github.com/your-org/chess-server
  
  version: "1.0.0"
  status: "In Development"
  
  tags:
    - elixir
    - cqrs
    - event-sourcing
    - ddd
    - chess
    - real-time
    - performance
```

---

## 👥 Team

| Role | Name | Email | GitHub |
|------|------|-------|--------|
| **Project Lead** | TBD | - | - |
| **Architecture** | TBD | - | - |
| **Lead Dev** | TBD | - | - |
| **DevOps** | TBD | - | - |
| **QA** | TBD | - | - |

---

## 📊 Project Goals

### Primary Goals

1. **Performance**: API throughput > 1000 req/sec
2. **Correctness**: 100% test coverage on domain logic
3. **Scalability**: Horizontal scaling para escrever + ler
4. **Maintainability**: Código limpo, bem documentado, CQRS padrão

### Success Metrics

| Métrica | Target | Current |
|---------|--------|---------|
| Move validation time | < 1ms | ? |
| API response time (p99) | < 100ms | ? |
| Test coverage | ≥ 85% | ? |
| Documentation | 100% | ? |
| Uptime | > 99.9% | ? |

---

## 🎯 Core Values

```
┌─────────────────────────────────────────┐
│        PROJECT CORE VALUES              │
├─────────────────────────────────────────┤
│ ✅ Correctness First                    │
│ ✅ Performance Conscious                │
│ ✅ Well Documented                      │
│ ✅ Production Ready                     │
│ ✅ Testable Code                        │
│ ✅ Team Collaboration                   │
└─────────────────────────────────────────┘
```

---

## 📚 Key Documents

### Essential Reading
- [00-Index](./docs/00-index.md) - Start here
- [01-Getting Started](./docs/01-getting-started.md) - Setup guide
- [02-Architecture](./docs/02-architecture.md) - System design
- [Task List](./chess_server_elixir_tasklist.md) - Complete breakdown

### Reference
- [Code Examples](./chess_elixir_code_examples.exs) - Implementation patterns
- [Roadmap](./chess_elixir_roadmap.md) - Timeline + dependencies
- [Quick Reference](./chess_elixir_quick_reference.md) - Elixir idioms

---

## 🏗️ Tech Stack

### Core Technologies

```
Language:     Elixir 1.14+
Runtime:      Erlang/OTP 25+
Framework:    Phoenix 1.7+
ORM:          Ecto 3.10+
Database:     PostgreSQL 14+
Cache:        Redis 7+
Container:    Docker 20.10+
```

### Key Libraries

```elixir
{:phoenix, "~> 1.7"},
{:ecto_sql, "~> 3.10"},
{:eventstore, "~> 1.4"},
{:commanded, "~> 1.4"},
{:jason, "~> 1.4"},
{:credo, "~> 1.7", only: [:dev, :test]},
{:dialyxir, "~> 1.4", only: :dev},
{:benchee, "~> 1.1", only: :dev},
{:ex_doc, "~> 0.30", only: :dev}
```

---

## 📅 Timeline

### Phase 1: Domain Model (Week 1)
- Board representation + FEN parsing
- Move validation + piece logic
- Check/checkmate detection
- Target: 50+ unit tests, 100% coverage

### Phase 2: CQRS Foundation (Week 2)
- Event definitions + serialization
- Command handlers
- Event store integration
- Target: Write model complete

### Phase 3: Read Side + API (Week 3)
- Projections + projector
- Query services
- Phoenix controllers
- Target: Full CQRS + API endpoints

### Phase 4: Polish + Deploy (Week 4)
- Performance benchmarking
- Docker + CI/CD
- Documentation
- Target: Production ready

---

## 🎓 Learning Path

```
Week 1:
├─ Elixir basics (pattern matching, pipes)
├─ Domain model implementation
└─ Unit testing with ExUnit

Week 2:
├─ Event sourcing concepts
├─ OTP (GenServer, supervision)
└─ Event store integration

Week 3:
├─ CQRS pattern deep dive
├─ Phoenix controllers
└─ Ecto queries

Week 4:
├─ Performance profiling
├─ Docker deployment
└─ CI/CD setup
```

---

## 🔧 Development Workflow

### Daily Routine

```bash
# 1. Start day
git pull origin main
iex -S mix phx.server

# 2. Work on feature
# Edit file
# Tests run automatically (--watch)

# 3. Before commit
mix test              # All tests
mix credo             # Lint
mix dialyzer          # Type check
mix format            # Format code

# 4. Commit
git add .
git commit -m "feat: add XYZ"
git push origin feature/xyz

# 5. End day
docker-compose down   # Clean up
```

### Code Review Checklist

Before merging:
- [ ] All tests passing
- [ ] Coverage maintained (≥ 85%)
- [ ] No dialyzer warnings
- [ ] No credo complaints
- [ ] Documentation updated
- [ ] PR description clear

---

## 📝 Coding Standards

### Elixir Style

```elixir
# ✅ DO
def calculate_total_cost(items) do
  items
  |> Enum.map(&get_price/1)
  |> Enum.sum()
end

# ❌ DON'T
def calculate_total_cost(items) do
  total = 0
  for item <- items do
    total = total + get_price(item)
  end
  total
end
```

### Module Organization

```elixir
defmodule MyModule do
  @moduledoc "Module documentation"

  alias OtherModule

  # Public functions first
  def public_function(arg) do
    private_function(arg)
  end

  # Private functions after
  defp private_function(arg) do
    arg
  end
end
```

### Testing Pattern

```elixir
defmodule MyModuleTest do
  use ExUnit.Case

  describe "function_name/1" do
    test "does X when given Y" do
      result = MyModule.function_name(input)
      assert result == expected
    end

    test "raises error when given invalid input" do
      assert_raise Error, fn ->
        MyModule.function_name(invalid)
      end
    end
  end
end
```

---

## 🚀 Deployment

### Environments

```
Development:
  - Database: local PostgreSQL
  - Cache: local Redis
  - Server: localhost:4000
  - Updates on every save

Staging:
  - Database: production-like
  - Cache: Redis cluster
  - Server: staging.chess-server.io
  - Manual deployment

Production:
  - Database: PostgreSQL HA
  - Cache: Redis cluster + failover
  - Server: api.chess-server.io
  - Automated deployment + monitoring
```

### Deployment Command

```bash
# Via GitHub Actions (automatic)
git push origin main
# → CI/CD triggers
# → Tests run
# → Docker build
# → Push to registry
# → Deploy to K8s

# Manual (if needed)
mix deps.get
MIX_ENV=prod mix compile
MIX_ENV=prod mix release
./release.sh
```

---

## 🐛 Debugging Guide

### Common Issues

**Tests timing out:**
```elixir
# Increase timeout in config/test.exs
config :ex_unit, timeout: 10_000
```

**Database migration error:**
```bash
mix ecto.rollback
mix ecto.migrate
```

**Performance degradation:**
```bash
mix run bench/diagnostics.exs
```

### Logging

```elixir
require Logger

# Development
Logger.debug("Value: #{inspect(value)}")

# Production
Logger.info("Game created", game_id: game.id)
Logger.warn("Invalid move", player: player_id)
Logger.error("Database error", error: error)
```

---

## 📊 Repository Structure

```
chess-server/
├── README.md
├── PROJECT.md                 # ← Este arquivo
├── mix.exs                    # Projeto definition
├── mix.lock                   # Dependências locked
│
├── lib/
│   └── chess_server/
│       ├── application.ex     # OTP app
│       ├── domain/            # Core logic (DDD)
│       ├── application/       # Use cases
│       ├── infrastructure/    # Persistence
│       └── api/               # HTTP
│
├── test/
│   ├── unit/                  # Isolated tests
│   ├── integration/           # System tests
│   └── performance/           # Benchmarks
│
├── config/
│   ├── config.exs             # Shared
│   ├── dev.exs
│   ├── test.exs
│   └── prod.exs
│
├── priv/
│   └── repo/
│       └── migrations/        # DB migrations
│
├── docs/
│   ├── 00-index.md
│   ├── 01-getting-started.md
│   ├── 02-architecture.md
│   └── ...
│
├── .github/
│   └── workflows/
│       ├── test.yml           # CI
│       └── deploy.yml         # CD
│
└── docker-compose.yml         # Local setup
```

---

## 🤝 Contributing

### Getting Started

1. Clone repo: `git clone ...`
2. Setup: `docker-compose up -d`
3. Check task list for what to work on
4. Create feature branch: `git checkout -b feature/xyz`
5. Make changes + tests
6. PR to `main`

### Commit Messages

```
Format: <type>: <subject>

feat: add move validation
fix: resolve checkmate detection bug
docs: update API documentation
test: increase test coverage for board
refactor: simplify move validator
chore: update dependencies
```

### PR Template

```markdown
## What does this PR do?

Brief description of changes.

## How to test?

1. Step 1
2. Step 2

## Checklist

- [ ] Tests pass
- [ ] Coverage maintained
- [ ] Documentation updated
- [ ] No dialyzer warnings
```

---

## 📞 Support

### Getting Help

1. **Documentation**: Check [docs/00-index.md](./docs/00-index.md)
2. **Code Examples**: See [chess_elixir_code_examples.exs](./chess_elixir_code_examples.exs)
3. **Team**: Ask in #chess-server Slack
4. **Issues**: File issue with `help wanted` label

### Reporting Bugs

Include:
- What you expected
- What actually happened
- Steps to reproduce
- Relevant logs/error messages

---

## 📜 License

TBD (Choose: MIT, Apache 2.0, etc.)

---

## 🎉 Acknowledgments

Built with:
- Elixir community
- Phoenix framework
- EventStore library
- Commanded CQRS library

---

**Version:** 1.0  
**Last Updated:** Dezembro 2025  
**Status:** 🟢 Production Ready  
**Maintainer:** TBD

---

**Questions?** Open an issue or ask in Slack.

[← Back to Docs](./docs/README.md)
