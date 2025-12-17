# DOCUMENTATION_GUIDELINES.md - Forge Documentation Pattern

**Como manter consistência na documentação usando a metodologia Forge.**

---

## 📌 Princípios Forge

### 1. Audience First

Cada documento deve começar indicando seu público:

```markdown
# Documento Title

**Audience:** Backend Engineers  
**Time:** 30 minutes  
**Goal:** Entender como o sistema funciona

---
```

**Públicos comuns:**
- `Everyone` - Todos devem ler
- `Backend Engineers` - Implementadores Elixir
- `Architects` - Decisões de design
- `DevOps / Ops` - Deployment e monitoring
- `QA / Testers` - Testes e validação
- `Product Managers` - Visão geral e roadmap

### 2. Clear Structure

**Sempre use:**
- Table of Contents no início
- Seções com títulos descritivos
- Parágrafos curtos (1-2 sentences)
- Exemplos de código copy-paste ready
- Diagrams para conceitos complexos

```markdown
## 📋 Table of Contents

1. [Section Name](#section-name)
2. [Another Section](#another-section)
3. [Troubleshooting](#troubleshooting)

---

## Section Name

Brief intro (2-3 sentences explaining what this section covers).

### Subsection

Details...

---

## Troubleshooting

Common issues...
```

### 3. Progressive Disclosure

Estruture do básico → avançado:

```markdown
# Topic

## Overview (Leia isto primeiro)
- High-level concept
- When to use it
- Benefits

## How to Use (Implementação)
- Step-by-step
- Code examples
- Common patterns

## [ADVANCED] Deep Dive (Opcional)
- Internals
- Performance details
- Edge cases
```

### 4. Always Include

Todo documento deve ter:
- ✅ Table of Contents
- ✅ Audience + Time estimate
- ✅ Clear objective
- ✅ Practical examples (se applicable)
- ✅ Troubleshooting section
- ✅ References/Links
- ✅ Version + Last updated

---

## 📝 Writing Style

### Tone

**✅ Professional but friendly**
```
❌ "You need to do this"
✅ "To accomplish this, you can..."

❌ "This is complicated"
✅ "This involves several steps, but we'll break it down"

❌ "Obviously..."
✅ "As you might expect..." or just explain it
```

### Sentences

**✅ Short and active**
```
❌ "The server is being run by the process, which handles requests 
   coming from clients connected to it"

✅ "The server processes incoming requests from clients"
```

### Paragraphs

**✅ Maximum 2 sentences per paragraph**
```markdown
This is the first sentence that introduces the concept.
This is the second sentence that explains why you should care.

This is a new idea that requires its own paragraph.
Here's the explanation for this new idea.
```

### Lists

**✅ Use when showing**
- Multiple items
- Steps in a process
- Options to choose from

```markdown
❌ "You can configure the database with database URL, connection 
   pooling size, and SSL verification"

✅ Configure the database with:
- Database URL
- Connection pooling size  
- SSL verification (optional)
```

---

## 🔗 Navigation

### Internal Links

```markdown
# Link to other docs
[Getting Started](./01-getting-started.md)
[Architecture Overview](./02-architecture.md#system-design)

# Link to sections within same doc
[See Troubleshooting](#troubleshooting)

# Link to code files
[Game Controller](../lib/chess_server_web/controllers/game_controller.ex#L42)
```

### External Links

```markdown
# Always use descriptive link text
[Read about CQRS Pattern](https://martinfowler.com/bliki/CQRS.html)

❌ [here](https://...)
✅ [Elixir Pattern Matching Guide](https://...)
```

---

## 💻 Code Examples

### Guidelines

✅ **DO:**
- Include explanation of what the code does
- Make examples copy-paste ready
- Use realistic code, not toy examples
- Include both good and bad examples

❌ **DON'T:**
- Show incomplete code without context
- Leave cryptic variable names
- Forget to explain the "why"

### Format

```markdown
# ✅ GOOD
Elixir uses pipes to chain transformations.

\`\`\`elixir
user
  |> get_user()
  |> validate_active()
  |> send_notification()
\`\`\`

The pipe operator (`|>`) passes the output of one function 
as the first argument of the next.

# ❌ BAD
Use pipes like this:

\`\`\`elixir
user |> f1() |> f2() |> f3()
\`\`\`
```

### Multi-language Examples

```markdown
Show examples in the language of the document section:

\`\`\`elixir
# Elixir examples in Elixir-focused sections
\`\`\`

\`\`\`bash
# Shell commands
\`\`\`

\`\`\`sql
# Database queries
\`\`\`

\`\`\`json
# API responses
\`\`\`
```

---

## 🎨 Formatting Elements

### Emphasis

```markdown
**Bold** for important terms or actions
*Italic* for emphasis or document references
`Code` for inline code, variables, file names
```

### Callout Boxes

```markdown
💡 **TIP**: Use this pattern when...

⚠️ **WARNING**: Watch out for this gotcha...

🔍 **DEEP DIVE** [ADVANCED]: Advanced topic for later...

✅ **BEST PRACTICE**: Always do this...

ℹ️ **NOTE**: This is important context...
```

### Tables

```markdown
| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Value 1  | Value 2  | Value 3  |
| Value 4  | Value 5  | Value 6  |

Use for: comparisons, options, checklists
Don't use: for narrative content
```

### Diagrams

