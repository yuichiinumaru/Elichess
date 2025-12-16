# Chess Server CQRS - Documentação Forge

Esta pasta contém a documentação técnica completa do projeto usando a metodologia **Forge**.

## 📚 Estrutura de Documentação

```
docs/
├── 00-index.md                 # Índice principal
├── 01-getting-started.md       # Guia de início rápido
├── 02-architecture.md          # Arquitetura do sistema
├── 03-domain-model.md          # Modelo de domínio
├── 04-cqrs-pattern.md          # Padrão CQRS explicado
├── 05-api-reference.md         # Referência da API
├── 06-deployment.md            # Guia de deployment
├── 07-testing.md               # Estratégia de testes
├── 08-performance.md           # Benchmarking e otimizações
└── README.md                   # Este arquivo
```

## 🎯 Convenções Forge

### 1. **Audience-First Approach**
Cada documento é escrito para um público específico:
- **Devs**: Implementadores (técnico, código)
- **Arch**: Arquitetos (design, patterns)
- **Ops**: DevOps (deployment, monitoring)
- **PM**: Product/Projeto (overview, roadmap)

### 2. **Clear Structure**
- Headings descritivos de ações/outcomes
- Short paragraphs (1-2 sentences max)
- Code examples copy-paste ready
- Visual diagrams para conceitos complexos

### 3. **Progressive Disclosure**
- Overview → Details → Advanced
- Links para contexto relacionado
- Sections opcionais marcadas [ADVANCED]

### 4. **Always Include**
- Table of Contents
- Prerequisites/Assumptions
- Quick Start (se aplicável)
- Troubleshooting
- References

## 📖 Como Navegar

**Primeira vez?**
→ Leia `01-getting-started.md`

**Entender a visão geral?**
→ Leia `02-architecture.md`

**Implementar uma feature?**
→ Leia `03-domain-model.md` + `04-cqrs-pattern.md`

**Fazer deploy?**
→ Leia `06-deployment.md`

**Otimizar performance?**
→ Leia `08-performance.md`

---

**Versão:** 1.0  
**Status:** 🟢 Production Ready  
**Last Updated:** Dezembro 2025
