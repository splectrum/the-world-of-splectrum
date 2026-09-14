---
layout: default
lastmod: 2026-09-14
title: "The Quantum Regime"
description: "What thermodynamics becomes when coherence and entanglement are thermodynamic resources: a family of second laws rather than one, erasure with negative cost, thermalisation in closed systems, and an unresolved question about what work even means."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Thermodynamics](/positioning/subjects/t/thermodynamics/) > The quantum regime

# The Quantum Regime

Quantum thermodynamics is not thermodynamics applied to small cold things. It is the field that opens when coherence and entanglement are treated as thermodynamic resources in their own right, and several of its results do not reduce to classical statements in any obvious way. Its standard entry points are the reviews by Vinjanampathy and Anders (2016) and by Goold, Huber, Riera, del Rio and Skrzypczyk (2016), and the collection *Thermodynamics in the Quantum Regime* (2018).

## A family of second laws

The most striking structural result comes from the resource-theoretic formulation, which rebuilds thermodynamics as a theory of which state transformations are permitted under a restricted set of free operations. Brandão, Horodecki, Ng, Oppenheim and Wehner showed in 2015 that for microscopic or highly correlated systems undergoing cyclic processes, **a single second law is insufficient**: a one-parameter family of generalised free energies must each be non-increasing, and the familiar second law is the non-increase of one member of that family. The others impose constraints it does not. In the thermodynamic limit the family collapses and the classical statement is recovered — so the extra laws are invisible for macroscopic systems and binding for small ones.

## Erasure at negative cost

[Landauer's](/positioning/subjects/t/thermodynamics/information-and-computation/) bound says erasing a bit costs at least *k*T ln 2. In the quantum case it can be less than zero. Del Rio, Åberg, Renner, Dahlsten and Vedral showed in 2011 that an observer whose memory is entangled with the system has *negative conditional entropy* about it, and can extract work while erasing, cooling the environment in the process.

The result is widely mis-stated, and the two conditions that make it consistent are essential. The process is **not cyclic**, and the negative cost is paid for by consuming entanglement, which can only be restored by doing work. Reported without those conditions it reads as a violation of the second law, which it is not.

## Thermalisation without a bath

A closed quantum system evolving unitarily never changes its entropy, yet isolated systems are observed to reach thermal equilibrium. The **eigenstate thermalisation hypothesis** — proposed by Deutsch (1991) and Srednicki (1994), named and promoted after Rigol, Dunjko and Olshanii's numerical work in 2008 — holds that individual energy eigenstates of a generic interacting many-body Hamiltonian already look thermal to local observables. The system serves as its own bath, and equilibrium is a property of the eigenstates rather than something an environment imposes.

It is a hypothesis, not a theorem. It is very well supported numerically and has been proved in restricted settings, but not for generic interacting systems, and it has known classes of exception — integrable systems, many-body localisation, quantum many-body scars, and systems with long-range interactions — each of which is itself an active research area.

Whether this is the same phenomenon as **decoherence** is open, and the two should not be run together. Einselection, in Zurek's account, is an *open-system* story about which basis survives environmental monitoring — it answers *which states*. The eigenstate hypothesis is a *closed-system* story with no environment at all, and answers *which values*. Both are driven by entanglement and both concern the emergence of classical-looking behaviour, but they address different questions, and work attempting to bridge them is a research programme rather than a settled identification.

## Coherence as a resource, and the advantage question

**Ergotropy** — introduced by Allahverdyan, Balian and Nieuwenhuizen in 2004 — is the maximum work extractable from a quantum state by cyclic unitary operations. It decomposes into a part accessible to incoherent operations and a part carried by coherences, which is a definitional result and not in dispute.

Whether this amounts to a thermodynamic *advantage* is another matter. The sceptical case is that the coherence had to be created, and the cost of creating it is frequently left out of the accounting; and that coherence functions as a constraint as well as a resource, obeying second laws of its own, as Lostaglio, Jennings and Rudolph showed.

Experiments exist: Klatzow and colleagues reported coherence-enhanced operation in a nitrogen-vacancy-centre engine in 2019, and Kim and colleagues demonstrated superabsorption-based power scaling with entangled qubits in 2022. But "quantum advantage" in a heat engine has no single agreed meaning — advantage in power, in efficiency, in efficiency at maximum power and in the size of fluctuations are different claims, and a device can win on one while losing on another. That there is now a literature on *certifying* quantum enhancement, for instance through violation of the classical thermodynamic uncertainty relation, is itself a sign that bare performance claims were not found convincing.

## What is work?

Underneath all of this sits an unresolved foundational problem: quantum mechanics has no uncontroversial work operator. The standard approach is the two-point measurement scheme, measuring energy before and after a process and taking work to be the difference — but the initial measurement collapses coherences, which is to say it destroys exactly the feature whose thermodynamic role the field is trying to study. Alternative definitions exist and none commands consensus, so the disputes above are partly downstream of a disagreement about what the quantity being disputed is.

---

See also: [Thermodynamics](/positioning/subjects/t/thermodynamics/) · [Information and computation](/positioning/subjects/t/thermodynamics/information-and-computation/) · [Relational quantum mechanics](/positioning/subjects/r/relational-quantum-mechanics/) · [What entropy is](/positioning/subjects/t/thermodynamics/what-entropy-is/)
