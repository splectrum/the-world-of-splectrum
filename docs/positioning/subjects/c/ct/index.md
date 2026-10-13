---
layout: default
lastmod: 2026-10-13
title: "Category Theory"
description: "The branch of mathematics that studies structure through relationships rather than through internal composition — objects known entirely by their arrows."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > Category Theory

# Category Theory

Category theory is the branch of mathematics that studies structure through relationships rather than through internal composition. Where set theory begins with elements and their membership, category theory begins with arrows — the ways objects relate to one another. An object has no interior; it is characterised entirely by its morphisms.

It is now used across mathematics, logic, computer science, theoretical physics, and increasingly in linguistics and philosophy.

## Origins

Category theory was developed in the 1940s by [Samuel Eilenberg](/positioning/persons/e/eilenberg/) and [Saunders Mac Lane](/positioning/persons/m/mac-lane/) as a way of tracking structural relationships in algebraic topology. They needed precise language for what it meant to say that one mathematical construction behaves the same way as another in a different setting. The notion of a natural transformation was their starting point; categories and functors followed as the supporting machinery.

What began as a working tool for algebraic topologists turned out to apply far more widely. By the 1960s, with the work of [F. William Lawvere](https://en.wikipedia.org/wiki/William_Lawvere) and [Alexander Grothendieck](https://en.wikipedia.org/wiki/Alexander_Grothendieck), category theory had become a framework in its own right — a language for studying mathematical structure across domains, and eventually a candidate foundation for mathematics itself.

## Core ideas

**Categories.** A category consists of objects, arrows (morphisms) between them, a rule for composing arrows, and an identity arrow for each object. The objects have no internal structure visible to the apparatus; everything that can be said lives in the arrows.

**Functors.** A functor is a structure-preserving map between categories. It sends objects to objects and arrows to arrows, respecting composition and identity. A functor cannot invent a morphism in the target category that has no basis in the source — its work is to carry structure across, not to create it.

**Natural transformations.** A way of comparing functors. A natural transformation is a systematic family of arrows relating one functor to another, coherent in the way they sit across the source category. With objects, functors, and natural transformations in place, category theory begins to look at itself: arrows between arrows, the mathematics of mathematics.

**The Yoneda Lemma.** One of category theory's deepest and most-used results. It states that the totality of an object's relationships — the way every other object in the category maps into it — is a complete characterisation of that object. Two objects whose pattern of relationships matches throughout the category are isomorphic. There is no hidden essence behind the arrows; the relational profile is the object. Yoneda is what makes category theory's relational stance not just a slogan but a theorem.

**Higher categories.** Once natural transformations are admitted as arrows between functors, the same construction can be iterated. A 2-category has objects, arrows between them, and arrows between those arrows. The pattern continues: n-categories and, in the limit, ∞-categories. Each level allows finer articulation of how things relate — relations between relations, comparisons between comparisons, indefinitely up. Higher category theory is now a substantial subfield in its own right, central to homotopy type theory and to recent foundational programmes.

## Where it lives now

Category theory has settled into a working role across several disciplines.

In mathematics, it provides shared vocabulary across algebra, topology, geometry, and logic. Topos theory — categories that behave like the category of sets — gives an alternative foundation for set-theoretic and logical work.

In computer science, it underwrites the semantics of typed functional programming languages (Haskell's type system is overtly categorical), and it is the natural setting for denotational semantics and program logics.

In theoretical physics, monoidal and higher categories appear in topological quantum field theory and in categorical formulations of quantum mechanics.

In linguistics, [Joachim Lambek](https://en.wikipedia.org/wiki/Joachim_Lambek)'s categorial grammar and the [DisCoCat](https://en.wikipedia.org/wiki/DisCoCat) programme apply categorical methods to syntax and meaning.

In philosophy, debates around category theory continue — particularly the question of whether categorical foundations replace, complement, or merely re-express set-theoretic ones, and what to make of structuralism in the light of categorical practice.
