# 00 - Índice e Visão Geral

**Documentação Forge - Chess Server CQRS em Elixir**

## 🎯 Objetivo do Projeto

Construir um servidor de xadrez altamente escalável usando **CQRS (Command Query Responsibility Segregation)** e **Event Sourcing**, implementado em **Elixir + Phoenix**, com suporte a real-time, benchmarking rigoroso e deployment automatizado.

**Target Audience:**
- Backend Engineers (Elixir)
- System Architects (CQRS/Event Sourcing)
- DevOps Engineers (Docker/K8s)
- Product Managers (Features/Roadmap)

---

## 📋 Índice de Documentação

### Getting Started
| Doc | Audience | Tempo | Objetivo |
|-----|----------|-------|----------|
| [01-Getting Started](./01-getting-started.md) | Everyone | 15 min | Setup inicial + first run |
| [02-Architecture](./02-architecture.md) | Arch + Devs | 30 min | Visão geral de sistemas |

### Core Concepts
| Doc | Audience | Tempo | Objetivo |
|-----|----------|-------|----------|
| [03-Domain Model](./03-domain-model.md) | Devs | 45 min | Lógica de xadrez |
| [04-CQRS Pattern](./04-cqrs-pattern.md) | Arch + Devs | 60 min | Padrão CQRS detalhado |
| [05-API Reference](./05-api-reference.md) | Devs | 30 min | Endpoints + schemas |

### Operations
| Doc | Audience | Tempo | Objetivo |
|-----|----------|-------|----------|
| [06-Deployment](./06-deployment.md) | Ops | 40 min | Deploy + CI/CD |
| [07-Testing](./07-testing.md) | QA + Devs | 50 min | Strategy + examples |
| [08-Performance](./08-performance.md) | Arch + Ops | 45 min | Benchmarks + tuning |

---

## 🗺️ Mapa Mental do Projeto

```
┌─────────────────────────────────────────┐
│   CHESS SERVER CQRS - VISÃO GERAL      │
└────────────┬────────────────────────────┘
             │
    ┌────────┼────────┐
    │        │        │
    v        v        v
┌─────┐  ┌─────────┐  ┌──────┐
│GAME │  │EVENT    │  │READ  │
│STATE│→ │SOURCING │→ │MODEL │
│AGGR │  │         │  │CACHE │
└─────┘  └─────────┘  └──────┘
    │        │        │
    │   ┌────┴────┐   │
    │   │ CQRS    │   │
    │   │ BUS     │   │
    │   └─────────┘   │
    │                 │
┌───┴─────────────────┴───┐
│  PHOENIX HTTP API       │
│  (Controllers)          │
└─────────────────────────┘
    │
┌───┴──────────────────────┐
│  POSTGRESQL + REDIS      │
│  (Persistence + Cache)   │
└──────────────────────────┘
```

---

## 🚀 Quick Navigation

### I Just Want To...

**...run the project locally**
→ [01-Getting Started: Local Setup](./01-getting-started.md#local-setup)

**...understand the architecture**
→ [02-Architecture: System Design](./02-architecture.md#system-design)

**...implement a new feature**
→ [03-Domain Model](./03-domain-model.md) → [04-CQRS Pattern](./04-cqrs-pattern.md) → [07-Testing](./07-testing.md)

**...deploy to production**
→ [06-Deployment: Production Guide](./06-deployment.md#production)

**...debug performance issues**
→ [08-Performance: Profiling](./08-performance.md#profiling)

**...write tests**
→ [07-Testing: Test Strategies](./07-testing.md#strategies)

---

## 📊 Project Stats

| Métrica | Target | Status |
|---------|--------|--------|
| Code Coverage | ≥ 85% | ⏳ |
| Move Validation | < 1ms | ⏳ |
| Checkmate Detection | < 500μs | ⏳ |
| Perft NPS | > 100k | ⏳ |
| API Throughput | > 1000 req/s | ⏳ |
| Uptime | > 99.9% | ⏳ |
| Documentation | 100% | ⏳ |

---

## 🔗 Related Resources

### Internal
- [Tasklist Granular](../chess_server_elixir_tasklist.md) - Task breakdown completo
- [Code Examples](../chess_elixir_code_examples.exs) - Snippets de referência
- [Roadmap](../chess_elixir_roadmap.md) - Timeline + Sprints

### External
- [Elixir Docs](https://elixir-lang.org/docs)
- [Phoenix Docs](https://hexdocs.pm/phoenix)
- [Event Store](https://hexdocs.pm/eventstore)
- [CQRS Pattern](https://martinfowler.com/bliki/CQRS.html)

---

## 📝 Document Conventions

### Code Examples
```elixir
# ✅ Production-ready code
# Executable, tested, copy-paste safe
```

### Diagrams
```
Use ASCII art para arquitetura
Simples e legível
```

### Links
- **Internal**: `[Text](./filename.md#section)`
- **External**: `[Text](https://...)`
- **Code Refs**: `` `module.function` ``

### Marked Sections
- `[ADVANCED]` - Conteúdo para leitura posterior
- `[TODO]` - Ainda não documentado
- `⚠️ WARNING` - Cuidado, armadilha comum
- `💡 TIP` - Dica útil
- `🔍 DEEP DIVE` - Exploração detalhada

---

## 👥 Contato & Suporte

| Papel | Responsável | Email |
|-------|-------------|-------|
| Arch | TBD | - |
| Dev Lead | TBD | - |
| DevOps | TBD | - |
| Product | TBD | - |

---

**Version:** 1.0  
**Last Updated:** Dezembro 2025  
**Status:** 🟢 Production Ready

[← Back to Docs](./README.md)
