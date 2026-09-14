---
layout: default
lastmod: 2026-09-14
title: "Information and Computation"
description: "Maxwell's demon, Szilard's engine, and Landauer's principle that erasing a bit has a thermodynamic cost — the experimental confirmations, the philosophical dispute over whether the principle does the work claimed for it, and the thermodynamics of computation as a field of its own."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Thermodynamics](/positioning/subjects/t/thermodynamics/) > Information and computation

# Information and Computation

The thought that information has thermodynamic standing began as a puzzle about whether the second law could be cheated, and became a field with experimental results and a live foundational argument about what those results establish.

## The demon

[Maxwell](/positioning/persons/m/maxwell/) posed it in a letter to Peter Guthrie Tait in December 1867, wanting, in his words, "to pick a hole" in the second law. Imagine a vessel of gas divided by a partition with a small door, and a being able to see individual molecules. It opens the door for fast molecules going one way and slow ones the other, does no work in operating a frictionless massless slide, and produces a temperature difference from nothing. The second law is broken by observation and timing alone.

Maxwell called it a "finite being"; the name demon was introduced by William Thomson in *Nature* in 1874, in the sense of the Greek *daimon*, a background agent rather than a malevolent one. The public presentation came four years after the letter, in *Theory of Heat* (1871).

**Leó Szilárd** sharpened it in 1929 by reducing the demon to a single molecule in a box with a movable partition, and identifying the crucial step as *measurement*: knowing which side the molecule is on is what allows work to be extracted. That reframing turned the puzzle from a question about mechanical arrangements into a question about information.

What made the question answerable was a measure. [Claude Shannon](/positioning/persons/s/shannon/)'s "A Mathematical Theory of Communication" (1948) quantified information as surprise — a message's content is the improbability of receiving it, and the average over a source is an entropy whose formula is the one Gibbs had written for statistical mechanics. The familiar story that von Neumann suggested the name — "nobody knows what entropy really is, so in a debate you will always have the advantage" — is one Shannon later denied, pointing out that he had used the word in a classified report in 1945. Whether the shared name marks a shared quantity is the question [the entropy page](/positioning/subjects/t/thermodynamics/what-entropy-is/) sets out; what is not in doubt is that after 1948 there was something definite for a thermodynamic cost to be a cost *of*.

## Landauer's principle

[Rolf Landauer](/positioning/persons/l/landauer/) proposed in 1961 that the thermodynamic cost lies not in measurement but in **erasure**: resetting a bit to a standard state in an environment at temperature T dissipates at least *k*T ln 2 of energy. Logically irreversible operations have an unavoidable thermodynamic price; logically reversible ones do not.

[Charles Bennett](/positioning/persons/b/bennett/) drew the consequence for the demon in the 1970s and 80s. The demon's memory must be reset before the cycle can repeat, and that erasure costs at least what the demon gained. The apparent violation is an artefact of not closing the cycle. Bennett also showed that computation can in principle be performed reversibly, so the cost attaches specifically to information destruction rather than to computation as such.

The bound has been confirmed experimentally. Bérut and colleagues (2012) manipulated a single colloidal particle in a double-well potential and measured dissipated heat approaching *k*T ln 2 in the slow-cycle limit; subsequent work has probed it with single spins and in quantum many-body settings.

## The dispute over what the principle establishes

Experimental confirmation of the bound and the claim that the bound exorcises the demon are different claims, and the second is contested.

**John Earman and John Norton** argued in "Exorcist XIV: The Wrath of Maxwell's Demon" (in two parts, 1998 and 1999) and Norton in "Eaters of the Lotus" (2005) that Landauer's principle is neither necessary nor sufficient for the exorcism. Their charge is circularity in the standard derivations: the erasure cost is derived by assuming the second law holds, and the cost is then invoked to explain why the second law holds. Norton also presses that the derivations mishandle fluctuations in the erasure process itself — that at the scale where a single bit is being erased, the thermal fluctuations are of the same order as the effect, and treating the process as a smooth quasi-static compression assumes what needs showing. **Owen Maroney** argues separately that the principle has not been shown to hold in general, and that thermodynamic and information-theoretic entropy are conceptually distinct in a way the standard argument elides.

**Bennett replied in 2003**, conceding a substantial part of the logical point while denying the conclusion: Landauer's principle is, he wrote, "in a sense a straightforward consequence or restatement of the second law", not an independent proof of it — but it retains "considerable pedagogic and explanatory power" in showing *where* the compensating entropy goes, which the bare second law does not. Note the chronology: Bennett is answering the earlier Earman–Norton papers, and Norton's 2005 paper then argues that Bennett's extension of the account fails in its turn.

**James Ladyman, Stuart Presnell, Anthony Short and Berry Groisman** (2007) defend a qualitative version of the principle and clarify what it quantitatively asserts, granting the second law as a premise rather than deriving it; **Ladyman and Katie Robertson** replied to Norton directly in 2013. A different constructive route runs through **Takahiro Sagawa and Masahito Ueda**, who formulated a generalised second law incorporating measurement and feedback — treating the demon's information explicitly in the accounting rather than arguing about erasure.

The dispute runs largely between physics and philosophy of physics, and the two camps address different claims. The experimentalists take the bound as verified, which it is. The philosophical objection is not that the experiments are wrong but that a verified bound does not by itself do the foundational work of exorcising the demon without circularity.

The standard anthology is Harvey Leff and Andrew Rex's *Maxwell's Demon 2* (2003), which collects the primary literature on both sides.

## The thermodynamics of computation

A distinct field has grown from the same root, and the distinction is worth keeping. Information thermodynamics in the sense above concerns single bits and single demons. The thermodynamics of computation concerns the entropic costs of *computational structures* — circuits, logically reversible circuits, information ratchets, Turing machines.

David Wolpert's "The stochastic thermodynamics of computation" (2019) is the field's programmatic statement, and makes a historical point about why it changed: the pre-2000 thermodynamics of computation was built on equilibrium statistical mechanics because that was the tool available, while the questions were about processes far from equilibrium. Stochastic thermodynamics supplied the machinery the subject had needed all along.

---

See also: [Thermodynamics](/positioning/subjects/t/thermodynamics/) · [Entropy](/positioning/subjects/e/entropy/) · [What entropy is](/positioning/subjects/t/thermodynamics/what-entropy-is/) · [Away from equilibrium](/positioning/subjects/t/thermodynamics/away-from-equilibrium/) · [Shannon](/positioning/persons/s/shannon/) · [Landauer](/positioning/persons/l/landauer/)
