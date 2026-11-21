---
layout: default
lastmod: 2026-05-13
title: "External DSLs"
description: "External domain-specific languages, with their own grammar and parser: the implementation pipeline, parsing approaches, trade-offs and examples like SQL."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [DSL](/positioning/subjects/d/domain-specific-languages/) > External DSLs

# External DSLs

An external DSL has its own grammar and its own parser. It stands independently of any host language — the user writes in the DSL's syntax, and a dedicated tool processes it. SQL, regular expressions, CSS, Make, and GraphQL are all external DSLs. Each defines its own rules for what constitutes valid input and its own semantics for what that input means.

The term is one half of [Fowler](https://martinfowler.com/bliki/DomainSpecificLanguage.html)'s primary classification. Where an [internal DSL](/positioning/subjects/d/domain-specific-languages/internal-dsls/) borrows its syntax from a host language, an external DSL owns its syntax entirely. This gives full freedom over how the language looks and behaves, at the cost of building the entire processing pipeline from scratch.

## The implementation pipeline

An external DSL requires a chain of processing stages to go from source text to execution. The stages vary in detail but follow a common pattern.

**Lexing (tokenisation).** The source text is broken into tokens — the smallest meaningful units. In SQL, tokens include keywords (`SELECT`, `FROM`, `WHERE`), identifiers (table and column names), operators (`=`, `>`), and literals (strings, numbers). The lexer strips whitespace and comments, producing a flat sequence of typed tokens.

**Parsing.** The token sequence is analysed against the language's grammar to produce a parse tree or abstract syntax tree (AST). The parser enforces syntactic rules — that a `SELECT` must be followed by a column list, that parentheses must balance, that operators have the right number of operands. Parsing is where most syntax errors are caught.

**Semantic analysis.** The AST is checked for semantic validity — things the grammar cannot express. In SQL, this is where the engine checks that table names exist, that column types are compatible with operators, that aggregate functions are used correctly. Not all DSLs have a separate semantic analysis phase; simpler languages fold it into parsing or execution.

**Execution or code generation.** The validated AST is either interpreted directly (an interpreter walks the tree and performs actions) or compiled into another form (code generation produces output in a target language, or a query planner produces an execution plan). SQL query planners are a sophisticated example — the planner transforms the declarative query into an imperative execution plan optimised for the available indexes and statistics.

## Parsing approaches

Several established techniques exist for building the parser, each with different trade-offs between power, ease of use, and the quality of error messages.

**Parser generators.** A grammar specification is fed to a tool that generates parser code. [ANTLR](https://www.antlr.org/) (Terence Parr) is the most widely used modern parser generator, supporting LL(*) parsing with automatic error recovery. [Yacc](https://en.wikipedia.org/wiki/Yacc)/[Bison](https://www.gnu.org/software/bison/) use LALR parsing and remain common in Unix-heritage projects. [JavaCC](https://javacc.github.io/javacc/) generates Java parsers from LL(k) grammars.

**Parser combinators.** Small parsers are composed into larger ones using combinators — functions that take parsers as arguments and return new parsers. [Parsec](https://hackage.haskell.org/package/parsec) (Haskell) and [FParsec](https://www.quanttec.com/fparsec/) (F#) are well-known implementations. Parser combinators blur the line between internal and external DSLs — the grammar is expressed in host-language code, but the language being parsed is external.

**PEG parsers.** Parsing Expression Grammars use ordered choice (try the first alternative; if it fails, try the second) rather than the ambiguous alternation of context-free grammars. Implementations include [PEG.js](https://pegjs.org/) (JavaScript), [Pest](https://pest.rs/) (Rust), and [parboiled](https://github.com/sirthias/parboiled) (Java/Scala). The deterministic semantics make PEGs particularly suitable for languages where grammar ambiguity would otherwise need explicit resolution.

**Hand-written recursive descent.** A parser written directly in a general-purpose language, with one function per grammar rule. More labour-intensive than generated parsers, but produces the best error messages and gives full control over recovery behaviour. Many production parsers for widely used languages (GCC's C parser, V8's JavaScript parser) are hand-written recursive descent.

## Trade-offs

The defining advantage of an external DSL is syntactic freedom. The language can look exactly the way the domain requires — no compromise with a host language's syntax, no operator-overloading tricks, no blocks-that-aren't-really-blocks. SQL reads as English-like queries because its designers chose that syntax; CSS reads as property-value declarations because that matches the domain of styling. Neither syntax could exist as an internal DSL without substantial distortion.

The defining cost is infrastructure. An external DSL needs a lexer, a parser, error reporting, and either an interpreter or a code generator. It needs documentation that explains the language on its own terms. It may need an editor plugin for syntax highlighting, a formatter, a linter. None of this comes for free — each piece must be designed, built, and maintained.

The tooling gap has narrowed. Modern parser generators (ANTLR), editor frameworks (tree-sitter, Language Server Protocol), and [language workbenches](/positioning/subjects/d/domain-specific-languages/language-workbenches/) have reduced the cost of building an external DSL substantially. What once required months of compiler engineering can now be prototyped in days.

## Examples

- **[SQL](https://en.wikipedia.org/wiki/SQL)** — relational querying. Designed by [Chamberlin and Boyce](https://en.wikipedia.org/wiki/Raymond_Boyce) (1974), based on [Codd](https://en.wikipedia.org/wiki/Edgar_F._Codd)'s relational model. Declarative, non-Turing-complete in its standard form, and the most widely used DSL in production.
- **[Regular expressions](https://en.wikipedia.org/wiki/Regular_expression)** — pattern matching. Rooted in formal language theory ([Kleene](https://en.wikipedia.org/wiki/Stephen_Cole_Kleene), 1956), extended through Unix tools (grep, sed) and [Friedl](https://www.oreilly.com/library/view/mastering-regular-expressions/0596528124/)'s comprehensive treatment.
- **[CSS](https://en.wikipedia.org/wiki/CSS)** — visual styling. Selector-property-value syntax designed for separation of presentation from structure.
- **[Make](https://en.wikipedia.org/wiki/Make_(software))** — build dependencies. [Feldman](https://en.wikipedia.org/wiki/Stuart_Feldman) (1976). Target-dependency-command syntax, tab-sensitive.
- **[Awk](https://en.wikipedia.org/wiki/AWK)** — text processing. [Aho, Weinberger, and Kernighan](https://en.wikipedia.org/wiki/AWK) (1977). Pattern-action rules applied line by line.
- **[GraphQL](https://graphql.org/)** — API querying. Facebook (2015). A query language for APIs that lets the client specify exactly which data it needs.
- **[Terraform HCL](https://developer.hashicorp.com/terraform/language)** — infrastructure as code. HashiCorp Configuration Language. Declarative resource definitions with dependency tracking.
- **[LaTeX](https://en.wikipedia.org/wiki/LaTeX)** — typesetting. [Lamport](https://en.wikipedia.org/wiki/Leslie_Lamport) (1984), built on [Knuth](https://en.wikipedia.org/wiki/Donald_Knuth)'s TeX. A document preparation system where markup commands describe document structure and formatting.

## Tooling

The modern ecosystem for building external DSLs includes:

- **[ANTLR](https://www.antlr.org/)** — parser generator supporting multiple target languages (Java, C#, Python, JavaScript, Go, C++). The most common starting point for new external DSLs.
- **[Bison](https://www.gnu.org/software/bison/)** — the GNU successor to Yacc. LALR parser generator, still widely used in C/C++ projects.
- **[tree-sitter](https://tree-sitter.github.io/tree-sitter/)** — incremental parsing framework designed for code editors. Used by Neovim, Helix, and Zed for syntax highlighting and structural navigation.
- **[Language Server Protocol](https://microsoft.github.io/language-server-protocol/)** — a standard protocol for editor-language integration. Allows a single language server to provide completion, diagnostics, and navigation to any editor that implements the protocol.

For a more integrated approach to DSL construction, see [Language workbenches](/positioning/subjects/d/domain-specific-languages/language-workbenches/).

## Sources

- Fowler, M. (2010). *[Domain-Specific Languages](https://martinfowler.com/dsl.html)*. Addison-Wesley.
- Parr, T. (2013). *[The Definitive ANTLR 4 Reference](https://pragprog.com/titles/tpantlr2/the-definitive-antlr-4-reference/)*. Pragmatic Bookshelf.
- Aho, A. V., Lam, M. S., Sethi, R., & Ullman, J. D. (2006). *Compilers: Principles, Techniques, and Tools* (2nd ed.). Addison-Wesley.
- Friedl, J. E. F. (2006). *Mastering Regular Expressions* (3rd ed.). O'Reilly.
