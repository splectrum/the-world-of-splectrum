---
layout: default
lastmod: 2026-05-29
title: "Addressing and influence"
description: "How XPath addresses into a resource through XPointer, grew into a query language with XQuery, and passed the path idea to CSS selectors and JSONPath."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [XPath](/positioning/subjects/x/xpath/) > Addressing and influence

# Addressing and influence

## Addressing into a resource

XPath answers "where *within* a document," which composes naturally with addressing that answers "*which* document." [XPointer](https://en.wikipedia.org/wiki/XPointer) does exactly this — it uses an XPath expression in a [URI](/positioning/subjects/u/uri/) fragment to point into a specific part of an XML resource. So a full address layers two languages: a URI to the resource, an XPath into its structure. That two-layer shape — locate the resource, then descend into it — is the form much navigation takes.

## From path syntax to query language

XPath grew well beyond selection. With 2.0/3.x and the data model it shares with [XQuery](https://en.wikipedia.org/wiki/XQuery), it gained sequences, a type system, and a large function library — a genuine query language for trees, not just a path notation.

## Influence

The path-expression idea spread widely. [CSS selectors](https://en.wikipedia.org/wiki/CSS#Selector) address into the HTML/DOM tree in a related spirit; [JSONPath](https://en.wikipedia.org/wiki/JSONPath) and JMESPath carry the path-and-predicate model to JSON; XQuery builds directly on XPath. Whenever a system needs a compact way to address into structured data, it tends to reinvent something XPath-shaped.

## Sources

- [XPointer Framework](https://www.w3.org/TR/xptr-framework/) — XPath in URI fragments.
- [XPath](https://en.wikipedia.org/wiki/XPath) — Wikipedia, for the family of derived languages.
