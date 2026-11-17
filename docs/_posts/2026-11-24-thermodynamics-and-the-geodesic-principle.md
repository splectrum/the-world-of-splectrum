---
layout: post
title: "Thermodynamics and the Geodesic Principle"
date: 2026-11-24
lastmod: 2026-11-17
labels: [conversations, science]
description: "What does change cost? A system's own entropy change is fixed by its two end states; the entropy created on the way is not. The cheapest road between two states is the shortest path in a curved space, travelled at a steady pace. It is also the most constrained, which leaves the question of what cost one is willing to live with."
status: ready
words: 668
---

<img src="https://images.unsplash.com/photo-1717308086506-4cbc0f4624ed?q=80&w=700&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Thermodynamics and the Geodesic Principle" style="float:left;margin:0 15px 10px 0;width:50vw;max-width:350px;" />

What does change cost?

Take a system from one equilibrium state to another. The change in the system's own entropy is fixed by the two states. The heat it exchanges on the way (and as a consequence the entropy of the environment) is not. Only on an infinitely slow, reversible route does the heat account for the whole entropy change; on any real route it falls short, and the shortfall is entropy created along the way. That created entropy is the dissipation.

The states can be treated as points in a curved space, with a distance between two states that measures how hard the system resists being moved from one to the other. A process is then a path through that space, with a length. Once that is in place, the cost of change has a shape. The shortest path between two points in a curved space is called a geodesic, like the great circle an aircraft flies between two cities. The geodesic principle says that the cheapest way to carry out a change runs along that shortest path, travelled at a steady pace, and that the minimum dissipation grows with the square of the path's length divided by the time allowed. Go slowly enough and the dissipation can be made as small as you like; go fast and it rises without limit.

The intuition is older than the exact result. Frank Weinhold put a metric on the space of equilibrium states in 1975, and Peter Salamon and Stephen Berry [showed in 1983](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.51.1127) what it was for: the geodesic principle, near equilibrium only.

The exact version came at a different level of description. Stochastic thermodynamics treats small, fluctuating systems through the probability distribution over their possible states, and a transformation is what moves that distribution from one shape to another: picture a heap of sand reshaped, grain by grain. The picture is older than thermodynamics. In a memoir of 1781 for the Académie des sciences, Gaspard Monge asked for the cheapest way to move a pile of earth into a hole of the same volume but a different shape. His question grew into the mathematics of optimal transport, and in 2011 Erik Aurell, Carlos Mejía-Monasterio and Paolo Muratore-Ginanneschi [connected](https://arxiv.org/abs/1012.2037) it to the cost of change.

For overdamped dynamics the principle is then exact: the minimum entropy production for reshaping a distribution in a time τ is proportional to the square of how far the sand has to be moved, the Wasserstein distance, divided by τ. Read the other way round, the geometry yields [speed limits](https://arxiv.org/abs/1802.06554): a transformation cannot be completed faster than its dissipation and its activity allow. The connection was reached along [several independent routes](https://arxiv.org/abs/2206.02684), [Sosuke Ito](/positioning/persons/i/ito/)'s through information geometry among them, and no one name owns it.

One case makes the cost concrete. [Maxwell's demon](/blog/2026/11/maxwells-demon/) pays for its forgetting: by Landauer's bound, erasing one bit of information costs at least kT ln 2 of heat. That is the price only on a reversible route, travelled infinitely slowly, and a demon with a door to keep has no such time. Karel Proesmans, Jannik Ehrich and John Bechhoefer [worked out the finite-time version](https://arxiv.org/abs/2006.03242) in 2020, the shortest-road cost for erasing one bit: erasing in a time τ costs more than the bound, and for slow erasures the excess falls off as 1/τ. The faster the demon forgets, the more it pays.

These results are bounds, not predictions: what any process must pay at minimum, not what a given process does.

What the principle tells us is that there is a most efficient way to make a change, and that the end state is the same whichever way is taken; only the bill differs. The cheapest way is the most demanding one. It requires full control over the system and time to spare: the more efficiency is wanted, the tighter the constraints. The question it leaves is not how to reach the minimum but what cost one is willing to live with to reach the outcome, and how soon.

<small>This post is part of the [conversations series](/blog/label/conversations/). See also the reference entries on <a href="/positioning/persons/i/ito/">Ito</a>, <a href="/positioning/persons/l/landauer/">Landauer</a>, and the thermodynamics pages on <a href="/positioning/subjects/t/thermodynamics/away-from-equilibrium/">away from equilibrium</a> and <a href="/positioning/subjects/t/thermodynamics/information-and-computation/">information and computation</a>.</small>


---
<small>Photo: <a href="https://unsplash.com/@joszczepanska">Jo Szczepanska</a> / Unsplash</small>
