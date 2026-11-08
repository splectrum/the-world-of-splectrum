---
layout: post
title: "What a Part Can Do"
date: 2026-12-01
lastmod: 2026-11-08
labels: [conversations, science]
description: "The second law says entropy does not decrease. Sosuke Ito and Takahiro Sagawa showed that for a component of a network, the real bound is not zero but set by the information passing between it and the rest — so what a part can do depends on where it sits."
status: draft
words: 706
---

<img src="https://plus.unsplash.com/premium_photo-1747905993630-413500985036?q=80&w=700&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="What a Part Can Do" style="float:left;margin:0 15px 10px 0;width:50vw;max-width:350px;" />

The second law of thermodynamics, in the form most people meet it, says that entropy does not decrease in an isolated system. The qualification does a lot of work, and information thermodynamics is the field that has spent the last few decades taking it seriously.

[Maxwell](/positioning/persons/m/maxwell/) noticed the first crack in 1867: a being that watches molecules and opens a door, and seems to break the law. The demon is not isolated — it is *watching*. How its books balance is the story of [Maxwell's Demon](/blog/2026/11/maxwells-demon/): the watching can in principle be free, and the cost comes when the demon clears its memory to watch again. By the 2000s this had been made general. Takahiro Sagawa and Masahito Ueda [formulated a second law](https://arxiv.org/abs/0710.0956) that includes measurement and feedback in the accounting, so the demon is no longer an exception but a case the law covers.

That settled the two-party case. One system observes another; the observer's information has a thermodynamic price; the books balance. Then [Sosuke Ito](/positioning/persons/i/ito/) and Sagawa asked what happens when there are not two parties.

Real systems are not demons and targets. A cell is a mesh of molecular species, each affected by several others and affecting several in turn, and in a mesh there is no fixed answer to which component is measuring which. Ito and Sagawa's [2013 result](https://arxiv.org/abs/1306.2756) generalises the second law to exactly this situation — systems whose interactions are described by a causal network, where the arrows say which variables depend on which. Their finding is that the entropy production of any single component in such a network is bounded **not by zero, but by the information flow between that component and the rest**.

For an isolated system the bound is zero: entropy does not go down. For a component embedded in a network the bound moves, by an amount set by the information flowing from it to the rest: how much the rest takes in about it. A part can locally do what would be impossible in isolation, and the licence comes from its position in the structure. This is not a loophole; the total across the network still obeys the law in the usual form. What has changed is that the thermodynamic constraint on a *part* is no longer a property of that part. It is a property of the part-in-the-network.

The demon was always a thought experiment. The network result is a working tool, and Ito and Sagawa [applied it](https://arxiv.org/abs/1406.5810) in 2015 to the adaptation network by which *E. coli* senses a chemical gradient and steers along it. There the methylation level of the receptors plays, in their words, "a similar role to the memory of Maxwell's demon": it takes in information about the kinase activity and feeds it back, keeping that activity steady against noise in the signal. The gain is not work but robustness, and the information flow sets how much of it there can be. Measured as a heat engine, the network is wasteful; as an information-thermodynamic device, they found, it is efficient. Because the framework works from the causal structure, it also makes the *architecture* thermodynamically meaningful: two networks with the same components wired differently license different local behaviour, and which arrow points where becomes a matter of what each part is permitted to do.

The results are constraints, and a constraint is a different thing from an explanation. Given a network with a specified structure, the framework tells you the thermodynamic consequences. It does not tell you why the structure is that one. Biological signalling networks have the architectures they do because of a long history of selection, and information thermodynamics is silent on all of it. What it offers is the cost accounting once the design is fixed.

In a network, a part can be a demon to some of its neighbours and a molecule to others. The demon had to know for itself, and paid for its own forgetting. A part in a network can be known by the rest and acted back on: what it can do is set by what passes between it and its neighbours. The second law still holds for the whole. For a part, what is possible is a matter of where it sits.

<small>This post is part of the [conversations series](/blog/label/conversations/). See also the reference entries on <a href="/positioning/persons/i/ito/">Ito</a> and <a href="/positioning/subjects/t/thermodynamics/information-and-computation/">information and computation</a>.</small>


---
<small>Photo: <a href="https://unsplash.com/@allisonsaeng">Allison Saeng</a> / Unsplash</small>
