---
layout: default
lastmod: 2026-09-14
title: "Away from Equilibrium"
description: "What thermodynamics becomes when systems are not left alone: the near-equilibrium regime and Onsager's relations, the several competing non-equilibrium frameworks, Prigogine's dissipative structures and the disputes around his programme, and the stochastic thermodynamics that now covers small systems."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Thermodynamics](/positioning/subjects/t/thermodynamics/) > Away from equilibrium

# Away from Equilibrium

Classical thermodynamics is a theory of equilibrium — of states systems settle into and transitions between them. Most of the world is not in equilibrium. Living things, weather, flames, economies and the universe itself are held away from it by flows, and the question of what thermodynamics says about systems maintained in that condition has produced several theories rather than one.

## Near equilibrium

Close to equilibrium, the situation is tractable and well understood. Flows respond linearly to the forces driving them — heat flux proportional to temperature gradient, current to voltage — and **Lars Onsager's reciprocal relations** (1931, and the Nobel Prize in Chemistry in 1968) establish that the matrix of proportionality constants is symmetric: the coefficient coupling one flow to another's driving force equals its counterpart, as a consequence of microscopic reversibility. When time-reversal symmetry is broken, by a magnetic field for instance, the relations take an antisymmetric form due to Onsager and Casimir.

This regime ends where linearity does. Far from equilibrium the force-flow relation is no longer linear, and the structure that makes the near-equilibrium theory work is unavailable.

## The several non-equilibrium thermodynamics

What lies beyond is not a single field. Several frameworks compete, with different primitives and different domains of claimed validity:

- **Classical Irreversible Thermodynamics**, the Onsager–Prigogine–de Groot–Mazur lineage, extending equilibrium quantities to local regions assumed to be in local equilibrium.
- **Extended Irreversible Thermodynamics** (Jou, Casas-Vázquez, Lebon), which promotes the fluxes themselves to independent variables.
- **Rational Extended Thermodynamics** (Müller and Ruggeri) and **Rational Thermodynamics** (Truesdell, Coleman and Noll), building from continuum-mechanical axioms.
- **GENERIC** (Grmela and Öttinger), a formalism separating reversible and irreversible parts of the dynamics.
- **Maximum and steepest entropy production** approaches (Beretta among others).
- **Stochastic thermodynamics**, the newest and the subject of the final section here.

These disagree technically, not merely in emphasis, and unification attempts exist — which is itself evidence that the field is not unified.

## Prigogine, in three parts

[Ilya Prigogine](/positioning/persons/p/prigogine/) received the Nobel Prize in Chemistry in 1977 and, through *Order Out of Chaos* with [Isabelle Stengers](/positioning/persons/s/stengers/), became the most widely read figure in this territory. His work is usually received as a single body, and its parts have fared very differently.

**Dissipative structures.** The claim that systems held far from equilibrium by a flow of energy can spontaneously form and maintain ordered structures — convection cells, chemical oscillations, the Brusselator model — is solid, lasting, and the foundation of much subsequent work on pattern formation. Nothing here is in dispute.

**Minimum entropy production.** The principle that a system near equilibrium settles into the state of least entropy production has a narrower validity than its fame suggests. It holds in the linear regime and requires the phenomenological coefficients to be constant, a condition critics have argued no real material satisfies. [Landauer](/positioning/persons/l/landauer/) produced a counterexample in 1975 involving simple electrical resistances, and the traditional proof has been argued to be incorrect outright — in *Technical Physics Letters* (2003) and in a critical analysis in the *International Journal of Heat and Mass Transfer* (2007).

**Fundamental irreversibility.** Prigogine's broader claim — that irreversibility is not a statistical or emergent feature but a fundamental property of nature, requiring a reformulation of dynamics itself — is a minority position. The detailed critique is Jean Bricmont's "Science of Chaos or Chaos in Science?" (1996), which defends the classical statistical-mechanical account of irreversibility against it and argues that the case for fundamental irreversibility rests on misreadings of what the mathematics shows. There is a reply literature, including Näpinen and Müürsepp in *Foundations of Science* (2002), arguing that Bricmont's reading understates the conceptual problem Prigogine was addressing.

The gap between Prigogine's standing with general readers and his standing among specialists in the foundations of physics is unusually wide, and the three parts above are the reason: the first is uncontested, the second narrow, the third contested in detail.

## Stochastic thermodynamics

The most consequential recent development applies thermodynamic quantities to systems small enough that fluctuations dominate — a colloidal bead in an optical trap, a single molecule being unfolded, a biological motor. Its move is to define heat, work and entropy production **along individual trajectories** rather than only as ensemble averages, which Ken Sekimoto established in the late 1990s. Udo Seifert's 2012 review is the standard reference.

Its signature results are the **fluctuation theorems**. The Crooks fluctuation theorem (1999) relates the probability of a given amount of work in a forward process to the probability of its negative in the time-reversed process; the Jarzynski equality (1997) follows by integrating that relation, and allows equilibrium free-energy differences to be extracted from measurements on processes driven arbitrarily far from equilibrium — a result that surprised the field.

What these say about the second law is easy to overstate, and one influential experimental paper is titled in a way that has encouraged it. The theorems do not show the second law is violated. They quantify the probability of *negative entropy production along a single trajectory*, a probability exponentially suppressed in the entropy produced and therefore negligible for anything macroscopic. The second law is recovered exactly as a statement about averages — indeed the theorems imply it. The accurate description is that they **refine** the second law from an inequality about averages into an equality about distributions.

Experimental confirmation is extensive: the Jarzynski equality tested by unfolding RNA with optical tweezers (Liphardt and colleagues, 2002), the Crooks theorem verified in RNA folding (Collin and colleagues, 2005), and a colloidal bead in a translating trap demonstrating trajectory-level negative entropy production (Wang and colleagues, 2002).

A further result is the **thermodynamic uncertainty relation** (Barato and Seifert, 2015; general proof by Gingrich, Horowitz, Perunov and England, 2016): in a non-equilibrium steady state, the relative fluctuation of any current is bounded by the entropy production. Precision costs dissipation, quantitatively. Its significance is that it is a constraint **not derivable from the second law** — genuinely new physics rather than a reinterpretation. Its scope is bounded: it holds for classical Markovian dynamics in steady state, is violated in quantum systems and under time-dependent driving, and has generated a family of generalisations with differing validity conditions.

The field has its own open questions. The definition of heat along a trajectory carries an ambiguity under multiplicative noise — the Itô versus Stratonovich choice — and has been argued to yield second-law violations when kinetic coefficients depend on the system variables. The Jarzynski equality's convergence is dominated by rare trajectories, which is a practical limitation and arguably a foundational one. And whether the framework extends cleanly to quantum systems inherits an unresolved problem: there is no uncontroversial definition of work in quantum mechanics.

Stochastic thermodynamics has largely superseded the earlier non-equilibrium frameworks for small systems, which is worth stating plainly: it is not another entry in the list above but the setting in which most current work on the mesoscale is done.

---

See also: [Thermodynamics](/positioning/subjects/t/thermodynamics/) · [The laws and the reduction](/positioning/subjects/t/thermodynamics/the-laws-and-the-reduction/) · [Complex adaptive systems](/positioning/subjects/c/complex-adaptive-systems/) · [Phase transitions](/positioning/subjects/p/phase-transitions/)
