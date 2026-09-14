---
layout: default
lastmod: 2026-09-14
title: "Entropy"
description: "One word across thermodynamics, information theory, dynamical systems, ecology and economics — a family related by shared mathematics, with two genuine outsiders, and a live argument about whether the recurrence is unity or coincidence."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > Entropy

# Entropy

Entropy is a technical quantity in at least a dozen fields, and the question of whether they are all measuring the same thing has an answer more interesting than either yes or no.

This page gathers the homes of the word. The thermodynamic side — where it began, and where its interpretation is most contested — is treated at length in the [thermodynamics bundle](/positioning/subjects/t/thermodynamics/what-entropy-is/) and is not restated here.

## The name

Rudolf Clausius coined it in 1865, and explained his reasoning in the paper:

> If we wish to designate S by a proper name we can say of it that it is the transformation content of the body… However, since I think it is better to take the names of such quantities as these, which are important for science, from the ancient languages, so that they can be introduced without change into all the modern languages, I proposed to name the magnitude S the entropy of the body, from the Greek word ἡ τροπή, a transformation. I have intentionally formed the word entropy so as to be as similar as possible to the word energy, since both these quantities… are so nearly related to each other in their physical significance that a certain similarity in their names seemed to me advantageous.

[Shannon](/positioning/persons/s/shannon/)'s adoption of the same word in 1948 has no comparable record, and the story that fills the gap is doubtful. In the familiar telling, [von Neumann](/positioning/persons/v/von-neumann/) advised him to use it because "nobody knows what entropy really is, so in a debate you will always have the advantage" — recorded by Myron Tribus and Edward McIrvine in *Scientific American* in 1971. When Robert Price put it to Shannon directly in 1985, noting that Shannon's classified 1945 cryptography report already used the word and that he had not been in contact with von Neumann then, Shannon answered: "No, I don't think he did… I'm quite sure that it didn't happen between von Neumann and me." He added that he had known entropy from thermodynamics, "that goes way back", and recalled having been told the same story about himself by a physicist — whom Price identified as Jaynes. The anecdote had circulated back to its own supposed source.

## The family, and its outsiders

The most direct treatment of the question is Roman Frigg and Charlotte Werndl's "Entropy — A Guide for the Perplexed" (2011), which surveys the thermodynamic, information-theoretic, statistical-mechanical, dynamical-systems and fractal entropies. Their conclusion is that all of them **except the thermodynamic and the topological** can be understood as variants of some information-theoretic notion — while insisting that "different notions of entropy have different meanings and play different roles."

They also supply the instrument for asking the question, borrowed from Mary Hesse: the distinction between **formal** and **material** analogy. Two quantities are formally analogous when the same mathematical expressions describe them, and materially analogous when they share intrinsic properties beyond the mathematics. The distinction does real work — they judge the dynamical-systems entropies formally but not materially analogous to the information-theoretic ones, and conclude that claims of analogy in the literature are to that extent misleading.

Whether the recurrence amounts to unity is disputed. On the systematising side, the **Shannon–Khinchin axioms** pin the functional form tightly: continuity, maximality, expansibility and separability, with "generalized entropies" being those that relax the last. Anything measuring uncertainty over a distribution lands near Shannon's expression because very little else satisfies the constraints. Against this, **James Crutchfield, David Feldman and Cosma Shalizi** argued in "Many Entropies, Many Disorders" (2003) that the proliferation reflects choices rather than a discovered unity: there are many maximum entropies, hence many disorders, and which applies depends entirely on the question asked and the constraints assumed.

## Where the word does technical work

**Information theory.** Shannon's entropy (1948) measures the average surprise of a source. The descendants are genuinely connected rather than merely named alike: **Rényi entropy** (1961) generalises it with a uniqueness theorem, Shannon being the limiting case; **relative entropy**, or Kullback–Leibler divergence, is arguably the more primitive quantity, since Shannon entropy can be written in terms of it and it survives to continuous spaces where differential entropy does not; and **cross entropy** is the quantity minimised by most of contemporary machine learning, where it coincides with maximum likelihood. **Tsallis entropy** is a well-defined functional, but the non-extensive statistical mechanics programme built on it is contested — the constraint choices have been argued to be unmotivated, and critics note that varying them can produce whichever distribution is wanted.

