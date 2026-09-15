---
layout: default
lastmod: 2026-09-15
title: "Artemy Kolchinsky (b. 1982)"
description: "Theoretical physicist — semantic information defined through viability and counterfactual intervention, and stochastic thermodynamics: the entropic costs of computation, replication and information processing."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Kolchinsky

# Artemy Kolchinsky (b. 1982)

Kolchinsky works at the join of nonequilibrium statistical physics and information theory, on two strands that are usually kept apart. The first is stochastic thermodynamics in its meaning-free form: what it costs, thermodynamically, to compute, to copy, to erase. The second is an attempt to define *semantic* information physically — to say which of the correlations a system carries about its environment actually matter to it, and to do so in terms of the system's own dynamics rather than goals an observer assigns. The second strand is what made his name outside physics; the first is where his output has been concentrated.

---

## Life

Born 1982. B.A. from New York University (2004); Ph.D. in Informatics with a complex-systems focus and a minor in cognitive science from Indiana University, Bloomington (2015), supervised by Luis Rocha, with a dissertation on integration and modularity in complex systems. His early publications — biomedical text mining, brain connectomics with Olaf Sporns and colleagues — sit in cognitive science and network neuroscience rather than physics; the turn to statistical mechanics came later.

Program Postdoctoral Fellow at the Santa Fe Institute from 2015 to 2021, working with David Wolpert. Project researcher at the Universal Biology Institute, University of Tokyo (2022–2023), with Sosuke Ito. Marie Skłodowska-Curie Fellow at Universitat Pompeu Fabra in Barcelona (2023–2026), hosted by [Ricard Solé](/positioning/persons/s/sole/), on a project on the nonequilibrium thermodynamics of the origin of life. Since 2026 he has been a senior research scientist at XOR Labs in London, and his recent activity has run toward stochastic thermodynamics and questions adjacent to AI safety rather than toward semantic information.

---

## Semantic information

**The problem.** Shannon's theory measures correlation without regard to what the correlation is about or whether it matters. The gap has been filled before — by utility functions, by teleosemantics — but Kolchinsky and Wolpert set themselves two constraints in "Semantic information, autonomous agency and non-equilibrium statistical physics" (2018): the definition must be *intrinsic*, grounded in the system's own dynamics rather than in a goal an observer imputes, and it must be *universal*, applying to "a rock, a hurricane or a cell" alike. Utility approaches fail the first, they argue, because the objective comes from outside; teleosemantics fails it differently, defining meaning by selection history rather than present dynamics.

**The construction.** A system and its environment are jointly distributed and coupled over some interval. A **viability function** — the negative Shannon entropy of the distribution over the system's states, read as a degree of existence — measures how tightly the system is concentrated in states that keep it in being. The correlations between system and environment are then **scrambled** by counterfactual intervention, destroying them selectively, and the resulting loss of viability measures how much those correlations were worth. **Semantic information** is the syntactic information that survives the intervention which destroys as much correlation as possible without costing viability: the part that is doing work. The **semantic content** of a state is what the environment must be like, given that state, under that optimal intervention; **semantic efficiency** is the fraction of a system's correlations that are semantic at all.

**The gradient.** Their worked cases are a rock, a hurricane and a food-caching bird. The rock's correlations with its surroundings are worth nothing to its persistence; the hurricane's are worth little; the bird's are worth a great deal. Semantic information, on this reading, distinguishes agents from passive dissipative structures without a prior definition of agency — the gradient falls out of the measure.

**The relativities, which the authors state themselves.** The framework is explicit that its quantities are defined relative to three choices: the division of the world into system and environment, the timescale, and the initial distribution. These "generally represent 'subjective' choices of the scientist", and the viability function in particular "is exogenously determined by the scientist analysing the system, rather than being a purely endogenous characteristic of the system". They immediately qualify the concession: viability is less arbitrary than a scenario-specific utility function, because remaining in existence is almost always a necessary if usually implicit condition for anything else a system might be said to be doing.

