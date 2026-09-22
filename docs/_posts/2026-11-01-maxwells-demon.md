---
layout: post
title: "Maxwell's Demon"
date: 2026-11-01
lastmod: 2026-09-22
labels: [conversations, science]
description: "In 1867 Maxwell described a creature that could break the second law of thermodynamics by watching molecules and opening a door. A hundred and sixty years later the argument about whether it has been exorcised is still going."
status: draft
words: 974
---

<img src="https://images.unsplash.com/photo-1546942113-a6c43b63104a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Maxwell's Demon" />

In December 1867, [James Clerk Maxwell](/positioning/persons/m/maxwell/) wrote to a friend that he wanted "to pick a hole" in the second law of thermodynamics.

Take a vessel of gas at uniform temperature, divide it with a partition with a small door. Now imagine a being able to see individual molecules. When a fast one approaches from the left, it opens the door and lets it through; when a slow one approaches from the right, the same. The door is frictionless and massless, so operating it costs nothing. After a while, one side is hot and the other is cold — a temperature difference made from nothing, out of gas that started uniform, by a creature that did no work.

Maxwell called it a "finite being". The name it carries now was supplied by William Thomson in 1874, who called it a demon — meaning the Greek *daimon*, a background agent, not a malevolent one. The upgrade in menace was nobody's intention.

The puzzle is sharper than it first appears. The demon is not cheating. It is not adding energy, and it is not lying about what it sees. It is using information — which way each molecule is going — and converting that information into a temperature difference, which can then be used to drive an engine. If that works, the second law is not a law but a statement about how much we usually know.

The decisive reframing came sixty years later. In 1929 [Leó Szilárd](https://en.wikipedia.org/wiki/Le%C3%B3_Szil%C3%A1rd) stripped the problem to a single molecule in a box with a movable partition, and identified the crucial step: *measurement*. Knowing which side the molecule is on is what lets you extract work. That turned a puzzle about clever machinery into a puzzle about information, and it made a quantitative treatment possible — though the quantity itself was still missing.

[Shannon](/positioning/persons/s/shannon/) supplied it in 1948. After that there was something definite for a thermodynamic cost to be a cost *of*. And the demon is something like a destination in Shannon's sense — a thing that reads the molecules and holds on to what it has read — which makes it the first case in this story of a body being read against something — [the very thing the last post left open](/blog/2026/10/the-word-travels/).

In 1961 [Rolf Landauer](/positioning/persons/l/landauer/) proposed where the cost sits, and his answer was not where anyone expected. Not in measurement — in *erasure*. Resetting a bit to a standard state, in an environment at temperature T, dissipates at least kT ln 2. [Charles Bennett](/positioning/persons/b/bennett/) later pointed out that Szilárd's own closing mathematics had already placed the entropy increase at the resetting step, whatever his prose said about measurement.

Bennett drew the consequence for the demon in the following decades. The demon has a memory. It fills up. Before the cycle can repeat, that memory must be cleared — and clearing it costs at least what the demon gained. The apparent violation was an artefact of not closing the loop. Run the demon once and it looks like magic; run it twice and you find the bill.

This is the version most people know, and it is a genuinely satisfying story: a puzzle posed in 1867, resolved by the discovery that information has a thermodynamic price. In 2012, Antoine Bérut and colleagues confirmed the bound experimentally, manipulating a single colloidal particle in a double-well potential and measuring dissipated heat approaching kT ln 2.

Except the argument did not stop.

John Earman and John Norton published a two-part paper with the splendid title "Exorcist XIV: The Wrath of Maxwell's Demon". Their objection is not that Landauer's bound is wrong. It is a dilemma, and Bennett himself states it fairly: if the demon already obeys the second law, nothing more is needed to save the law; if it does not, no supposition about the cost of information will rescue it. As an account of where the entropy goes, the erasure story is fine. As an exorcism, it assumes the ghost is already gone.

What makes this more than a philosopher's complaint is Bennett's reply. In 2003 he conceded a substantial part of the logical point. Landauer's principle, he wrote, is "in a sense a straightforward consequence or restatement of the second law" — not an independent proof of it. What it retains is "considerable pedagogic and explanatory power": it shows *where* the compensating entropy goes, which the bare second law does not. That is a real concession and a real defence at once, and the argument has continued on those terms — others defending the principle with the second law granted as a premise, or rebuilding the accounting so that measurement and feedback appear in it explicitly.

The thing I keep returning to is that the two camps are not really disagreeing about the same claim. The experimentalists take the bound as verified. The philosophical objection is not mainly that the experiments are wrong but that a verified bound does not, by itself, do the foundational work of showing the demon could never have worked. Those are different questions, and a confirmation of the first is not an answer to the second.

So: a thought experiment from 1867, still in play. Not because nobody has thought about it — a great deal of the physics of information exists because people thought about it — but because it turns out to be a hinge. Ask whether the demon can work and you are asking whether the second law is a fact about the world or a fact about what we can keep track of, and that question is the same one the interpretation of entropy has been stuck on for a century.

<small>This post is part of the [conversations series](/blog/label/conversations/). See also the reference entry on <a href="/positioning/subjects/t/thermodynamics/information-and-computation/">information and computation</a>.</small>

---
<small>Photo: <a href="https://unsplash.com/@sortino">Joshua Sortino</a> / Unsplash</small>
