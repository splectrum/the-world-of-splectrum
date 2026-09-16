---
layout: post
title: "Maxwell's Finite Being"
date: 2030-02-03
lastmod: 2026-09-15
labels: [conversations, science]
description: "In 1867 Maxwell described a creature that could break the second law of thermodynamics by watching molecules and opening a door. A hundred and sixty years later the argument about whether it has been exorcised is still going."
status: draft
words: 1002
---

In December 1867, James Clerk Maxwell wrote to a friend that he wanted "to pick a hole" in the second law of thermodynamics, and described how.

Take a vessel of gas at uniform temperature, divide it with a partition, and put a small door in the partition. Now imagine a being able to see individual molecules. When a fast one approaches from the left, it opens the door and lets it through; when a slow one approaches from the right, the same. The door is frictionless and massless, so operating it costs nothing. After a while, one side is hot and the other is cold — a temperature difference made from nothing, out of gas that started uniform, by a creature that did no work.

Maxwell called it a "finite being". The name it carries now was supplied by William Thomson in 1874, who called it a demon — meaning the Greek *daimon*, a background agent, not a malevolent one. The upgrade in menace was nobody's intention.

The puzzle is sharper than it first appears. The demon is not cheating. It is not adding energy, and it is not lying about what it sees. It is using information — which way each molecule is going — and converting that information into a temperature difference, which can then be used to drive an engine. If that works, the second law is not a law but a statement about how much we usually know.

The first real progress came sixty years later. In 1929 Leó Szilárd stripped the problem to a single molecule in a box with a movable partition, and identified the crucial step: *measurement*. Knowing which side the molecule is on is what lets you extract work. That reframing turned a puzzle about clever machinery into a puzzle about information, and it made a quantitative treatment possible — though the quantity itself was still missing.

Shannon supplied it in 1948. After that there was something definite for a thermodynamic cost to be a cost *of*.

In 1961 Rolf Landauer proposed where the cost sits, and his answer was not where anyone expected. Not in measurement — in *erasure*. Resetting a bit to a standard state, in an environment at temperature T, dissipates at least kT ln 2. Logically irreversible operations have an unavoidable thermodynamic price; logically reversible ones do not.

Charles Bennett drew the consequence for the demon in the following decades. The demon has a memory. It fills up. Before the cycle can repeat, that memory must be cleared — and clearing it costs at least what the demon gained. The apparent violation was an artefact of not closing the loop. Run the demon once and it looks like magic; run it twice and you find the bill.

This is the version most people know, and it is a genuinely satisfying story: a puzzle posed in 1867, resolved by the discovery that information has a thermodynamic price. In 2012, Antoine Bérut and colleagues confirmed the bound experimentally, manipulating a single colloidal particle in a double-well potential and measuring dissipated heat approaching kT ln 2.

Except the argument did not stop.

John Earman and John Norton published a two-part paper with the splendid title "Exorcist XIV: The Wrath of Maxwell's Demon", and Norton followed it with "Eaters of the Lotus". Their objection is not that Landauer's bound is wrong. It is that the reasoning is circular: the erasure cost is derived by assuming the second law holds, and is then invoked to explain why the second law holds. As an account of where the entropy goes it is fine. As an exorcism it assumes the ghost is already gone.

Norton adds a second charge, and it bites at exactly the scale in question. At the size where you are erasing a single bit, thermal fluctuations are the same order as the effect you are trying to measure. Treating erasure as a smooth quasi-static compression — which the standard derivations do — assumes the very thing that needs establishing.

What makes this more than a philosopher's complaint is Bennett's reply. In 2003 he conceded a substantial part of the logical point. Landauer's principle, he wrote, is "in a sense a straightforward consequence or restatement of the second law" — not an independent proof of it. What it retains is "considerable pedagogic and explanatory power": it shows *where* the compensating entropy goes, which the bare second law does not.

That is a real concession and a real defence at once, and the argument has continued on those terms. James Ladyman and colleagues have defended a version of the principle while granting the second law as a premise rather than deriving it. Takahiro Sagawa and Masahito Ueda took a different route entirely, formulating a generalised second law that includes measurement and feedback in the accounting — treating the demon's information explicitly rather than arguing about erasure.

The thing I keep returning to is that the two camps are not really disagreeing about the same claim. The experimentalists take the bound as verified, and it is. The philosophical objection is not that the experiments are wrong but that a verified bound does not, by itself, do the foundational work of showing the demon could never have worked. Those are different questions, and a confirmation of the first is not an answer to the second.

So: a thought experiment from 1867, still in play. Not because nobody has thought about it — a great deal of the physics of information exists because people thought about it — but because it turns out to be a hinge. Ask whether the demon can work and you are asking whether the second law is a fact about the world or a fact about what we can keep track of, and that question is the same one the interpretation of entropy has been stuck on for a century.

Maxwell picked his hole well.

<small>This post is part of the [conversations series](/blog/label/conversations/). See also the reference entry on <a href="/positioning/subjects/t/thermodynamics/information-and-computation/">information and computation</a>.</small>
