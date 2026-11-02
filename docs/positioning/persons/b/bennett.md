---
layout: default
lastmod: 2026-05-27
title: "Charles Bennett (1943–)"
description: "American physicist — reversible computation, the resolution of Maxwell's demon, quantum teleportation, quantum key distribution, logical depth, the thermodynamics of information."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Bennett

# Charles Bennett (1943–)

Bennett showed that computation need not be thermodynamically irreversible. His 1973 proof — that any computation can be performed using only logically reversible operations — established that the fundamental thermodynamic cost of computation lies not in the computation itself but in the erasure of information: the clearing of memory, the discarding of intermediate results. The result completed the resolution of [Maxwell](/positioning/persons/m/maxwell/)'s demon paradox that [Landauer](/positioning/persons/l/landauer/) had begun, and it placed the [thermodynamics](/positioning/subjects/t/thermodynamics/) of information on a rigorous footing. Bennett later became a founding figure of quantum information science, contributing to the development of quantum teleportation, quantum key distribution, and the theory of quantum error correction.

---

## Life

Born 1943 in New York City. Educated at Brandeis University (BS in chemistry, 1964). PhD at Harvard University (1971), under [David Turnbull](https://en.wikipedia.org/wiki/David_Turnbull_(physicist)), working on the simulation of molecular dynamics. Joined IBM Research at the Thomas J. Watson Research Center in Yorktown Heights, New York (1972), where he has remained for his entire career — an IBM Fellow since 1995.

Bennett's early work was in the thermodynamics of computation, extending Landauer's programme. From the late 1970s onward, he turned to quantum information — becoming, with [Gilles Brassard](https://en.wikipedia.org/wiki/Gilles_Brassard), one of the founders of quantum cryptography, and contributing fundamental results in quantum teleportation, quantum entanglement distillation, and quantum complexity theory. Wolf Prize in Physics (2018, shared with Brassard). Breakthrough Prize in Fundamental Physics (2023).

---

## Reversible computation and Maxwell's demon

**Landauer's principle** (1961) established that erasing one bit of information dissipates at least k_B T ln 2 of energy. [Landauer](/positioning/persons/l/landauer/) showed that logically irreversible operations — operations that lose information (an AND gate, for example, takes two input bits and produces one output bit; the input cannot be recovered from the output) — must generate heat. The question left open: is computation inherently irreversible, or is the irreversibility a feature only of specific logical operations?

**Bennett's answer** (1973): computation is not inherently irreversible. Any computation that can be performed by a Turing machine can also be performed by a reversible Turing machine — one that never erases information and therefore need not dissipate energy. The construction is explicit: run the computation forward, copy the output, then run the computation backward (undoing all intermediate steps), leaving only the input and the output. The intermediate results are uncomputed rather than erased.

The implication for [Maxwell](/positioning/persons/m/maxwell/)'s demon: the demon's observation of molecules (gathering information) can in principle be done reversibly and without thermodynamic cost. But the demon's memory is finite. Eventually the demon must erase its accumulated records to make room for new observations — and that erasure, by Landauer's principle, generates at least as much entropy as the demon's sorting saved. The second law of thermodynamics is preserved. The critical step is not measurement (as [Leo Szilard](https://en.wikipedia.org/wiki/Leo_Szilard) had proposed in 1929) but erasure. Bennett's analysis identified the exact point where the demon fails.

---

## Quantum information

Bennett's contributions to quantum information science are foundational.

**Quantum key distribution** (BB84 protocol, 1984, with Brassard). The conceptual precursor was [Stephen Wiesner](https://en.wikipedia.org/wiki/Stephen_Wiesner)'s conjugate-coding idea (c. 1968–70): Wiesner proposed encoding information in quantum states chosen from conjugate bases — a scheme for quantum money that could not be counterfeited because measuring the quantum state in the wrong basis destroys the information. Wiesner's paper could not find a publisher for over a decade (it finally appeared in *SIGACT News* in 1983). Bennett, who knew of Wiesner's ideas through their personal connection, recognised with Brassard that conjugate coding could be turned into a practical key-distribution protocol. BB84 uses the polarisation states of individual photons, chosen from two conjugate bases; the security rests on the laws of quantum mechanics — any eavesdropper attempting to intercept and measure the photons disturbs them in a way that the communicating parties can detect. The protocol does not require computational assumptions about the difficulty of factoring or other mathematical problems; its security is guaranteed by physics. BB84 was the first practical quantum cryptography scheme and remains the basis of commercial quantum key distribution systems.

**Quantum teleportation** (1993, with Brassard, [Claude Crépeau](https://en.wikipedia.org/wiki/Claude_Cr%C3%A9peau), [Richard Jozsa](https://en.wikipedia.org/wiki/Richard_Jozsa), [Asher Peres](https://en.wikipedia.org/wiki/Asher_Peres), and [William Wootters](https://en.wikipedia.org/wiki/William_Wootters)). A protocol by which the complete quantum state of a particle can be transmitted from one location to another using a shared entangled pair and a classical communication channel. The original particle's state is destroyed in the process (no-cloning theorem); the receiving particle acquires the state exactly. No matter or energy is transmitted faster than light — the classical communication channel is needed to complete the protocol. The result was experimentally confirmed in 1997 and has become a central operation in quantum computation and quantum networking.

**Entanglement distillation.** Bennett and collaborators showed that noisy, partially entangled quantum states can be "distilled" into a smaller number of highly entangled states through local operations and classical communication — an essential tool for practical quantum communication over imperfect channels.

---

## Logical depth

Bennett's other major original contribution sits outside both the thermodynamics-of-computation work and the quantum-information programme. "Logical depth" (1988) is a measure of organised complexity — roughly, the computational time required to produce an object from its shortest description (its minimal programme). The measure distinguishes three kinds of objects: random objects (incompressible — long descriptions, but trivially generated), simple objects (short descriptions, quickly generated), and deep objects (short descriptions that require long computation to execute). A crystal is shallow: it has a short description and is quickly generated. A random string is shallow too: it has no shorter description than itself, but producing it from that description (copying it) is trivial. A genome, a well-adapted organism, or a work of mathematics is deep: the shortest description that specifies it requires a long computation to unpack.

Logical depth was proposed as a formal counterpart to the intuitive notion of "organised complexity" — the kind of structure that is neither random nor simple but carries the marks of a long causal history. The measure has been discussed in complexity theory and in conversations about the nature of biological organisation, though it has not become a standard computational tool in the way that [Kolmogorov complexity](https://en.wikipedia.org/wiki/Kolmogorov_complexity) has. Whether depth captures what is distinctive about biological and cognitive complexity — or whether the computational framing misses something about the kind of organisation that living systems exhibit — is an open question.

---

## Where Bennett stops

The reversible computation result is a proof of principle: any computation *can* be done reversibly, but reversible computers are far harder to build than conventional ones. The overhead of uncomputing intermediate results — running the computation backward — adds time and space costs. Whether reversible (or nearly reversible) computation will ever be practically realised at scale, or whether the thermodynamic limit will remain irrelevant to actual computer engineering, is an open engineering question that the theoretical result does not address.

The resolution of Maxwell's demon locates the thermodynamic cost in erasure, but the analysis assumes classical information and classical thermodynamics. In the quantum regime — where information is carried by quantum states with no classical analogue (superposition, entanglement) — the relationship between information and thermodynamics is more complex. [Quantum Landauer bounds](https://en.wikipedia.org/wiki/Landauer%27s_principle#Quantum_version), quantum Maxwell's demon protocols, and quantum thermodynamic cycles are active research areas that extend beyond Bennett's classical framework. Whether the classical erasure-cost picture survives intact in the quantum case, or whether quantum information requires a fundamentally different thermodynamic treatment, is not yet settled.

BB84 and quantum teleportation are rigorously proven secure and correct given ideal quantum operations. Practical implementations face engineering challenges — photon loss, detector imperfections, side-channel attacks — that the theoretical protocols do not address. The gap between theoretical quantum information science and practical quantum technology is the central challenge of the field.

---

## Key works

- Bennett, C. H., "Logical Reversibility of Computation," *IBM Journal of Research and Development* 17 (1973) — reversible computation, uncomputing
- Bennett, C. H., "The Thermodynamics of Computation — A Review," *International Journal of Theoretical Physics* 21 (1982) — Maxwell's demon resolved via erasure
- Bennett, C. H., "Dissipation, Information, Computational Complexity and the Definition of Organization," in *Emerging Syntheses in Science* (Addison-Wesley, 1988) — logical depth
- Bennett, C. H., & G. Brassard, "Quantum Cryptography: Public Key Distribution and Coin Tossing," *Proceedings of IEEE International Conference on Computers, Systems and Signal Processing* (1984) — BB84
- Bennett, C. H., et al., "Teleporting an Unknown Quantum State via Dual Classical and Einstein-Podolsky-Rosen Channels," *Physical Review Letters* 70 (1993) — quantum teleportation

---

See also: [Thermodynamics](/positioning/subjects/t/thermodynamics/) · [Information and Computation](/positioning/subjects/t/thermodynamics/information-and-computation/) · [Landauer](/positioning/persons/l/landauer/) · [Maxwell](/positioning/persons/m/maxwell/) · [Shannon](/positioning/persons/s/shannon/)
