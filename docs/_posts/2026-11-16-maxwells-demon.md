---
layout: post
title: "Maxwell's Demon"
date: 2026-11-16
lastmod: 2026-11-08
labels: [conversations, science]
description: "In 1867 Maxwell described a creature that could break the second law of thermodynamics by watching molecules and opening a door. Knowing turned out to be worth work, and the bill comes when the demon's memory is reset."
status: draft
words: 587
---

<img src="https://images.unsplash.com/photo-1546942113-a6c43b63104a?q=80&w=700&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Maxwell's Demon" />

In December 1867, [James Clerk Maxwell](/positioning/persons/m/maxwell/) wrote to a friend that he wanted "to pick a hole" in the second law of thermodynamics.

Take a vessel of gas at uniform temperature, divide it with a partition with a small door. Now imagine a being able to see individual molecules. When a fast one approaches from the left, it opens the door and lets it through; when a slow one approaches from the right, the same. The door is frictionless and massless, so operating it costs nothing. After a while, one side is hot and the other is cold — a temperature difference made from nothing, out of gas that started uniform, by a creature that did no work.

Maxwell called it a "finite being". The name it carries now was supplied by William Thomson in 1874, who called it a demon — meaning the Greek *daimon*, a background agent, not a malevolent one. The upgrade in menace was nobody's intention.

The puzzle is sharper than it first appears. The demon is not cheating. It is not adding energy, and it is not lying about what it sees. It is using information — which way each molecule is going — and converting that information into a temperature difference, which can then be used to drive an engine. If that works, the second law is not a law but a statement about how much we usually know.

The decisive reframing came sixty years later. In 1929 [Leó Szilárd](https://en.wikipedia.org/wiki/Le%C3%B3_Szil%C3%A1rd) stripped the problem to a single molecule in a box with a movable partition, and identified the crucial step: *measurement*. Knowing which side the molecule is on is what lets you extract work. That turned a puzzle about clever machinery into a puzzle about information, and it made a quantitative treatment possible — though a general measure of information was still missing.

[Shannon](/positioning/persons/s/shannon/) supplied it in 1948. After that there was something definite for a thermodynamic cost to be a cost *of*.

In 1961 [Rolf Landauer](/positioning/persons/l/landauer/), working on the physics of computing, found a cost where no one had looked. Not in measurement — in *erasure*. Resetting a bit to a standard state, in an environment at temperature T, dissipates at least kT ln 2. A bit, for Landauer, is always the state of something physical: "Information is not a disembodied abstract entity; it is always tied to a physical representation." Wiping it means forcing that something into one state, whatever state it was in, and the difference leaves as heat.

[Charles Bennett](/positioning/persons/b/bennett/) drew the consequence for the demon in 1982. He had shown nine years earlier that computation can be done reversibly, without erasing anything on the way, and the same holds for looking: in principle the demon can note a molecule's direction at no cost. But the demon has a memory. It fills up. Before the cycle can repeat, that memory must be cleared — and clearing it costs at least what the demon gained. The apparent violation was an artefact of not closing the loop. Run the demon once and it looks like magic; run it twice and you find the bill.

In 2012, Antoine Bérut and colleagues measured it: a single colloidal particle in a double-well potential, the heat dissipated in erasing its bit approaching kT ln 2.

So the demon was never banished. It was billed. Knowing which way the molecules go is worth work, and the knowing itself is not what costs. What costs is making room to know again: the reset of the memory.

<small>This post is part of the [conversations series](/blog/label/conversations/). See also the reference entry on <a href="/positioning/subjects/t/thermodynamics/information-and-computation/">information and computation</a>.</small>

---
<small>Photo: <a href="https://unsplash.com/@sortino">Joshua Sortino</a> / Unsplash</small>
