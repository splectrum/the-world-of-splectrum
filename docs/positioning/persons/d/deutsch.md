---
layout: default
lastmod: 2026-05-28
title: "David Deutsch (1953–)"
description: "British physicist — quantum computing, the universal quantum computer, the Church-Turing-Deutsch principle, constructor theory, the defence of many-worlds."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Deutsch

# David Deutsch (1953–)

Deutsch gave quantum computing its foundational framework. The problem had been opened by [Paul Benioff](https://en.wikipedia.org/wiki/Paul_Benioff) (1980), who showed that computation can be modelled quantum-mechanically, and by [Richard Feynman](https://en.wikipedia.org/wiki/Richard_Feynman) (1982), who argued that quantum systems cannot be efficiently simulated by classical computers and proposed quantum simulators. Deutsch's distinct contribution was the universalising step: his 1985 paper described the universal quantum computer — a device that exploits quantum superposition and interference to perform computations that no classical computer can perform efficiently — and proposed the Church-Turing-Deutsch principle: that every finitely realisable physical system can be perfectly simulated by a universal quantum computer. The principle extends [Turing](/positioning/persons/t/turing/)'s classical result into the quantum domain and makes the quantum computer the fundamental model of computation in a quantum universe. Deutsch is also the most philosophically articulate defender of the [Everett](/positioning/persons/e/everett/) many-worlds interpretation, which he regards not as one interpretation among several but as the straightforward implication of taking quantum mechanics seriously — and which he argues is essential to understanding why quantum computation works.

---

## Life

Born 18 May 1953 in Haifa, Israel. Grew up in London. Educated at Cambridge (BA in natural sciences) and the University of Oxford (DPhil, under [Dennis Sciama](https://en.wikipedia.org/wiki/Dennis_Sciama)). Visiting member at the Center for Theoretical Physics at the University of Texas at Austin, where [Bryce DeWitt](/positioning/persons/d/dewitt/) was based — the connection to the Everettian programme came through DeWitt, who had revived Everett's work and was its most prominent advocate.

Visiting professor at the University of Oxford, affiliated with the Centre for Quantum Computation at the Clarendon Laboratory. Deutsch has held no permanent academic position in the conventional sense — he has worked as an independent researcher affiliated with Oxford for most of his career. Fellow of the Royal Society (2008). Dirac Medal (2017). Breakthrough Prize in Fundamental Physics (2023, shared with [Peter Shor](https://en.wikipedia.org/wiki/Peter_Shor), [Charles Bennett](/positioning/persons/b/bennett/), and [Gilles Brassard](https://en.wikipedia.org/wiki/Gilles_Brassard)).

---

## The universal quantum computer

"Quantum Theory, the Church-Turing Principle and the Universal Quantum Computer" (*Proceedings of the Royal Society A*, 1985). The paper that launched quantum computing as a field.

**The argument.** The Church-Turing thesis states that any effectively computable function can be computed by a Turing machine. But the thesis is about mathematical computability, not about physics. Deutsch asked: what is the physical version? What class of computations can be performed by a physical device operating under the actual laws of physics? If physics is quantum-mechanical, then the physical model of computation must be quantum-mechanical too — a classical Turing machine, which operates on definite (non-superposed) states, cannot efficiently simulate a quantum system. A quantum computer — a device whose computational states are quantum superpositions and whose operations are unitary transformations — can.

**The Church-Turing-Deutsch principle.** Every finitely realisable physical system can be perfectly simulated by a universal quantum computer operating in finite time. The principle extends the Church-Turing thesis from mathematical computability to physical simulability: the quantum computer is the device that can simulate any physical process, including quantum processes that classical computers cannot efficiently simulate.

**Deutsch's algorithm** (1985, extended with [Richard Jozsa](https://en.wikipedia.org/wiki/Richard_Jozsa) in 1992 as the Deutsch-Jozsa algorithm). The first demonstration that a quantum computer can solve certain problems faster than any classical computer — a proof of concept that quantum speedup is real, not merely theoretical. The algorithm is simple (it determines whether a function is constant or balanced using a single evaluation where a classical computer needs two), but it established the paradigm: quantum parallelism — the ability to evaluate a function on a superposition of inputs simultaneously — provides computational advantages that have no classical analogue.

The field Deutsch launched has since produced [Shor](https://en.wikipedia.org/wiki/Peter_Shor)'s algorithm (1994, factoring in polynomial time — threatening public-key cryptography), [Grover](https://en.wikipedia.org/wiki/Lov_Grover)'s search algorithm (1996), and the broader programme of quantum error correction, quantum complexity theory, and quantum information science.

---

## Many-worlds and constructor theory

**Many-worlds.** Deutsch argues that the Everett interpretation is not one option among several but the only interpretation consistent with what quantum computation does. When a quantum computer performs a computation, it exploits quantum parallelism — it evaluates a function on a superposition of inputs. Where are these computations happening? In the Everett picture, they happen across branches of the multiverse — each branch performs a different part of the computation, and interference between branches produces the result. Deutsch regards this as a straightforward physical explanation of quantum speedup; the alternatives (Copenhagen, which does not explain where the parallel computation happens, or Bohm, which requires non-local interactions across the entire universe) are, in his view, less explanatory.

*The Fabric of Reality* (1997) presents Deutsch's philosophical vision: four interlocking strands — quantum mechanics (Everett), epistemology ([Popper](/positioning/persons/p/popper/)'s falsificationism), evolution (Darwinian), and computation (Turing) — that together constitute the best current understanding of reality. *The Beginning of Infinity* (2011) extends the programme, arguing that the growth of knowledge has no inherent limits and that explanatory knowledge is the fundamental force in the universe.

**Constructor theory** (2013, with [Chiara Marletto](https://en.wikipedia.org/wiki/Chiara_Marletto)). Deutsch's most recent programme: a proposal to reformulate the foundations of physics in terms of what transformations are possible and what are impossible, rather than in terms of what happens (the trajectory of a system through time). A constructor is a system that causes a transformation and retains the ability to cause it again. The laws of physics, on this account, are constraints on which transformations constructors can and cannot perform. The framework is intended to be more fundamental than the standard dynamical-law formulation and to provide a foundation for information theory, thermodynamics, and quantum theory within a single framework. The programme is in its early stages.

---

## Where Deutsch stops

The many-worlds argument from quantum computation has been challenged. [Adrian Kent](https://en.wikipedia.org/wiki/Adrian_Kent), [Tim Maudlin](https://en.wikipedia.org/wiki/Tim_Maudlin), and others have argued that quantum computation does not require many-worlds — that the computational speedup can be explained within other interpretive frameworks (including Bohmian mechanics and information-theoretic approaches) without invoking parallel branches. Whether quantum computation constitutes evidence for many-worlds or is merely compatible with it is debated in the foundations community. On the critics' reading, Deutsch's claim is stronger than the physics strictly supports: the computation works regardless of which interpretation is correct.

The probability problem — what "probability" means in many-worlds, where all outcomes occur with certainty — affects Deutsch's programme directly. Deutsch (with [David Wallace](https://en.wikipedia.org/wiki/David_Wallace_(philosopher))) has proposed a decision-theoretic derivation of the Born rule: a rational agent in a many-worlds universe should make decisions as if the Born probabilities are real. [David Albert](/positioning/persons/a/albert/) and others have challenged the derivation. The debate is ongoing.

---

## Key works

- Deutsch, D., "Quantum Theory, the Church-Turing Principle and the Universal Quantum Computer," *Proceedings of the Royal Society A* 400 (1985) — the universal quantum computer
- Deutsch, D., & Jozsa, R., "Rapid Solution of Problems by Quantum Computation," *Proceedings of the Royal Society A* 439 (1992) — the Deutsch-Jozsa algorithm
- *The Fabric of Reality* (Allen Lane, 1997) — the four-strand worldview
- *The Beginning of Infinity* (Allen Lane, 2011) — the growth of knowledge
- Deutsch, D., "Constructor Theory," *Synthese* 190 (2013) — the constructor-theory programme

---

See also: [Everett](/positioning/persons/e/everett/) · [DeWitt](/positioning/persons/d/dewitt/) · [Turing](/positioning/persons/t/turing/) · [Bell](/positioning/persons/b/bell/) · [Bennett](/positioning/persons/b/bennett/) · [Relational quantum mechanics](/positioning/subjects/r/relational-quantum-mechanics/)