**Algorithmic information theory.** Kolmogorov complexity measures the length of the shortest program producing a string — a property of an individual object rather than of a distribution. Its relation to Shannon entropy is a **theorem rather than an analogy**: expected complexity and entropy agree to within a constant. The constant is the complexity of the distribution itself and is unbounded across distributions, which popular accounts tend to drop.

**Dynamical systems.** **Kolmogorov–Sinai entropy** applies Shannon's functional to the measures of a partition, and for Bernoulli shifts returns Shannon's own number — the tightest link in the family. It was introduced for the isomorphism problem rather than for chaos, and Ornstein proved in 1970 that it is a complete invariant for that class. **Topological entropy** was built by imitating the construction with open covers, and is connected to the measure-theoretic version by a variational principle; it is also the quantity Frigg and Werndl place outside the information-theoretic family.

The deepest connection back to physics runs through the **thermodynamic formalism** of Sinai, Ruelle and Bowen, where pressure corresponds to free energy, Gibbs states to Gibbs states, and the variational principle takes the form of a free-energy principle. A one-dimensional lattice gas and a subshift of finite type are the same mathematical object. What transfers is mathematical structure: the "energy" is an arbitrary potential and the "temperature" a formal parameter.

**Ecology.** The Shannon diversity index applies Shannon entropy unmodified to species abundances — introduced by Ramon Margalef in 1957, and commonly miscredited to "Shannon–Weaver" after the 1949 book whose second author wrote an expository essay rather than the measure. The field has since largely moved past the raw index: Lou Jost argued in 2006 that entropies are not diversities, since they fail the replication principle, and that the fix is to exponentiate into **effective numbers of species** — the Hill numbers, which are the effective-number transforms of the Rényi entropies. Ecology adopted the conversion. An earlier eliminativist position, Stuart Hurlbert's "The nonconcept of species diversity" (1971), argued instead for abandoning the information-theoretic apparatus; his rarefaction methods survived, his eliminativism did not.

**Molecular biology.** Sequence logos, following Thomas Schneider and Michael Stephens (1990), measure position-wise information content in bits with an operational reading in substitution tolerance. Methylation entropy is a genuine Shannon computation that predicts chronological age out of sample.

**Economics.** The **Theil index** of inequality is redundancy in Shannon's exact sense — the gap between maximum and observed entropy of income shares, equivalently a divergence of income shares from population shares. It belongs to the generalized entropy family, which is the only class both additively decomposable by subgroup and satisfying the Pigou–Dalton condition, and that characterisation is why it persists where the Gini coefficient cannot decompose. Nicholas Georgescu-Roegen's *The Entropy Law and the Economic Process* (1971) is a different kind of contribution — a methodological critique of economics for modelling production as a circular flow blind to irreversibility, and the founding text of ecological economics. His proposed "fourth law of thermodynamics", holding that material entropy must also increase irreversibly, was rejected by the field he founded, on the grounds that the Earth is closed to matter but open to energy, so material entropy can be reduced indefinitely by exporting heat.

## Where the word carries more than the mathematics

Not every use is technical, and some of the looser ones are prominent. The claim that ageing *is* entropy increase treats organisms as though they were isolated systems, which they are not; the second law imposes no such requirement on a system exchanging energy with its surroundings. David Sinclair's information theory of ageing is a stronger and more specific proposal, and is disputed in the primary literature, with a 2024 correspondence in *Cell* titled "The information theory of aging has not been tested". Generic "network entropy" names many non-equivalent quantities — degree-distribution, von Neumann, Körner, random-walk and ensemble versions — that often function as heterogeneity statistics; the principled exception is the maximum-entropy ensemble literature.

One diagnostic separates the technical uses from the decorative: whether the quantity carries an operational reading of its units. Sequence logos yield bits that mean a tolerance for substitution; the Theil index yields a stated distance from an egalitarian reference; methylation entropy predicts an age. Where no such reading is available, the word tends to be carrying an argument the mathematics is not.

---

See also: [Thermodynamics](/positioning/subjects/t/thermodynamics/) — and [what entropy is](/positioning/subjects/t/thermodynamics/what-entropy-is/) for the thermodynamic quantity and its competing readings · [Shannon](/positioning/persons/s/shannon/) · [Boltzmann](/positioning/persons/b/boltzmann/) · [Gibbs](/positioning/persons/g/gibbs/) · [Emergence](/positioning/subjects/e/emergence/) — a word in a comparable situation
