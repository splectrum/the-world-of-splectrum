---
layout: default
lastmod: 2026-09-13
title: "What Entropy Is"
description: "Several quantities share the name — Clausius's thermodynamic entropy, Boltzmann's count of microstates, Gibbs's ensemble quantity, Shannon's information measure — and four readings divide over what any of them measures: objective, epistemic, relative to a coupling, relative to available means."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Thermodynamics](/positioning/subjects/t/thermodynamics/) > What entropy is

# What Entropy Is

Entropy is the most quoted quantity in thermodynamics and the least settled. Several distinct quantities carry the name, related by more than coincidence and less than identity, and the question of what any of them *measures* divides the field rather than merely puzzling it.

Entropy is not only a thermodynamic quantity: the word does technical work in information theory, dynamical systems and elsewhere, and whether those uses form one concept or a family is its own question. The [entropy subject](/positioning/subjects/e/entropy/) gathers them; this page is the thermodynamic side.

## The quantities

**Clausius's thermodynamic entropy** (1865) is the original and is defined phenomenologically, through heat exchanged reversibly divided by temperature. It is the quantity the second law is about, and it makes no reference to microscopic structure.

**Boltzmann's entropy** is the logarithm of the number of microscopic configurations compatible with a given macroscopic state — entropy as a count of the ways a macro-description can be realised.

**Gibbs's entropy** is defined over a probability distribution across microstates rather than over a count. It is the version that generalises to cases where Boltzmann's does not apply, and [Rovelli](/positioning/persons/r/rovelli/) among others prefers it for that reason: Boltzmann's construction presupposes a system decomposable into many identical subsystems, which fails for field theory, general relativity, and the universe taken as a whole.

**Shannon's entropy** (1948) measures the uncertainty of a probability distribution over messages. Its formula is **identical to Gibbs's**. Nobody disputes the identity of expression; everything at issue concerns what follows from it.

The relation between these is best stated carefully. Thermodynamic entropy is the *target*: Boltzmann's and Gibbs's quantities are **candidate definitions aiming to recover it**, and whether either succeeds is actively disputed — Foad Dizadji-Bahmani, Frigg and Stephan Hartmann, and separately Wayne Myrvold, have written on when and whether the recovery works. Treating the four as one quantity under four descriptions is a position, not a summary.

## What it measures — the interpretations

Three positions on what entropy is *about*, and a fourth that has emerged recently. Gibbs's formalism is deliberately not among them; see below.

### The objective reading

Entropy is a property of the system. The argument turns on a structural difference: Boltzmann's entropy is a function on phase space, evaluated at the system's *actual* microstate, whereas Gibbs's is a function of a probability distribution. Sheldon Goldstein, Joel Lebowitz, Roderich Tumulka and Nino Zanghì put the asymmetry in a sentence — "every classical system has a definite phase point X (even if we observers do not know it), a system does not 'have a ρ'." The microstate is there; the region containing it has a volume; the logarithm of that volume is a fact about the world.

Against epistemic readings they press three arguments. **The first is that ignorance gives wrong values.** Consider a sealed room containing a battery-powered heater that may or may not have been switched on, and suppose we do not know which. A fifty-fifty credence spreads the distribution across two macroscopically different regions and yields an entropy intermediate between the two — but the room's actual thermodynamic entropy is one value or the other, never the average. The case also defeats the reading on which the distribution records genuine preparation frequencies: install a real coin-tossing mechanism and the distribution is identical, so the intermediate value is still wrong. **The second is explanatory reach**: "In distant stars, does heat flow from the cooler to the hotter? In the days before humans existed…? After the human race becomes extinct…?" On their account, "the study of subjective entropy is a subfield of psychology, not of physics." **The third is that phase points do no work** in the Gibbsian quantity: it measures only the width of the distribution, and is unchanged by any volume-preserving transformation — yet how the actual microstates behave is what thermodynamics is about.

They also press a collapse: a Gibbsian who retreats to "the distribution should be flat over the macro-region containing the actual microstate" thereby recovers exactly the Boltzmann entropy, making the Gibbsian apparatus, in their phrase, an unnecessary detour.

