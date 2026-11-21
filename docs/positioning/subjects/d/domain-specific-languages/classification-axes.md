---
layout: default
lastmod: 2026-05-13
title: "DSL Classification Axes"
description: "How domain-specific languages are classified: internal or external, declarative or imperative, notational or executable, Turing-complete or not, and more."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [DSL](/positioning/subjects/d/domain-specific-languages/) > Classification Axes

# DSL Classification Axes

Domain-specific languages vary along several independent dimensions. No single classification captures everything worth knowing about a DSL — a real language sits at a specific position across all of these axes simultaneously, and the same language can be classified differently depending on which axis is in view. The axes below represent the most widely used distinctions in the literature.

## Internal vs external

This is [Fowler](https://martinfowler.com/bliki/DomainSpecificLanguage.html)'s primary distinction and the one that shapes most subsequent design decisions.

An **internal DSL** (also called an embedded DSL) lives inside a host language. It uses the host's syntax, parser, and tooling, but arranges them so that the resulting code reads as domain-specific. The DSL's grammar is the host language's grammar with strategic choices about which features to use. [jOOQ](https://www.jooq.org/) builds type-safe SQL queries inside Java; [RSpec](https://rspec.info/) expresses test specifications inside Ruby.

An **external DSL** has its own grammar and its own parser. It stands independently of any host language and bears full responsibility for its syntax and semantics. SQL defines its own grammar for relational querying; regular expressions define their own syntax for pattern matching.

The choice between internal and external determines what trade-offs are available. An internal DSL inherits the host's ecosystem — IDE support, debugger, package management — but is bounded by the host's syntactic surface. An external DSL has full syntactic freedom but must build its tooling from scratch. The distinction describes implementation strategy, but the felt weight can vary independently: some embedded DSLs are heavyweight enough to feel like standalone languages (Gradle's Kotlin DSL), while some external DSLs are minimal enough to barely register as languages (a configuration format with three keywords).

See [Internal DSLs](/positioning/subjects/d/domain-specific-languages/internal-dsls/) and [External DSLs](/positioning/subjects/d/domain-specific-languages/external-dsls/) for full treatment.

## Declarative vs imperative

A **declarative** DSL describes what the result should be without specifying the steps to achieve it. SQL describes the data to retrieve; the query planner decides how. CSS describes how elements should appear; the rendering engine decides in what order to apply the rules.

An **imperative** DSL specifies the steps. Awk processes text line by line through explicit pattern-action rules. Make specifies dependency chains and the commands to execute at each node.

Many DSLs sit between these poles. Terraform's HCL is declarative at the resource level — the user declares what infrastructure should exist — but imperative at the provisioning level, where order of operations matters. The axis is a tendency, not a binary.

## Notational vs executable

A **notational** DSL is a way of writing things down — a system for recording and communicating information within a domain. Musical notation records pitch, rhythm, and dynamics. Chemical structural formulas (SMILES, InChI) record molecular topology. Mathematical notation records symbolic reasoning.

An **executable** DSL is a way of running things — instructions that a machine processes. SQL is executed against a database. Make is executed by a build system. CSS is executed by a rendering engine.

The distinction is not always clean. LaTeX is both notational (a way of describing documents) and executable (processed by a typesetting engine). But the axis is useful because it separates two different design concerns: fidelity of representation versus correctness of execution.

[Iverson](https://www.jsoftware.com/papers/tot.htm)'s argument in *Notation as a Tool of Thought* lives in this distinction. His claim is that the notation itself — the way things are written down — shapes what can be thought. APL was designed as a notation first and an executable language second, and that priority order is visible in its design.

## User-facing vs technical

A **user-facing** DSL is intended for domain experts who may not be programmers. A business rules engine that lets analysts write conditions in near-natural-language syntax. A configuration language that lets operations staff describe infrastructure without writing code.

A **technical** DSL is intended for programmers working in a specific domain. ANTLR's grammar language is written by developers building parsers. Haskell's QuickCheck property language is written by developers writing tests.

The intended audience shapes every design choice: syntax (how much it can assume about the user's background), error messages (what vocabulary they can use), and tooling (whether an IDE is assumed).

## Markup vs modelling vs programming

A high-level classification used in survey literature:

**Markup** languages describe document structure and presentation. HTML structures hypertext. XML provides a generic framework for structured data. Markdown describes formatted text.

**Modelling** languages describe systems and their relationships. UML diagrams describe software architecture. Entity-relationship diagrams describe data models. BPMN describes business processes.

**Programming** DSLs describe computation within a domain. SQL computes query results. Regular expressions compute pattern matches. Shader languages compute pixel values.

The three categories are not exhaustive — some DSLs span them — but they highlight that "domain-specific language" covers a wider range of artefacts than programming alone.

## Turing-complete vs not

Most DSLs are deliberately not [Turing-complete](https://en.wikipedia.org/wiki/Turing_completeness). SQL in its standard form cannot express arbitrary computation. Regular expressions cannot loop. CSS cannot branch. The restriction is by design: giving up computational universality makes the language safer to embed, easier to analyse, and simpler to optimise. A SQL query planner can reason about query equivalence precisely because SQL cannot express everything.

Some DSLs are Turing-complete. PostScript can compute anything. TeX's macro system is Turing-complete (a fact more often demonstrated than exploited). These tend to be languages where the domain itself requires general computation — typesetting, for instance, involves layout algorithms that resist declarative specification.

Non-Turing-completeness is often what makes a DSL safe to run in contexts where arbitrary code would be dangerous: inside a browser (CSS), inside a database engine (SQL), inside a text editor (regular expressions for search).

## The axes together

These axes are not orthogonal. Declarative DSLs tend to be non-Turing-complete. External DSLs tend to be standalone. User-facing DSLs tend to be declarative. But the correlations are tendencies, not rules, and the interesting DSLs are often the ones that sit in unexpected positions — a Turing-complete declarative language, an internal DSL that feels standalone, a notational system that became executable.

A concrete example: SQL is external, declarative, executable, technical (though with user-facing aspirations in its original design), a programming DSL, and not Turing-complete. Each classification says something different about it, and together they give a more complete picture than any single axis.

## Sources

- Fowler, M. (2010). *[Domain-Specific Languages](https://martinfowler.com/dsl.html)*. Addison-Wesley.
- Mernik, M., Heering, J., & Sloane, A. M. (2005). [When and how to develop domain-specific languages](https://doi.org/10.1145/1118890.1118892). *ACM Computing Surveys*, 37(4), 316–344.
- van Deursen, A., Klint, P., & Visser, J. (2000). [Domain-specific languages: An annotated bibliography](https://doi.org/10.1145/352029.352035). *ACM SIGPLAN Notices*, 35(6), 26–36.
- Iverson, K. E. (1980). [Notation as a tool of thought](https://www.jsoftware.com/papers/tot.htm). *Communications of the ACM*, 23(8), 444–465.
