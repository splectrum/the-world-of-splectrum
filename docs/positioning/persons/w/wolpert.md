---
layout: default
lastmod: 2026-09-15
title: "David Wolpert (b. 1961)"
description: "American physicist and computer scientist — the No Free Lunch theorems, stacked generalization, the stochastic thermodynamics of computation, and physical limits on inference."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Wolpert

# David Wolpert (b. 1961)

Wolpert is best known for a negative result: that no learning algorithm is better than any other when averaged over all possible problems. The No Free Lunch theorems are among the most cited results in machine learning, and they say something uncomfortable — that an algorithm's performance is a claim about the world it is being applied to, not about the algorithm. His later work runs in a different register but keeps the same interest in limits: what computation costs thermodynamically, and what a physical system can and cannot infer about the universe it is part of.

---

## Life

Born 1961. Physicist by training, with a career that has moved between physics, computer science and their interface. He worked at NASA Ames Research Center, where he led work on collective intelligence and multi-agent systems, and has been a professor at the Santa Fe Institute, where much of the thermodynamics-of-computation work has been done. He is also affiliated with the Complexity Science Hub in Vienna. His publication record spans machine learning, game theory, statistical physics and the foundations of computation.

---

## The No Free Lunch theorems

**The result.** Wolpert's "The Lack of A Priori Distinctions Between Learning Algorithms" (1996) and, with William Macready, "No Free Lunch Theorems for Optimization" (1997) establish that averaged uniformly over all possible objective functions, every search or learning algorithm performs identically. Any algorithm that does better than random on some class of problems does correspondingly worse on another.

**What it means, and what it does not.** The theorems are often read as saying that machine learning is impossible or that algorithm choice does not matter, which inverts the point. What they establish is that performance is not a property of an algorithm alone: it is a relation between an algorithm and the structure of the problems it meets. An algorithm works because its assumptions match the world it is applied to — the assumptions are doing the work, and the theorems make them impossible to leave implicit. The uniform average over all possible problems is not a claim that real problems are uniformly distributed; it is the assumption under which the result is proved, and the practical moral is that the distribution matters and must be argued for.

**Stacked generalization.** A separate and heavily used contribution, introduced in 1992: combining the predictions of several models by training a further model on their outputs. Stacking became standard practice in applied machine learning, and both winning entries in the Netflix Prize used it.

---

## The thermodynamics of computation

Wolpert's current programme, and a distinct field from information thermodynamics narrowly construed. Where the older literature concerned the cost of erasing a single bit, his "The stochastic thermodynamics of computation" (2019) treats the entropic costs of computational *structures* — circuits, logically reversible circuits, information ratchets, Turing machines — asking what a given computation must dissipate given how it is implemented.

He makes a historical argument about why the field changed. The thermodynamics of computation before about 2000 was built on equilibrium statistical mechanics, because that was the machinery available, while the processes it described are far from equilibrium. Stochastic thermodynamics — fluctuation theorems, trajectory-level definitions of heat and work — supplied the tools the subject had needed from the start, and the questions could then be posed properly.

Related work includes bounds on the thermodynamic cost of information flows and, with [Kolchinsky](/positioning/persons/k/kolchinsky/), on how dissipation depends on the initial distribution over a system's states.

---

## Physical limits of inference

A third strand asks what an inference device embedded in the universe can establish about that universe. Wolpert's results here concern the impossibility of certain kinds of self-prediction and mutual prediction between physical inference devices — a physics-flavoured relative of the diagonal arguments in logic and computability, run on systems that are part of what they are trying to predict rather than standing outside it.

---

## Semantic information

With [Kolchinsky](/positioning/persons/k/kolchinsky/) he co-authored the 2018 definition of semantic information in terms of viability and counterfactual intervention — the framework described on Kolchinsky's page. It is a minor part of Wolpert's corpus by volume and citation, and is not the reason for his standing, though the two share the underlying interest in what information costs and what it is for.

---

## Where Wolpert stops

The No Free Lunch theorems establish that an algorithm's success depends on a match between its assumptions and the problems it meets, and are silent on the question that follows: which assumptions are the right ones for the world we are actually in. That is not an oversight but the shape of the result — a theorem proved by averaging over all possible worlds cannot tell you about this one. What the theorems do is make the question unavoidable; what they do not do is answer it, and the working machine-learning practice of choosing architectures by what happens to work on benchmarks is the field proceeding without an answer.

The thermodynamics of computation likewise gives costs given an implementation. Which implementations are available to a physical system, and why biological computation takes the forms it does rather than others, sit outside what the formalism supplies.

---

## Key works

- Wolpert, D. H., "The Lack of A Priori Distinctions Between Learning Algorithms," *Neural Computation* 8(7) (1996).
- Wolpert, D. H. & Macready, W. G., "No Free Lunch Theorems for Optimization," *IEEE Transactions on Evolutionary Computation* 1(1) (1997).
- Wolpert, D. H., "Stacked Generalization," *Neural Networks* 5(2) (1992).
- Wolpert, D. H., "The stochastic thermodynamics of computation," *J. Phys. A* 52:193001 (2019) — the programmatic statement.
- Kolchinsky, A. & Wolpert, D. H., "Semantic information, autonomous agency and non-equilibrium statistical physics," *Interface Focus* 8(6) (2018).

---

See also: [Kolchinsky](/positioning/persons/k/kolchinsky/) · [Thermodynamics](/positioning/subjects/t/thermodynamics/) · [Ito](/positioning/persons/i/ito/) · [Shannon](/positioning/persons/s/shannon/) · [Landauer](/positioning/persons/l/landauer/)
