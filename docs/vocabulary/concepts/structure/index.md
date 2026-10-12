---
layout: default
lastmod: 2026-05-12
title: "The structure of vocabulary"
description: "Vocabulary as the set of concepts within a bounded context — concepts as bounded units, the relations between them, and how the decomposition maps onto category theory."
---

[Home](/) > [Vocabulary](/vocabulary/) > [Concepts](/vocabulary/concepts/) > Structure

# The structure of vocabulary

Language is a collection of concepts and the ways they interact. Concepts are bounded units. Interactions are the relations between them: definitional, derivational, cross-referential, idiomatic, narrowing, borrowing, and others. A language, in any bounded context, is both: concepts and the relations that operate on them. The concept is more general than in ordinary usage — subsets of vocabularies for specific use also count as languages here.

**Vocabulary is the set of concepts within a bounded context.** The bounded context can go from very small to large.

## A category-theoretic view

The decomposition maps cleanly onto category theory:

- **Concepts** → objects.
- **Vocabulary** → the object set of a category, Ob(C), per bounded context.
- **Relations** → morphisms. Multiple kinds (definitional, derivational, idiomatic, cross-referential) coexist.
- **A language within a bounded context** → a category.
- **Cross-context mappings** (how one language game's terms map into another's) → functors between categories.

A functor carries both concepts and the relations among them. Translation in this frame isn't term-for-term substitution but preservation of how things hang together.
