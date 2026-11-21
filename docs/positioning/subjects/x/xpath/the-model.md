---
layout: default
lastmod: 2026-05-29
title: "The navigation model"
description: "XPath's navigation model: location paths built from steps of axis, node test and predicate, the compact and full syntaxes, and the move to typed sequences."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [XPath](/positioning/subjects/x/xpath/) > The navigation model

# The navigation model

XPath's substance is a small, composable model for saying *where* in a tree.

## Location paths and steps

A path is a sequence of **steps** separated by `/`; an **absolute** path begins at the root (`/a/b`), a **relative** one at a context node (`b/c`). Each step has three parts:

- **axis** — the direction to move: `child`, `descendant`, `ancestor`, `parent`, `following-sibling`, `preceding-sibling`, `self`, `attribute`, and more. The axis is the conceptual heart — it makes *position in a hierarchy* explicit and addressable in every direction, not just downward.
- **node test** — which nodes to keep (by name, or by type — element, text, attribute, any).
- **predicate** — an optional condition in `[...]` filtering the step's result (`book[@year > 2000]`).

The compact syntax (`/catalog/book/title`) is shorthand for the full axis form (`/child::catalog/child::book/child::title`); both denote the same navigation.

## What a path yields

XPath 1.0 evaluates to one of four types — a **node-set**, a string, a number, or a boolean. XPath 2.0 onward generalised node-sets to **sequences** with a richer type system, aligning with [XQuery](https://en.wikipedia.org/wiki/XQuery) and turning XPath from a selector into a small functional query language.

The lasting contribution is the **axis model**: a vocabulary for navigating hierarchy in any direction — which is why XPath's idea outlived XML and reappears wherever structured data must be addressed.

## Sources

- [XPath 3.1](https://www.w3.org/TR/xpath-31/) — the data model, axes, and expression grammar in full.
