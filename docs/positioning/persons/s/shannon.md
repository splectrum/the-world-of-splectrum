---
layout: default
lastmod: 2026-05-28
title: "Claude Shannon (1916–2001)"
description: "American mathematician and engineer — information theory, the bit, channel capacity, the mathematical theory of communication, and the demonstration that information and entropy share the same form."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Shannon

# Claude Shannon (1916–2001)

Shannon was a mathematician and electrical engineer whose "A Mathematical Theory of Communication" (1948) founded information theory — the mathematical framework for quantifying, transmitting, and processing information. The central result: information can be measured, and its measure takes the same mathematical form as thermodynamic entropy. A message is informative to the extent that it reduces uncertainty; the amount of information is quantified by the logarithm of the number of possible messages — the same structure as [Boltzmann's](/positioning/persons/b/boltzmann/) S = k log Ω. Shannon did not claim that information *is* entropy in a physical sense; he showed that the mathematics is identical. The connection between information and thermodynamics, which [Rolf Landauer](/positioning/persons/l/landauer/) later made physical, runs through Shannon's formalism.

---

## Life

Born 30 April 1916 in Petoskey, Michigan. Grew up in Gaylord, Michigan. BS in mathematics and electrical engineering from the University of Michigan (1936). Moved to MIT, where his master's thesis (1937) — "A Symbolic Analysis of Relay and Switching Circuits" — demonstrated that Boolean algebra could be used to analyse and design electrical circuits. The thesis is widely regarded as the founding document of digital circuit design: it showed that the logic of switches (on/off, true/false) maps directly onto the algebra of propositions, making it possible to design circuits that perform logical operations.

PhD from MIT (1940), with a thesis on "An Algebra for Theoretical Genetics" — Boolean methods applied to Mendelian inheritance, a cross-domain move that foreshadowed the information theory work. Spent a year at the Institute for Advanced Study in Princeton (1940–41), where he overlapped with [von Neumann](/positioning/persons/v/von-neumann/). Worked at Bell Telephone Laboratories from 1941, where the information theory work was done. The wartime context — communication, cryptography, signal processing — shaped the problems. Also worked on fire-control systems and cryptography during the war; his classified report "A Mathematical Theory of Cryptography" (1945) paralleled the information theory work (the declassified version appeared as "Communication Theory of Secrecy Systems," 1949).

Appointed professor at MIT (1956), where he remained until retirement. Shannon was famously playful — he built juggling machines, a flame-throwing trumpet, a mechanical mouse that could learn to navigate a maze (Theseus, 1950), and various other gadgets. Awarded the National Medal of Science (1966), the Kyoto Prize (1985), and the IEEE Medal of Honor. Diagnosed with Alzheimer's disease in the early 1990s. Died 24 February 2001 in Medford, Massachusetts, aged eighty-four.

---

## A Mathematical Theory of Communication

Published in two parts in the *Bell System Technical Journal* (July and October 1948). Republished as a book with Warren Weaver's popular introduction (*The Mathematical Theory of Communication*, University of Illinois Press, 1949).

**The source coding theorem.** The amount of information produced by a source can be quantified by its entropy: H = −Σ p_i log p_i, where p_i is the probability of the i-th message. A source that produces equiprobable messages has maximum entropy (maximum uncertainty, maximum information per message). A source whose output is perfectly predictable has zero entropy (no uncertainty, no information). Shannon adopted John Tukey's term **bit** (binary digit) as the fundamental unit of information — the amount of information gained by learning the outcome of a fair coin flip.

**The channel capacity theorem.** Every communication channel has a maximum rate at which information can be transmitted reliably — the channel capacity. Shannon proved that it is possible to transmit information at any rate below the channel capacity with an arbitrarily low probability of error, by using sufficiently sophisticated encoding. The theorem is an existence proof: it demonstrates that reliable communication is possible but does not specify how to build the codes. The construction of codes approaching the Shannon limit became a major research programme — turbo codes (1993) and low-density parity-check codes eventually came close.

**Noise and redundancy.** The theory treats noise as a mathematical quantity — the conditional entropy of the received signal given the sent signal — and redundancy as the difference between a source's maximum possible entropy and its actual entropy. Natural language, for example, is highly redundant: English has roughly 50% redundancy, meaning that about half of what is written is predictable from context. The redundancy provides error correction — we can read text with missing letters because the structure of the language constrains the possibilities.

---

## The entropy connection

Shannon's information entropy and Boltzmann's thermodynamic entropy share the same mathematical form. The connection was noted immediately. A well-known story has [von Neumann](/positioning/persons/v/von-neumann/) advising Shannon to call his measure "entropy" because "nobody knows what entropy really is, so in a debate you will always have the advantage" — recorded by Tribus and McIrvine in 1971. Shannon denied it when Robert Price put it to him in 1985, observing that his classified 1945 cryptography report already used the word: "I'm quite sure that it didn't happen between von Neumann and me." He recalled knowing entropy from thermodynamics, and having been told the same story about himself by another physicist.

Whether the connection is merely formal (the same mathematics applied to different domains) or physically substantive (information and thermodynamic entropy are the same thing measured differently) has been debated since. [Rolf Landauer](/positioning/persons/l/landauer/)'s principle (1961) — that erasing one bit of information requires a minimum dissipation of k_B T ln 2 of energy — made the connection physical: information processing has irreducible thermodynamic costs. [Charles Bennett](/positioning/persons/b/bennett/)'s work on reversible computation and Maxwell's demon further developed the information-thermodynamics interface. The connection is now a working framework in statistical mechanics, quantum information theory, and the physics of computation — though the underlying question of whether the two entropies are one quantity remains open in the foundations literature, where [the reading of entropy](/positioning/subjects/t/thermodynamics/what-entropy-is/) is itself disputed.

---

## The master's thesis

"A Symbolic Analysis of Relay and Switching Circuits" (1937). The thesis demonstrated that the design of switching circuits (telephone exchanges, computing circuits) could be systematised using Boolean algebra. Every relay circuit can be described as a Boolean function; every Boolean function can be implemented as a relay circuit. The thesis provided the theoretical foundation for digital circuit design. Howard Gardner later called it "possibly the most important, and also the most noted, master's thesis of the century."

---

## Where Shannon stops

Shannon's theory is a theory of information quantity, not information meaning. The famous opening line of the 1948 paper: "The fundamental problem of communication is that of reproducing at one receiving point a message selected at another point. Frequently the messages have meaning; that is they refer to or are correlated according to some system with certain physical or conceptual entities. These semantic aspects of communication are irrelevant to the engineering problem." The theory measures how much information a message carries, not what it means. Semantic information — the content, reference, and significance of a message — lies outside the framework. Whether a theory of semantic information can be built on Shannon's syntactic foundation, or whether it requires fundamentally different tools, remains an open question in the philosophy of information.

---

## Key works

- Shannon, C. E., "A symbolic analysis of relay and switching circuits," *Transactions of the AIEE* 57 (1938) — Boolean algebra applied to circuit design
- Shannon, C. E., "A mathematical theory of communication," *Bell System Technical Journal* 27 (1948) — the founding paper of information theory
- Shannon, C. E., & Weaver, W., *The Mathematical Theory of Communication* (University of Illinois Press, 1949) — the paper with Weaver's popular introduction
- Shannon, C. E., "Communication theory of secrecy systems," *Bell System Technical Journal* 28 (1949) — information theory applied to cryptography
- Shannon, C. E., "Prediction and entropy of printed English," *Bell System Technical Journal* 30 (1951) — the redundancy of natural language

---

See also: [Thermodynamics](/positioning/subjects/t/thermodynamics/) · [Boltzmann](/positioning/persons/b/boltzmann/) · [Von Neumann](/positioning/persons/v/von-neumann/) · [Wiener](/positioning/persons/w/wiener/) · [Complex Adaptive Systems](/positioning/subjects/c/complex-adaptive-systems/)
