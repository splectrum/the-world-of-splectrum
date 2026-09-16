---
layout: post
title: "What a Part Can Do"
date: 2030-02-06
lastmod: 2026-09-15
labels: [conversations, science]
description: "The second law says entropy does not decrease. Sosuke Ito and Takahiro Sagawa showed that for a component of a network, the real bound is not zero but the information flowing in from the rest — so what a part can do depends on where it sits."
status: draft
words: 1093
---

The second law of thermodynamics, in the form most people meet it, says that entropy does not decrease in an isolated system. The qualification does a lot of work, and the interesting physics of the last few decades has mostly been about what happens when you take it seriously.

Maxwell noticed the first crack in 1867. Imagine a being that can see individual molecules, opening a door to let fast ones through one way and slow ones the other. It does no work, but it produces a temperature difference from a uniform gas. The demon is not isolated — it is *watching* — and the watching is what lets it seem to break the law.

It took a century to say properly what watching costs. Leó Szilárd identified measurement as the crucial step in 1929; Rolf Landauer located the unavoidable price in erasure in 1961 — clearing the demon's memory dissipates at least as much as the demon gained. By the 2000s this had been made general: Takahiro Sagawa and Masahito Ueda formulated a second law that includes measurement and feedback in the accounting, so the demon is no longer an exception but a case the law covers.

That settled the two-body problem. One system observes another; the observer's information has a thermodynamic price; the books balance.

Then Sosuke Ito and Sagawa asked what happens when it is not two bodies.

## Networks

Real systems are not demons and targets. A cell is a mesh of molecular species, each affected by several others and affecting several in turn. A sensory system has stages that feed forward and back. In a network like that there is no fixed answer to which component is measuring which: everything is coupled to everything, and the roles are not assigned in advance.

Ito and Sagawa's 2013 result generalises the second law to exactly this situation — systems whose interactions are described by a causal network, the structure familiar from Bayesian networks, where the arrows say which variables depend on which. Their finding is that the entropy production of any single component in such a network is bounded **not by zero, but by the information flow between that component and the rest**.

Take a moment on what that says. For an isolated system the bound is zero: entropy does not go down. For a component embedded in a network, the bound moves — and it moves by an amount that depends on how much information is flowing in from elsewhere. A part can locally do what would be impossible in isolation, and the licence comes from its position in the structure.

This is not a loophole. Nothing anywhere gets something for nothing, and the total across the network still obeys the law in the usual form. What has changed is that the thermodynamic constraint on a *part* is no longer a property of that part. It is a property of the part-in-the-network.

## Why this matters more than the demon did

The demon was always a thought experiment, and the interesting thing about it was conceptual. The network result is a working tool, and it changes what questions you can ask.

If you want to know whether a biochemical signalling pathway is operating efficiently, you are asking about a component embedded in a mesh of other components. The relevant bound is not the textbook one. Sensory adaptation, molecular motors, gene regulatory circuits — these are all cases where a part appears to be doing better than thermodynamics permits until you account for what is arriving through its couplings, at which point the numbers close.

The framework also does something subtler. Because it works from the causal structure, it makes the *architecture* thermodynamically meaningful. Two networks with the same components wired differently will license different local behaviour. Which arrow points where is not merely a matter of mechanism; it is a matter of what each part is thermodynamically permitted to do.

## The geometric turn

Ito's more recent programme takes a different route to related ground, and it is the work he is probably best known for inside the field.

The space of probability distributions has a natural geometry — information geometry, in which the distance between two distributions is a well-defined quantity and a path between them has a length. Ito's insight is that thermodynamic quantities acquire readings on that space. Entropy production behaves like a length; the most efficient way to carry out a transformation behaves like a geodesic, the shortest path between two points.

The connection he has developed runs to optimal transport, the mathematics of moving a distribution of stuff from one arrangement to another at least cost. The Wasserstein distance — the natural measure of how far a distribution has to be moved — turns out to have direct thermodynamic meaning: it gives bounds on what a transformation must dissipate in terms of how far the distribution travels and how quickly.

There is something appealing about the picture. Dissipation as a distance travelled. Efficiency as taking the straight road. The mathematics is doing the work, not the metaphor, which is what distinguishes this from the looser uses of geometric language in physics.

## What is left out

The results are constraints, and a constraint is a different thing from an explanation.

Given a network with a specified structure, the framework tells you the thermodynamic consequences. It does not tell you why the structure is that one. Biological signalling networks have the architectures they do because of a long history of selection under conditions we mostly cannot reconstruct, and information thermodynamics is silent on all of it. What it offers is the cost accounting once the design is fixed.

That is not a criticism — the papers are careful about it — but it is worth being clear, because the temptation with results of this shape is to read them as saying more than they do. Knowing what a structure permits is not knowing why the structure is there.

Still, the reframing is real, and it is the kind that changes what you notice. The second law, in the version most of us learned, is about systems. Ito and Sagawa's version is about systems *in configurations*, where what a part can do depends on what it is coupled to and how. Whether that turns out to be a technical refinement or a shift in how the subject is posed is not, I think, settled yet.

<small>This post is part of the [conversations series](/blog/label/conversations/). See also the reference entries on <a href="/positioning/persons/i/ito/">Ito</a> and <a href="/positioning/subjects/t/thermodynamics/information-and-computation/">information and computation</a>.</small>
