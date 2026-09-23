---
layout: post
title: "Thermodynamics and the Geodesic Principle"
date: 2026-12-16
lastmod: 2026-09-23
labels: [conversations, science]
description: "What does change cost? The change in a system's entropy is fixed by its two end states; the entropy created on the way is not. The cheapest way between two states runs along the shortest path at a steady pace, and over the last decade that principle has been made exact."
status: draft
words: 620
---

<img src="https://images.unsplash.com/photo-1717308086506-4cbc0f4624ed?q=80&w=2944&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Thermodynamics and the Geodesic Principle" style="float:left;margin:0 15px 10px 0;width:50vw;max-width:350px;" />

What does change cost?

Take a system from one equilibrium state to another. The change in its own entropy is fixed by the two states: take any route and it comes out the same. What the route decides is how much entropy is created along the way — new entropy, passed to the surroundings as heat. Every real process creates some, and how much depends on the path and on how fast it is travelled. That created entropy is the dissipation.

The states can be treated as points in a space with distances between them, and a process is then a path through that space with a length. Once that is in place, the cost of change has a shape. The cheapest way to carry out a change runs along the shortest path, the geodesic, travelled at a steady pace, and the minimum dissipation grows with the square of the path's length divided by the time allowed. Go slowly enough and the dissipation can be made as small as you like; go fast and it rises without limit. The name comes from geometry and is best known from relativity, where a geodesic is the path a free body follows; here it names this rule.

The intuition is older than the exact result. Frank Weinhold put a metric on the space of equilibrium states in 1975, and Peter Salamon and Stephen Berry [showed in 1983](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.51.1127) what it was for: a process of fixed duration must dissipate at least an amount proportional to length squared over time, and the least dissipative route is the geodesic travelled at constant speed. That held near equilibrium only.

The exact version came at a different level of description. Stochastic thermodynamics treats small, fluctuating systems through the probability distribution over their possible states, and a transformation is what moves that distribution from one shape to another. In 2011 Erik Aurell, Carlos Mejía-Monasterio and Paolo Muratore-Ginanneschi [connected](https://arxiv.org/abs/1012.2037) the cheapest way of doing this to optimal transport, the mathematics of moving a distribution of material from one arrangement to another at least cost. For overdamped dynamics the principle is then exact: the minimum entropy production for carrying a distribution from one shape to another in a time τ is proportional to the squared Wasserstein distance between the shapes — optimal transport's measure of how far a distribution has to be moved — divided by τ. The shortest road is measured by that distance. Near equilibrium the same picture holds for driven systems, where David Sivak and Gavin Crooks [gave it a metric](https://arxiv.org/abs/1201.4166) in 2012. Read the other way round, the geometry yields [speed limits](https://arxiv.org/abs/1802.06554): a transformation cannot be completed faster than its dissipation and its activity allow. The connection to optimal transport was reached along [several independent routes](https://arxiv.org/abs/2206.02684), and no one name owns it.

One case makes the cost concrete. Landauer's bound says that erasing one bit of information costs at least kT ln 2 of heat, and it is usually stated as if that were the price. It is the price only in the limit of infinite slowness. Karel Proesmans, Jannik Ehrich and John Bechhoefer [worked out the finite-time version](https://arxiv.org/abs/2006.03242) in 2020, which is the shortest-road cost for erasing one bit: erasing in a time τ costs more than the bound, and for slow erasures the excess falls off as 1/τ.

These results are bounds, not predictions: what any process must pay at minimum, not what a given process does. And the geodesic assumes full control over the system, so it is a floor, not a practice.

What the principle says is simple enough to carry away. Between any two states there is a shortest road, and every real change either takes it or pays for the difference.

<small>This post is part of the [conversations series](/blog/label/conversations/). See also the reference entries on <a href="/positioning/persons/i/ito/">Ito</a>, <a href="/positioning/persons/l/landauer/">Landauer</a>, and the thermodynamics pages on <a href="/positioning/subjects/t/thermodynamics/away-from-equilibrium/">away from equilibrium</a> and <a href="/positioning/subjects/t/thermodynamics/information-and-computation/">information and computation</a>.</small>


---
<small>Photo: <a href="https://unsplash.com/@joszczepanska">Jo Szczepanska</a> / Unsplash</small>