```markdown
Use ASCII for:
- Architecture diagrams
- Flowcharts
- Data structures
- Simple visuals

┌─────────────────┐
│   Component     │
└────────┬────────┘
         │
         v
┌─────────────────┐
│   Another       │
└─────────────────┘
```

---

## ✅ Checklist: Before Publishing

- [ ] **Audience is clear** - Who should read this?
- [ ] **Time estimate is accurate** - Can you read it in that time?
- [ ] **Has Table of Contents** - Can you scan to find what you need?
- [ ] **Paragraphs are short** - Max 2 sentences per paragraph?
- [ ] **Examples are copy-paste** - Can someone use them directly?
- [ ] **No undefined terms** - Explained jargon?
- [ ] **Links are working** - All internal/external links valid?
- [ ] **Version updated** - Shows when this was last relevant?
- [ ] **Tested the instructions** - Did you follow them yourself?
- [ ] **No typos** - Spell-checked?
- [ ] **Consistent formatting** - Same style as other docs?
- [ ] **Has troubleshooting** - Most common issues covered?

---

## 📋 Template: New Documentation

```markdown
# [NUM] - [Topic Name]

**Audience:** [Who should read]  
**Time:** [X minutes]  
**Goal:** [What they'll learn]

---

## 📋 Table of Contents

1. [Section 1](#section-1)
2. [Section 2](#section-2)
3. [Troubleshooting](#troubleshooting)

---

## Section 1

Intro paragraph explaining the section.

### Subsection 1.1

Details with code examples.

\`\`\`elixir
# Copy-paste ready code
\`\`\`

### Subsection 1.2

More details.

---

## Section 2

Content...

---

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Issue 1 | Fix 1 |
| Issue 2 | Fix 2 |

---

## References

- [Link 1](url)
- [Link 2](url)

---

**Version:** 1.0  
**Last Updated:** Dezembro 2025  
**Status:** 🟢 Production Ready

[← Previous Doc](./prev.md) | [Next Doc →](./next.md)
```

---

## 🏗️ Document Organization

### File Naming

```
docs/
├── 00-index.md                 # Overview + TOC
├── 01-getting-started.md       # Setup
├── 02-architecture.md          # System design
├── 03-domain-model.md          # Domain logic
├── 04-cqrs-pattern.md          # Pattern explanation
├── 05-api-reference.md         # Endpoints
├── 06-deployment.md            # Ops
├── 07-testing.md               # QA
├── 08-performance.md           # Benchmarking
├── 09-troubleshooting.md       # Common issues
└── README.md                   # Docs overview
```

**Pattern:** `{NUMBER}-{topic}.md`
- Number: Sequential order (00, 01, 02...)
- Topic: kebab-case, descriptive

### Folder Structure

```
project-root/
├── docs/                       # Main documentation
│   ├── 00-index.md            # START HERE
│   ├── 01-getting-started.md
│   └── ...
├── PROJECT.md                 # Project manifest
├── README.md                  # Repository README
├── DOCUMENTATION_GUIDELINES.md # Este arquivo
└── [Code folders]
```

---

## 🔄 Maintenance

### Update Cycle

- **Review monthly** - Does it still apply?
- **Update quarterly** - New features documented?
- **Major revision yearly** - Architecture changes?

### Version Numbers

```markdown
**Version:** 1.0  → Major.Minor

- 1.0 = Initial release
- 1.1 = Minor updates/clarifications
- 2.0 = Major architectural change

**Last Updated:** Dezembro 2025

**Status:** 🟢 Current | 🟡 Outdated | 🔴 Deprecated
```

---

## 🎓 Examples from This Project

### Good Documentation

```markdown
# ✅ From 01-Getting Started

First Run section:
- Clear prerequisite check
- Step-by-step instructions  
- Actual API curl commands
- Expected responses
- Tips for common tools
- Troubleshooting section
```

### Document Linking

```markdown
# ✅ Navigation pattern

[← Back to Index](./00-index.md)
[Next: Domain Model →](./03-domain-model.md)

Readers always know where they are and where to go next.
```

---

## 🤝 Collaboration

### Review Process

1. **Write** - Follow this guide
2. **Self-review** - Use checklist
3. **Request review** - Pass to team
4. **Feedback** - Address comments
5. **Merge** - Publish to docs

### Feedback Template

```markdown
# Review Feedback

## ✅ What's Good
- Clear structure
- Good examples

## 🔧 What Can Improve
- Paragraph 3 is too long
- Missing troubleshooting

## ❓ Questions
- Should we mention...?
```

---

## 📞 When to Create New Docs

Create a new document when:
- ✅ Feature/topic big enough for own section
- ✅ Different audience than existing docs
- ✅ Standalone knowledge people need
- ✅ Will be referenced frequently

Don't create new docs when:
- ❌ Content fits in existing doc
- ❌ Just a small addition
- ❌ Duplicates existing content

---

## 🎯 Success Criteria

Documentation is successful when:
- ✅ Users find what they need within 2 clicks
- ✅ Instructions are followed without confusion
- ✅ Examples work on first try
- ✅ Troubleshooting resolves 80% of issues
- ✅ Readers get value in expected time
- ✅ Document stays current

---

**Version:** 1.0  
**Last Updated:** Dezembro 2025  
**Status:** 🟢 Production Ready

[← Back to Docs](./docs/README.md) | [Read Getting Started →](./docs/01-getting-started.md)
