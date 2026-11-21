---
layout: default
lastmod: 2026-05-13
title: "Domain-specific languages"
description: "SPLectrum's reading of domain-specific languages: how DSLs sit in the seed's framework, what the engineering record shows, and where the thinking goes."
---

[Home](/) > [Language](/language/) > [Types](/language/types/) > Domain-specific languages

# Domain-specific languages

A domain-specific language is a language built for a particular domain rather than for general-purpose use. As a type it cuts across other type-cuts on this axis: most DSLs are [formal](/language/types/formal/) (explicit grammar, defined semantics), many are [software](/language/types/software/) (executable, machine-processed), but the type also reaches into domains that neither formal nor software captures — [chemical nomenclature, musical notation, philosophical vocabularies](/positioning/subjects/d/domain-specific-languages/the-pattern-beyond-software/). The classification works under P4 conditions: there is no single dimension that exhausts what languages are, so types are cross-cutting cuts rather than competing partitions.

For the full reference treatment — definition, history, classification, internal and external approaches, workbenches, design considerations — see the [positioning cluster on DSLs](/positioning/subjects/d/domain-specific-languages/).

## DSLs through P4

What [P4](/seed/interrelational-pluralism/) names — languages are interrelational and have equal standing in potential — DSLs make visible in practice.

Every DSL takes from a wider context. An [internal DSL](/positioning/subjects/d/domain-specific-languages/internal-dsls/) takes from its host language — Ruby, Haskell, Kotlin. An [external DSL](/positioning/subjects/d/domain-specific-languages/external-dsls/) takes from mathematical, engineering, or linguistic resources. In each case, the DSL develops its own vocabulary, its own operators, its own grammar, shaped by the domain it serves.

The resulting language is not a derivative of what spawned it. SQL is not a subset of English. CSS is not a subset of mathematics. Each has its own standing in potential — its own reach, its own way of making a domain visible. The DSL makes meaning in its own terms, even when it was born from terms that do different work elsewhere.

The [proliferation of DSLs in software](/positioning/subjects/d/domain-specific-languages/history/) — hundreds of them, new ones appearing whenever a domain becomes well enough understood — is what P4 looks like when one domain spawns languages of its own. Languages do not just coexist; they produce each other, and each production is a new language with its own standing.

## What DSLs already demonstrate

DSLs are not a hypothesis. The engineering record shows thousands of small focused languages in production, used by millions of practitioners, composing into larger systems.

Composition is already established at multiple levels. Unix pipes compose DSLs at the shell level — a regex inside grep feeds into awk feeds into sed, each a separate language, each doing focused work. [Language workbenches](/positioning/subjects/d/domain-specific-languages/language-workbenches/) compose DSLs inside single documents — requirements, state machines, and test specifications coexisting, each in its own notation. Internal DSLs compose with their hosts through the host's type system and evaluation model. Embedded DSLs in functional languages compose through monadic structure.

The hypothesis that small focused languages can do real work — and can compose into systems larger than any single language could address — is already evidenced by decades of software practice. SPLectrum's reading of this record is that the structural pattern the seed describes is already running in engineering, whether or not it is framed that way. The philosophical framing for *why* this works is still being developed, but the *that* is settled.

## Where the thinking is heading

Three threads are in progress. Each names a connection SPLectrum sees; none claims the connection is closed.

**Small language models.** SPLectrum is currently working through a connection between DSLs and what SPLectrum's working thinking calls small language models (SLM): the structural abstraction of a language doing focused interpretive work in a specific domain. The connection is that DSLs in software look like one concrete instantiation of this abstraction — a language that takes a bounded domain, builds vocabulary for it, and does interpretive work within it. The full formalisation of SLM as a SPLectrum-internal concept is open. It is being worked through alongside the operator-register thinking.

**Decomposition.** SPLectrum's working approach to non-human contexts — other life forms, simpler relational structures — is not to generalise human language outward but to decompose it inward: to find what components fit simpler contexts naturally. DSLs are where decomposition has already happened in software practice. SQL is what you get when you pull out the capability of asking a structured question and build a focused language around it. CSS is what you get when you pull out the capability of describing visual appearance. The relationship between this engineering decomposition — pragmatic, project-driven — and the methodological decomposition SPLectrum is developing is something the thinking is still working through.

**Engineering implications.** SPLectrum's engineering architecture will need its own internal languages — protocols, interfaces, perhaps domain-specific notations for different concerns within the system. The principles being explored here — small focused languages, composition, equal standing — have practical consequences for how that architecture is built.

## Closing

DSLs sit at a point where SPLectrum's philosophical framework and an established engineering tradition look at the same phenomenon from different angles. The engineering record provides evidence that small focused languages compose and produce real work. The seed provides a framework for why that pattern recurs. The synthesis between the two — through small language models, decomposition, and the architecture being built — is in progress.

## Sources

- [DSL positioning cluster](/positioning/subjects/d/domain-specific-languages/) — full reference treatment.
- Fowler, M. (2010). *[Domain-Specific Languages](https://martinfowler.com/dsl.html)*. Addison-Wesley.
- Iverson, K. E. (1980). [Notation as a tool of thought](https://www.jsoftware.com/papers/tot.htm). *Communications of the ACM*, 23(8), 444–465.
