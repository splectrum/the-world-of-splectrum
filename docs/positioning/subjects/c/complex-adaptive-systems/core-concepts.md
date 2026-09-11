---
layout: default
lastmod: 2026-05-25
title: "CAS — Core concepts"
description: "The core concepts of complex adaptive systems — agent, emergence, self-organization, adaptation, coevolution, heterogeneity, path dependence, fitness landscapes, the adjacent possible, criticality."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Complex Adaptive Systems](/positioning/subjects/c/complex-adaptive-systems/) > Core concepts

# Core concepts

The vocabulary CAS has built for adaptive dynamics. The concepts group naturally: the population (what the system is made of), the dynamics (what happens), the structure of trajectories (how the landscape shapes what can happen next), and the critical regime (where the dynamics are richest).

---

## The population

**Agent.** A locally acting component with internal rules that shape its behaviour. The term spans a wide range — from simple genetic-algorithm bit strings to richly modeled adaptive individuals with internal models, memory, and anticipation. Holland's agent has internal models; Kauffman's emphasis falls less on the individual agent and more on the population dynamics. The range is part of what CAS is; the tradition does not settle on a single agent-definition.

> "An agent interacting with its environment generates internal models: a class of rules that enables the agent to anticipate the future consequences of current actions." — Holland, *Hidden Order* (1995)

**Local interaction without central control.** Agents interact with neighbours and immediate environment, not with a global controller. Order arises local-to-global. This is the canonical CAS pattern and what distinguishes the tradition from command-and-control modeling.

**Heterogeneity.** Agents differ, and the differences are load-bearing. Homogeneous populations are a special case, and typically an uninteresting one. Heterogeneity drives the variety-and-selection dynamics that make the system adaptive.

---

## The dynamics

**Emergence.** Global patterns arising from local interaction, not reducible to the sum of individual behaviours. Holland: "Emergent phenomena in CAS... are, almost by definition, parsing-resistant" (*Emergence*, 1998). Flocking, market crashes, traffic jams, immune responses — the pattern is not in any single agent. The field's methodological literature keeps the term distinct from self-organisation: self-organisation names the process by which order arises without external control, emergence the relation of the resulting pattern to its base.

**Self-organization.** Systems shaping their own order without external imposition. Kauffman's contribution is the sharpest version of this: autocatalytic networks bootstrapping into organised wholes, "order for free" arising from network topology rather than from natural selection. The claim is that selection is not the only source of biological order — that the structure of the network itself generates organisation independently. This puts self-organization in productive tension with the neo-Darwinian emphasis on selection as the primary organising force. Kauffman does not reject selection; he argues it works alongside — and is constrained by — the order that network topology provides for free.

> "We may be at home in the universe in ways we have hardly begun to comprehend." — Kauffman, *At Home in the Universe* (1995)

**Adaptation.** Agents and populations changing through feedback with environment and one another. Holland distinguishes adaptation (population-level selection of successful strategies) from learning (individual-level adjustment of internal models). Both operate in CAS; neither is primary.

**Coevolution.** Agents and environments shaping each other across time. The distinction from one-sided adaptation matters: in coevolution, the environment is not a fixed backdrop against which agents adapt — it is itself composed of other agents, and their adaptations change the conditions for everyone. The fitness landscape is not static; agents' actions reshape it, and the reshaped landscape alters agents' prospects. Arthur's increasing returns in economics: small initial advantages lock in through positive feedback, producing path-dependent outcomes that are historically contingent rather than convergent.

---

## The structure of trajectories

**Path dependence.** The trajectory matters; current state is not reducible to proximate causes. History shapes what futures are available and which are favoured.

**Fitness landscape / dynamical landscape.** Topology over which agents or populations move; shape favours some routes and makes others harder. Kauffman's NK landscapes formalise this: N components, K epistatic interactions per component; at low K the landscape is smooth with a single peak; at high K it is rugged with many local optima. The landscape is reshaped by agents' trajectories through it.

**Adjacent possible.** Kauffman's concept: from any current state, the set of states reachable by a single step. The adjacent possible expands as the system explores — each step opens new possibilities that were previously out of reach. Creativity and innovation as exploration of the expanding adjacent possible.

---

## The critical regime

**Phase transitions and criticality.** [Per Bak](/positioning/persons/b/bak/)'s self-organized criticality: systems driven toward critical states where small perturbations can trigger cascading events of any size — sand-pile dynamics, power-law distributions. [Christopher Langton](/positioning/persons/l/langton/)'s "edge of chaos" extends this: the proposal that computation and adaptation are richest at the phase transition between ordered and chaotic regimes. In ordered regimes, perturbations die out and the system is frozen; in chaotic regimes, perturbations cascade without bound. At the edge, information propagates across the system without either dying or exploding — and it is here, Langton argues, that adaptive behaviour finds its purchase.

**Non-linearity and feedback.** Small changes can have large effects; outcomes loop back into conditions. Positive feedback amplifies departures from current state; negative feedback dampens them. The interplay drives the dynamics far from equilibrium.
