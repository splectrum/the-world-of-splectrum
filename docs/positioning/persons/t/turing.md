---
layout: default
lastmod: 2026-07-03
title: "Alan Turing (1912–1954)"
description: "British mathematician — the Turing machine, computability, the Entscheidungsproblem, the Turing test, codebreaking, morphogenesis."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Turing

# Alan Turing (1912–1954)

Turing defined what it means for a problem to be computable. His 1936 paper "On Computable Numbers" introduced the Turing machine — an abstract device that can perform any computation that any mechanical procedure can perform — and used it to prove that some problems are undecidable: there is no algorithm that can determine, for every possible programme, whether it will halt or run forever. The result resolved [Hilbert](https://en.wikipedia.org/wiki/David_Hilbert)'s Entscheidungsproblem (decision problem) in the negative, independently of and simultaneously with [Alonzo Church](https://en.wikipedia.org/wiki/Alonzo_Church)'s proof using lambda calculus. The Turing machine became the foundational model of computation: every modern computer is, in the relevant sense, a universal Turing machine — a device that can simulate any other Turing machine given the right programme. Turing's wartime codebreaking at Bletchley Park, his post-war work on artificial intelligence (the Turing test), and his late work on the chemical basis of morphogenesis are each independently significant; together they make Turing one of the most consequential thinkers of the twentieth century.

---

## Life

Born 23 June 1912 in Maida Vale, London. His father Julius was in the Indian Civil Service. Educated at Sherborne School and King's College, Cambridge (BA in mathematics, 1934). Fellow of King's College (1935). PhD at Princeton (1938), under Church.

During the Second World War, Turing worked at the Government Code and Cypher School at [Bletchley Park](https://en.wikipedia.org/wiki/Bletchley_Park) (1939–45), where he led the effort to break the German Enigma cipher. His work — developing the Bombe (an electromechanical device for testing Enigma settings) and contributing to the breaking of the Naval Enigma — was central to the Allied signals-intelligence effort. The work was classified until the 1970s; Turing received no public recognition during his lifetime.

After the war, Turing joined the National Physical Laboratory (1945–48), where he designed the Automatic Computing Engine (ACE) — one of the first stored-programme computer designs. Then reader in mathematics at the University of Manchester (1948–54), working on the Manchester Mark 1 computer and on the chemical basis of biological pattern formation (morphogenesis).

Turing was prosecuted for homosexuality in 1952 under British law — homosexual acts were criminal offences at the time. He was convicted of "gross indecency," accepted chemical castration as an alternative to imprisonment, and was stripped of his security clearance. He died on 7 June 1954 in Wilmslow, Cheshire, from cyanide poisoning. The inquest ruled suicide; the circumstances remain debated. Posthumous royal pardon (2013). The "Alan Turing law" (2017) retrospectively pardoned men convicted under the historical legislation.

---

## The Turing machine and computability

"On Computable Numbers, with an Application to the Entscheidungsproblem" (1936) is the founding paper of theoretical computer science. Turing defined a mathematical model of computation: a machine that reads and writes symbols on an infinite tape, one cell at a time, following a finite set of rules. The machine is specified entirely by its rule table — a finite description that determines what the machine does for every combination of current state and current symbol.

**The universal Turing machine.** Turing showed that there exists a single machine — the universal Turing machine — that can simulate any other Turing machine. Given a description of any machine M and an input, the universal machine produces the same output as M would. The concept is the theoretical foundation of the stored-programme computer: a single device that can perform any computation, determined by its programme.

**The halting problem.** Turing proved that no algorithm can determine, for every possible programme and input, whether the programme will eventually halt or run forever. The proof is a diagonal argument (related to [Cantor](https://en.wikipedia.org/wiki/Georg_Cantor)'s and [Gödel](https://en.wikipedia.org/wiki/Kurt_Gödel)'s): assume such an algorithm exists, and derive a contradiction. The result establishes that there are limits to what computation can do — not practical limits (insufficient time or memory) but absolute limits (no procedure of any kind can solve the problem).

**The Church-Turing thesis.** The informal claim (not a theorem) that every effectively computable function is computable by a Turing machine. Church proved an equivalent result using lambda calculus; the thesis identifies the two formalisms as capturing the same intuitive notion of computability. The thesis is widely accepted and has never been refuted, though it is not provable in the mathematical sense because "effectively computable" is an informal concept.

---

## Artificial intelligence and morphogenesis

**"Computing Machinery and Intelligence"** (1950). The paper that introduced the question "Can machines think?" and proposed the imitation game (now called the Turing test) as a criterion: if a human interrogator, communicating by text with a machine and a human, cannot reliably distinguish between them, the machine should be credited with thinking. The test is behavioural — it asks not what the machine is doing internally but whether its external performance is indistinguishable from a human's. The paper anticipated and addressed multiple objections (the theological objection, the mathematical objection from Gödel, the argument from consciousness, Lady Lovelace's objection that machines cannot originate anything). It remains the most cited paper in the philosophy of artificial intelligence.

**"The Chemical Basis of Morphogenesis"** (1952). Turing's last major paper, published two years before his death, addresses a biological question: how does a homogeneous collection of cells develop into an organism with structured, non-homogeneous form — how do patterns arise in initially uniform tissue? Turing proposed a mechanism: reaction-diffusion systems, in which two or more chemical substances (morphogens) react with each other and diffuse through tissue at different rates. Under certain conditions, small random perturbations in the initial concentration are amplified by the reaction-diffusion dynamics, producing stable spatial patterns — stripes, spots, waves. The paper was largely ignored at publication; it has since been confirmed experimentally and is now recognised as a foundational contribution to mathematical biology and developmental biology.

---

## Where Turing stops

The Turing test has been criticised from multiple directions. [John Searle](/positioning/persons/s/searle/)'s Chinese Room argument (1980) claims that passing the Turing test does not demonstrate understanding — a system can manipulate symbols according to rules without comprehending their meaning. [Ned Block](https://en.wikipedia.org/wiki/Ned_Block)'s Blockhead thought experiment argues that a sufficiently large lookup table could pass the test without any intelligence at all. Whether the test captures what matters about intelligence — or whether it captures only the ability to simulate human conversation — is debated. The emergence of large language models, which can produce human-like text without anything resembling human understanding, has sharpened the question: if a system can pass the Turing test, does that settle the question of machine intelligence, or does it show that the test is too easy?

The Church-Turing thesis defines the boundary of the computable, but the boundary itself has been challenged. [Roger Penrose](/positioning/persons/r/penrose/) has argued that human mathematical understanding exceeds what any Turing machine can do — that the mind is non-computational (a claim disputed by most computer scientists and logicians). Quantum computing extends the range of practically feasible computation but does not extend the range of computability in the Church-Turing sense — a quantum computer can solve certain problems faster than a classical computer, but it cannot solve problems that a Turing machine cannot solve in principle. Whether there exist physical processes that compute functions beyond the Turing-computable remains an open question at the boundary of physics and computer science.

The morphogenesis paper was ahead of its time — reaction-diffusion patterns were not experimentally confirmed in biological development until decades later. The model is now productive and well-established, but it explains pattern formation in initially homogeneous systems; the relationship between Turing patterns and the gene-regulatory networks that actually drive development in real organisms is more complex than the reaction-diffusion model captures. Modern developmental biology combines Turing-type mechanisms with genetic and mechanical processes that the 1952 paper did not address.

---

## Key works

- Turing, A. M., "On Computable Numbers, with an Application to the Entscheidungsproblem," *Proceedings of the London Mathematical Society* 42 (1936) — the Turing machine, the halting problem, the universal machine
- Turing, A. M., "Computing Machinery and Intelligence," *Mind* 59 (1950) — the Turing test, the imitation game
- Turing, A. M., "The Chemical Basis of Morphogenesis," *Philosophical Transactions of the Royal Society B* 237 (1952) — reaction-diffusion, pattern formation

---

See also: [Evolution](/positioning/subjects/e/evolution/) · [Evolutionary Computation](/positioning/subjects/e/evolution/evolutionary-computation/) · [Von Neumann](/positioning/persons/v/von-neumann/) · [Penrose](/positioning/persons/r/penrose/) · [Shannon](/positioning/persons/s/shannon/)
