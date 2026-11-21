---
layout: default
lastmod: 2026-05-29
title: "Identity and significance"
description: "URLs versus URNs: the locator-versus-name distinction in the URI family, persistence and link rot, and why uniform identification mattered for the Web."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [URI](/positioning/subjects/u/uri/) > Identity and significance

# Identity and significance

## Locator and name

The distinction within the URI family is between locating and naming. A **URL** says *where* a resource is and how to reach it; a **URN** gives a resource a persistent *name* independent of where it lives. That is the old split between identity and location: a URN like `urn:isbn:…` identifies a book without committing to any copy of it, while a URL identifies a particular retrievable representation. URI is the umbrella that holds both — identification first, retrieval optional.

## Persistence

Because a URL ties identity to a location, it can break when the location changes ("link rot"); the URN idea, and conventions for persistent identifiers, are responses to the wish for names that outlive locations. The tension between a convenient locator and a durable name runs through the whole topic.

## Why it mattered

Uniform identification is what let the Web be a web: any resource could link to any other through one addressing scheme, with no central registry of what may be linked. The same idea underpins [REST](https://en.wikipedia.org/wiki/REST) — where a URI names a resource and operations act on it (see [Roy Fielding](/positioning/persons/f/fielding/)) — and [linked data](https://en.wikipedia.org/wiki/Linked_data), where URIs name not just documents but things and relationships. The reach goes well beyond the browser: URIs identify message topics, package coordinates, configuration keys, and resources in countless systems — wherever a uniform way to name and refer to things is wanted.

## Sources

- [RFC 3986 / STD 66](https://datatracker.ietf.org/doc/html/rfc3986) — URI, URL, and URN as one family.
- [Uniform Resource Name](https://en.wikipedia.org/wiki/Uniform_Resource_Name) — Wikipedia, on names versus locators.