**Lineage.** The paper credits [Carlo Rovelli](/positioning/persons/r/rovelli/) for the idea that meaningful information is survival-relevant correlation, citing his "Meaning and intentionality = information + evolution" (2018) and thanking him among the participants in the Santa Fe Institute's working group on the meaning of information. Rovelli's relational interpretation of quantum mechanics — where physical quantities are relative to interacting systems rather than absolute — does not appear in the paper.

**Reception.** Thinner than the framework's visibility suggests. The extensions in *PRX Life* are collaborations Kolchinsky is himself party to rather than independent uptake. The substantial outside engagement is Stuart J. Bartlett's "Causal Leverage Density" (2024, preprint), which objects that the framework is organism-centric in assuming a primary role for the viability of a subsystem, and replaces viability with observed changes in future phase-space trajectories so that the measure extends to neural networks and engineered systems. Despite the framework's explicit argument against teleosemantics, no reply from that quarter has appeared.

---

## Stochastic thermodynamics

The larger and more continuous body of work, and the one where his recent output sits. It concerns the entropic costs of processes carried out by small, fluctuating systems: the thermodynamics of computation, of information processing, and of copying.

With Wolpert he has worked on the thermodynamic costs of computation and of information flows; with Sosuke Ito and collaborators in Tokyo on information thermodynamics and its geometric formulations; with Solé's group in Barcelona on the thermodynamics of self-replication and the origin of life. His "Thermodynamic dissipation does not bound replicator growth and decay rates" (2024) argues against a widely discussed proposal of Jeremy England's that dissipation sets a bound on the ratio of replication to decay rates: a thermodynamically consistent replicator, Kolchinsky argues, cannot exhibit both first-order growth and first-order decay back into its own reactants, so the two quantities the bound relates cannot coexist as the derivation requires. The paper is careful that the objection is to a particular application rather than to the framework: he calls the original proposal stimulating and elegant, and notes a related point raised earlier by Saakian and Qian.

---

## Where Kolchinsky stops

The semantic-information framework measures *whether* a correlation matters to a system's persistence, and declines to say what it is about in any richer sense. The authors are explicit that meaning here is not representation, reference or aboutness as philosophy of mind uses those terms, and the formalism has no resources for them: a state's semantic content is a conditional distribution over environments, not a content the system entertains.

The framework also does not close the gap it identifies. The three relativities — system/environment division, timescale, initial distribution — are acknowledged as the analyst's choices, with the expectation that future work might reduce their arbitrariness; that work is not done, and the framework as it stands defines its quantities relative to a partition somebody selects. What it does not consider is the alternative to reducing the relativity, which is to treat it as structural rather than as a defect: the paper's own acknowledged source, Rovelli, had argued in a different domain that a quantity can be objective and relative at once, but that reading is not taken up.

---

## Key works

- Kolchinsky, A. & Wolpert, D. H., "Semantic information, autonomous agency and non-equilibrium statistical physics," *Interface Focus* 8(6):20180041 (2018) — the framework.
- Kolchinsky, A. & Wolpert, D. H., "Dependence of dissipation on the initial distribution over states," *J. Stat. Mech.* (2017) — the syntactic strand.
- Sowinski, D. et al., "Semantic Information in a Model of Resource Gathering Agents," *PRX Life* 1:023003 (2023) — the framework applied to an agent-based model.
- Kolchinsky, A., "Thermodynamic dissipation does not bound replicator growth and decay rates," *J. Chem. Phys.* 161:124101 (2024) — the argument against England's bound.
- Kolchinsky, A., "Measuring scales: integration and modularity in complex systems" (Indiana University, 2015) — the dissertation.

---

See also: [Thermodynamics](/positioning/subjects/t/thermodynamics/) · [Wolpert](/positioning/persons/w/wolpert/) · [Ito](/positioning/persons/i/ito/) · [Rovelli](/positioning/persons/r/rovelli/) · [Solé](/positioning/persons/s/sole/) · [Shannon](/positioning/persons/s/shannon/)