The standard objection to the objective reading is that the partition into macrostates — which variables count as macroscopic — looks like something we choose. Here the Boltzmannians concede part of the point: different physicists may make different choices, and this, they write, "makes an 'anthropomorphic' element in S_B explicit." Their substantive reply is that the salience is found rather than chosen. Within an energy shell, one macro-region typically occupies more than 99.99% of the volume, and the regions differ so enormously in size that all the smaller ones together are dwarfed by the next one up. The architecture of the partition, and which cell counts as equilibrium, is forced by the dynamics; what remains free is where exactly to draw boundaries. Against David Wallace's charge that this leaves Boltzmann entropy subjective too, they distinguish rather than refute: the entropy gives "an objective answer to a question that is of interest from the human perspective."

The **typicality** approach is how this camp explains entropy increase without probabilities. Typicality is not chance: their illustration is that the digits of π "look very much like a random sequence although there is nothing random about the number π." A property is typical if it holds for the overwhelming majority of a set — no ensemble, no repetition, no randomness required. The approach absorbs rather than rejects the Gibbsian apparatus: "Gibbs's ensembles are best understood as measures of typicality, not of genuine probability." It also claims robustness, since points typical relative to one measure are typical relative to another not too different from it — which, they argue, makes the uniquely-correct-measure structure posited by Albert and Loewer's rival account empirically idle.

Typicality does not remove the need for a low-entropy past. Entropy increases in *both* time directions from most points in a non-equilibrium macro-region, so typicality alone yields false retrodictions. The assumption is relocated rather than dropped: what is taken to be typical is the universe's initial phase point within a macro-region of very low entropy.

### The epistemic reading

