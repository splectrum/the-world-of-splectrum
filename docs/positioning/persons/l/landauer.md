---
layout: default
lastmod: 2026-05-27
title: "Rolf Landauer (1927–1999)"
description: "German-American physicist — Landauer's principle, the thermodynamics of computation, information as physical, the resolution of Maxwell's demon."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Landauer

# Rolf Landauer (1927–1999)

Landauer established that information is physical — that the processing and erasure of information are thermodynamic acts with irreducible energetic costs. His principle (1961): erasing one bit of information in a system at temperature T requires a minimum dissipation of k_B T ln 2 of energy, where k_B is [Boltzmann](/positioning/persons/b/boltzmann/)'s constant. The result is small (at room temperature, about 3 × 10⁻²¹ joules per bit — far below what any current technology approaches) but conceptually foundational: it connects the abstract concept of information to the physical processes of [thermodynamics](/positioning/subjects/t/thermodynamics/), and it resolved [Maxwell](/positioning/persons/m/maxwell/)'s century-old demon paradox by showing that the demon's information processing generates at least as much entropy as its sorting saves. "Information is not a disembodied abstract entity; it is always tied to a physical representation" — Landauer's formulation made information a subject of physics, not just of mathematics.

---

## Life

Born 4 February 1927 in Stuttgart, Germany, into a Jewish family. Fled Nazi Germany with his parents in 1938, emigrating to the United States. Undergraduate at Harvard (BS, 1945). PhD in physics at Harvard (1950), studying semiconductor physics. Joined IBM's Thomas J. Watson Research Center in Yorktown Heights, New York (1952), where he spent his entire career — forty-seven years — rising to IBM Fellow (1969), the company's highest technical distinction.

IBM in the 1950s through 1990s was one of the world's leading centres for condensed-matter physics and computer science, and Landauer's position there gave him sustained access to both communities. His early work was on electron transport in disordered media — the Landauer formula for conductance (relating a wire's resistance to its quantum-mechanical transmission properties) is a foundational result in mesoscopic physics, distinct from his information-thermodynamics work but equally influential within condensed-matter physics.

Landauer was known for his insistence on physical concreteness — the repeated demand that abstract concepts be grounded in physical implementations. "Information is physical" was not just a result but a methodological stance: he was suspicious of theorising that floated free of material substrates. Died 27 April 1999 in Briarcliff Manor, New York.

---

## Landauer's principle and the thermodynamics of computation

"Irreversibility and Heat Generation in the Computing Process" (1961) is Landauer's central paper. The argument:

Computation involves logical operations. Some logical operations are logically irreversible — they lose information. An AND gate takes two input bits and produces one output bit; the output does not uniquely determine the inputs. The information about which specific input combination produced the output is erased.

Landauer showed that this logical irreversibility has a thermodynamic consequence: the erased information must be dissipated as heat. The minimum dissipation per bit erased is k_B T ln 2. The result follows from the connection between information and entropy: a bit of information corresponds to a factor of 2 in the number of microstates consistent with the macrostate; erasing it reduces the information-theoretic entropy of the computation and must therefore increase the thermodynamic entropy of the environment by at least the same amount.

The converse is also significant: logically reversible operations (operations that do not erase information) need not dissipate energy in principle. [Charles Bennett](/positioning/persons/b/bennett/) extended this in 1973, showing that any computation can be performed using only logically reversible operations (reversible computing), and that the fundamental thermodynamic cost of computation is therefore not in the computation itself but in the erasure — the act of clearing the tape, resetting the register, discarding intermediate results.

---

## Maxwell's demon resolved

[Maxwell](/positioning/persons/m/maxwell/)'s demon (1867) appeared to violate the second law of thermodynamics: a being that could observe individual molecules and sort them by speed could reduce entropy without doing work. [Leo Szilard](https://en.wikipedia.org/wiki/Leo_Szilard) (1929) reformulated the problem in information-theoretic terms: the demon acquires information about each molecule, and this acquisition must have a thermodynamic cost. Landauer's principle completed the resolution: the critical step is not the acquisition of information but its erasure. The demon must eventually erase its memory (its storage is finite), and the erasure — by Landauer's principle — dissipates at least as much entropy as the demon's sorting saves. The second law is preserved.

The resolution was not immediately accepted — the thermodynamics-of-information programme was regarded as speculative by some physicists through the 1980s and 1990s. Experimental confirmation of Landauer's principle came in 2012, when [Antoine Bérut](https://en.wikipedia.org/wiki/Antoine_B%C3%A9rut) and colleagues measured the heat dissipated when a single bit of information was erased in a colloidal system, finding agreement with the Landauer bound. The experiment confirmed that the connection between information and thermodynamics is not merely formal but physical.

---

## Where Landauer stops

Landauer's principle establishes a minimum thermodynamic cost for information erasure, but it does not address the broader question of what information is — whether information is a fundamental physical quantity (on the same footing as energy, charge, or spin) or a derived concept that describes patterns in physical systems. [John Wheeler](https://en.wikipedia.org/wiki/John_Archibald_Wheeler)'s "it from bit" programme and the subsequent development of quantum information theory have pushed the question further than Landauer's framework can take it. Landauer's contribution is the connection between information and thermodynamics; the ontological question — whether information is physical stuff or physical description — remains open.

The Landauer bound is a lower limit, and current computing technology operates many orders of magnitude above it. Whether the bound will ever be practically relevant — whether future technologies will approach the thermodynamic minimum — depends on engineering developments that Landauer's physics cannot predict. Some researchers in reversible computing and quantum computing work toward the bound; others regard it as a theoretical limit with no practical consequence. The significance of the principle is conceptual (it establishes that computation has irreducible physical costs) rather than immediately technological.

Landauer's methodological stance — "information is physical," the insistence on material substrates — is productive but leaves open the question of what counts as a physical substrate. In quantum information theory, information is carried by quantum states whose properties (superposition, entanglement, no-cloning) have no classical analogue. Whether Landauer's classical analysis extends straightforwardly to quantum information processing, or whether the quantum case requires fundamentally different principles, has been explored by Bennett, [David Deutsch](https://en.wikipedia.org/wiki/David_Deutsch), and others, with results that are partly confirmatory and partly revisionary. The thermodynamics of quantum computation is an active field that builds on Landauer but extends beyond him.

---

## Key works

- Landauer, R., "Irreversibility and Heat Generation in the Computing Process," *IBM Journal of Research and Development* 5 (1961) — Landauer's principle; the thermodynamic cost of information erasure
- Landauer, R., "Information is Physical," *Physics Today* 44(5) (1991) — the programmatic statement; the methodological stance
- Landauer, R., "The Physical Nature of Information," *Physics Letters A* 217 (1996) — the mature treatment; information as tied to physical representation
- Landauer, R., "Spatial Variation of Currents and Fields Due to Localized Scatterers in Metallic Conduction," *IBM Journal of Research and Development* 1 (1957) — the Landauer formula for conductance (mesoscopic physics)

---

See also: [Thermodynamics](/positioning/subjects/t/thermodynamics/) · [Information and Computation](/positioning/subjects/t/thermodynamics/information-and-computation/) · [Shannon](/positioning/persons/s/shannon/) · [Maxwell](/positioning/persons/m/maxwell/) · [Boltzmann](/positioning/persons/b/boltzmann/)
