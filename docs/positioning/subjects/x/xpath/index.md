---
layout: default
lastmod: 2026-05-29
title: "XPath (XML Path Language)"
description: "XPath, the XML Path Language for navigating tree-structured documents: location paths of steps along axes that select nodes, grown into a query language."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > XPath (XML Path Language)

# XPath (XML Path Language)

XPath (the XML Path Language) is a language for navigating and selecting within tree-structured documents: you write a **location path** — a sequence of steps from a starting node — and it returns the nodes that match. It began as the addressing core shared by two other languages, and grew into a full query language for trees.

The organising idea is the location path: navigation expressed as steps along **axes**. `/catalog/book/title` reads like a file path, but the model beneath is richer — each step chooses an **axis** (which direction to move: child, descendant, ancestor, parent, sibling, attribute, self…), a **node test** (which nodes to keep), and optional **predicates** (conditions). XPath turns "where in this structure" into a precise, composable expression.

## Origin

XPath was defined by the [W3C](https://www.w3.org/) in 1999, with [James Clark](/positioning/persons/c/clark/) and [Steven DeRose](/positioning/persons/d/derose/) as editors, to serve two specifications at once: [XSLT](https://en.wikipedia.org/wiki/XSLT) (transforming XML) and [XPointer](https://en.wikipedia.org/wiki/XPointer) (addressing into XML). [XPath 1.0](https://www.w3.org/TR/1999/REC-xpath-19991116/) (1999) is still the most widely deployed; [2.0](https://www.w3.org/TR/xpath20/) (2007) realigned it onto a sequence-based data model shared with [XQuery](https://en.wikipedia.org/wiki/XQuery), and [3.0](https://www.w3.org/TR/xpath-30/) (2014) / [3.1](https://www.w3.org/TR/xpath-31/) (2017) extended it further — the arc from a compact path syntax to a full, typed query language.

## Pages

- [The navigation model](/positioning/subjects/x/xpath/the-model/) — location paths and steps, the axis/node-test/predicate structure, the compact and full syntaxes, and what a path yields.
- [Addressing and influence](/positioning/subjects/x/xpath/addressing-and-influence/) — XPointer and the two-layer URI-plus-XPath address, the growth into a query language with XQuery, and the path-expression idea's spread to CSS selectors, JSONPath, and beyond.

## Persons

- [James Clark](/positioning/persons/c/clark/) — co-editor of the XPath 1.0 specification.
- [Steven DeRose](/positioning/persons/d/derose/) — co-editor of XPath 1.0 and designer of XPointer; descriptive markup, XML, and hypertext.

## Sources

- [XPath 3.1](https://www.w3.org/TR/xpath-31/) and [XPath 1.0](https://www.w3.org/TR/1999/REC-xpath-19991116/) — the W3C recommendations.
- [XPath](https://en.wikipedia.org/wiki/XPath) — Wikipedia, for overview and history.

---

See also: [James Clark](/positioning/persons/c/clark/) · [Steven DeRose](/positioning/persons/d/derose/) · [URI](/positioning/subjects/u/uri/) · [Domain-Specific Languages](/positioning/subjects/d/domain-specific-languages/)