[E. T. Jaynes](https://en.wikipedia.org/wiki/Edwin_Thompson_Jaynes)'s papers of 1957 make statistical mechanics a form of inference. It is "about our knowledge of the world and not about the world itself"; entropy measures what the observer does not know about which microstate obtains; and equilibrium is picked out by the Maximum Entropy Principle — adopt the distribution of greatest entropy consistent with what is known. Jaynes called it subjective statistical mechanics without embarrassment, and the appeal is real: the principle is a general rule of inference, it derives the standard ensembles rather than postulating them, and it explains why thermodynamics works without requiring facts we could not have.

The standing objection is the one above in its general form, pressed by Michael Redhead, David Albert and Barry Loewer alike: processes happen because of how molecules behave, not because of what anyone knows or fails to know. Ice melts in an empty room. Lawrence Sklar adds that the approach leaves the system's dynamics with nothing to do. And the Maximum Entropy Principle has its own critics — Kenneth and Jonathan Denbigh, Uffink, and Teddy Seidenfeld have all asked whether it justifies anything or simply codifies a useful recipe.

The Jaynesian answers do not concede the ground. Against the sealed-room case, the reply is that the distribution is to be conditioned on the macrostate actually prepared, so a well-posed problem never spreads credence across macroscopically distinct regions in the first place — an entropy intermediate between two real values is the signature of a badly posed question rather than of the method. Against the empty room, the reply is that the theory's business is to say what any observer possessing given information will find on looking, and that it does so correctly whether or not anyone looks: the information indexed is the information available *about* the system, not a mental state that has to be occupied for the ice to melt. And where the objective reading treats the epistemic element as a defect, Jaynes treats it as a feature that explains something otherwise puzzling — why a method that makes no commitment about which microstate obtains should predict macroscopic behaviour at all. Whether these replies succeed is what the dispute consists of; they are the reason it has not closed.

### The relative reading

[Rovelli](/positioning/persons/r/rovelli/) proposes that entropy is relative without being about knowledge, and is explicit that the distinction is the point. Entropy depends on a coarse-graining — but the coarse-graining is neither a convention nor a state of anyone's information. It is fixed by *which variables physically couple* one system to another:

> A cup of hot tea does not cool down because of what I know or do not know about its molecules. The "choice" of macroscopic observables is dictated by the ways the system under consideration couples.

The resulting quantity he describes as **objective but relative to O** — the ignorance reading, in his phrase, stripped of its anthropocentric and subjectivist aspects.

He extends the proposal to the arrow of time, and marks the change of confidence as he does: after setting out the relative-entropy account he writes, "So far, I think all this is solid. Let me now take a speculative step." The step is a conjecture that in a sufficiently complex system there is always some subsystem whose coupling to the rest defines a coarse-graining relative to which the second law holds — so that low past entropy "can be fully perspectival," and the arrow of time is "real, but perspectival, like are real but perspectival the rotation of the sky or the setting of the sun." He describes the argument as making mild use of anthropic reasoning.

The proposal has had limited published uptake. The objections he discusses — from Robert Wald on thermalisation timescales, Albert on the limited number of fundamental interactions, and James Hartle on quasiclassical domains — are ones he reports from conference discussion and answers himself rather than published critiques, and the principals of the past-hypothesis debate do not appear to have replied in print. The relationalism is also not presented as derived from his relational quantum mechanics; that kinship is structural rather than stated, and the quantum case is reached instead through entanglement entropy and the choice of how to divide a system into parts.

### The resource-relative reading

A more recent position relativises entropy to something objective that is nonetheless not the system alone. Katie Robertson and Carina Prunkl's "Is Thermodynamics Subjective?" (2023) takes the anthropocentrism arguments seriously — from the heat/work distinction, from the second law, from the nature of entropy — and argues they "do not commit us to an anthropocentric view but instead point towards a resource-relative understanding of thermodynamics which can be shorn of the 'subjective gloss'." What entropy is relative to, on this account, is the *physical means of manipulation available*: a fact about how an agent is coupled to a system, not about what the agent believes. Wayne Myrvold's *Beyond Chance and Credence* (2021) argues the allied point from the side of probability, holding that thermodynamic concepts are observer-relative but that calling them subjective misleads, since what is at issue is "limitations on the physical means that are at the agents' disposal." The reading has a natural home in the resource-theory and control-theory treatments of thermodynamics.

### Where Gibbs's formalism sits

Gibbs's apparatus is what most of the field computes in, and that is a different thing from an interpretation of entropy. Roman Frigg and Charlotte Werndl titled a paper on the point: *"Can Somebody Please Say What Gibbsian Statistical Mechanics Says?"* Their finding is that the most widely used version of statistical mechanics leaves it unclear what the theory actually claims. What exists is not one position but a menu of stances toward the principle identifying ensemble averages with thermodynamic values — among them an explicit quietism that accepts the identification as primitive, which is the modal working attitude and is by their description a refusal to interpret rather than an interpretation. Others in the menu include ergodic rationalisations, probabilistic readings that Frigg and Werndl themselves favour with qualifications, and Casey McCoy's proposal that the distribution simply *is* the system's macrostate — which, as they note, comes at the cost of the deterministically evolving classical microstates the other readings assume.

The formalism's own users do not agree on the status of its central assumption: it is called the primary assumption of statistical mechanics by some textbooks and noted as unproven in general by others, and Gibbs endorsed it only for certain cases.

This has a consequence for the question of what the field's default is. The Stanford Encyclopedia describes a schism in which "the day-to-day work of physicists is in one framework and foundational accounts and explanations are given in another" — Gibbs predominant in practice, Boltzmann dominant in foundations — and declines to name either as orthodoxy. There is also a live argument that the practical predominance is not merely practical: Wallace's "The Necessity of Gibbsian Statistical Mechanics" holds that the Gibbsian approach handles cases the Boltzmannian cannot, and that objections to it either misfire or "apply with equal force to both approaches." Jos Uffink presses from the other direction that any system belongs to infinitely many ensembles, so that saying an individual system is or is not in statistical equilibrium makes no sense.

## The bearing on information

Whether the Gibbs–Shannon identity of formula licenses an identity of subject matter is the question underneath the whole [information thermodynamics](/positioning/subjects/t/thermodynamics/) literature. Jaynes's answer is that it does, which is why his reading and information theory arrived together. **Owen Maroney argues the opposite** — that thermodynamic and information-theoretic entropy are conceptually different, and that generalisations of Landauer's principle fail accordingly.

The practical consequence for anyone writing about entropy is that the familiar glosses each take a side. "Entropy is disorder" and "entropy is missing information" are not neutral paraphrases; they are the objective and epistemic readings respectively, stated as though the dispute were over.

---

See also: [The laws and the reduction](/positioning/subjects/t/thermodynamics/the-laws-and-the-reduction/) · [Thermodynamics](/positioning/subjects/t/thermodynamics/) · [Relational quantum mechanics](/positioning/subjects/r/relational-quantum-mechanics/) · [Shannon](/positioning/persons/s/shannon/)
