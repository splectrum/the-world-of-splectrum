---
layout: default
lastmod: 2026-08-20
title: "Karl Friston (b. 1959)"
description: "British neuroscientist of the free energy principle, active inference and predictive coding, and earlier of brain-imaging statistics: SPM, VBM and DCM."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Friston

# Karl Friston (b. 1959)

Friston proposed that everything a brain does — perceiving, learning, acting — is one process: minimising the gap between what its model of the world predicts and what actually arrives. The free energy principle states it at full generality: any self-organising system that persists must act as if it minimises variational free energy, an information-theoretic bound on surprise. On the principle, the brain maintains a generative model — a model of the world that projects predictions of incoming signals; predictions descend the cortical hierarchy, prediction errors ascend, and the system revises itself continuously toward better prediction. Action gets the same treatment inverted: rather than updating the model to match the input, the organism moves so that the input matches the model — active inference, perception and action as two ways of closing one gap. Before any of this, Friston built the statistical infrastructure that modern brain imaging runs on — which is why his standing in neuroscience does not depend on how the free energy principle fares.

---

## Life

Born 12 July 1959 in York, England. Read natural sciences — physics and psychology — at Cambridge, took his medical degree in London, then trained in psychiatry; his research career began in schizophrenia, where he developed the dysconnection hypothesis — schizophrenia as a disorder of connectivity between brain regions rather than of any single region. The clinical question of how to measure connectivity led to the methodological work that made his name: statistical parametric mapping (SPM), the framework that became the standard for analysing functional brain images, followed by voxel-based morphometry (VBM) and dynamic causal modelling (DCM). These tools are universally adopted infrastructure — among the reasons he is one of the most-cited neuroscientists alive — and have had their own contested moment: Eklund, Nichols and Knutsson (2016) showed that widely used cluster-inference settings, in SPM among other packages, could inflate false-positive rates well beyond their nominal levels, prompting corrections across the field. Fellow of the Royal Society (2006). Scientific Director of the Wellcome Centre for Human Neuroimaging at University College London.

The free energy principle emerged in the mid-2000s — "A theory of cortical responses" (2005), "A free energy principle for the brain" (2006), and the full statement "The free-energy principle: a unified brain theory?" (2010). Later phases extended the ambition beyond the brain to life as such, via the Markov blanket formalism. In 2022 he joined VERSES AI as Chief Scientist, pushing active inference as an alternative paradigm to mainstream machine learning.

---

## The free energy principle

**The principle.** Organisms persist by keeping themselves within viable states, and mathematically this is equivalent to minimising surprise — how improbable the current sensory input is under the organism's model. Surprise itself cannot be computed directly, but variational free energy is a computable upper bound on it; minimise the bound and surprise is kept low. The principle is deliberately general: it applies to any system that maintains its form against dissipation.

**Predictive coding — the process theory.** The principle says what must happen; process theories say how a brain might do it. The leading one is predictive coding, whose lineage predates the principle ([Rajesh Rao](https://en.wikipedia.org/wiki/Rajesh_P._N._Rao) and Dana Ballard's 1999 model of visual cortex) and was later absorbed into it: each cortical level predicts the activity of the level below, only the errors — the differences between prediction and arrival — propagate upward, and the model revises until the errors quiet. The evidence attaches to the process theory, not the principle: repetition suppression (responses falling as a stimulus becomes predictable), the mismatch negativity (a signal thrown up precisely when a prediction fails), and laminar recordings looking for predictions and errors in separate cortical layers — with suggestive but still contested results. In philosophy of mind the process theory became a movement of its own: [Andy Clark](https://en.wikipedia.org/wiki/Andy_Clark) and [Jakob Hohwy](https://en.wikipedia.org/wiki/Jakob_Hohwy) developed predictive processing into a general account of mind, carrying Friston's framework to audiences well beyond neuroscience.

**Active inference.** Perception updates the model to fit the world; action changes the world to fit the model. Both minimise the same quantity. Planning becomes inference over futures — selecting the actions expected to minimise free energy going forward. This is the part Friston advances as a paradigm for artificial intelligence, distinct from the mathematics machine learning already shares with him: variational free energy is the negative of the evidence lower bound that variational autoencoders optimise, so the objective is unremarkable in the field — the distinctive claim is the mechanism.

**The live disputes.** Three run through the reception. *Falsifiability:* Friston himself concedes the principle is not falsifiable — like Hamilton's principle of least action, it is to be judged by usefulness rather than test. Andrews (2021) argues that demands for falsifiability rest on a category error — the principle is a model structure, not an empirical theory; Colombo and Wright (2021) press the harder reading, that a framework which can redescribe anything constrains nothing. *The Markov blanket:* the formalism draws a statistical boundary between a system's internal states and the world, and the wider literature treats that boundary as the boundary of the organism or the mind. Bruineberg, Dołęga, Dewhurst and Baltieri (2022) argue this conflates a modest statistical construct with a metaphysically loaded one, and that the ontological conclusions do not follow from the mathematics; enactivist critics press the related objection that inference and internal models are the wrong ontology for life and mind. *Dopamine:* the best-evidenced prediction-error result in neuroscience — Schultz, Dayan and Montague's 1997 finding that midbrain dopamine neurons signal reward prediction error — belongs to reinforcement learning's frame, not perceptual inference. Friston reinterprets dopamine as encoding the precision of prediction errors; the mainstream reading keeps it as reward error.

---

## Where Friston stops

The dark room problem is the objection the programme has carried from the start, because it comes from inside the programme's own logic: if a system exists by minimising surprise, why does it not seek out the least surprising environment available — a dark, quiet corner — and stay there forever? The standard reply is that an organism's generative model encodes expectations of the states its kind occupies — a fish expects water — so the dark room is itself surprising relative to the model. Critics reply that this saves the principle by putting the interesting content somewhere else: what an organism prefers, what its states are about, what its predictions mean.

On the critics' reading, that is where the principle stops. It specifies a dynamic — minimise the bound on surprise — but not the preferred states that make one organism's viable envelope different from another's, not the content of the generative model, and not the semantics of prediction: what makes an internal state a prediction *of* something rather than merely a state that co-varies with it. These questions sit outside the formalism and are handed to whatever theory supplies the model.

---

## Key works

- Friston, K., "A theory of cortical responses," *Philosophical Transactions of the Royal Society B* (2005) — the opening statement
- Friston, K., J. Kilner and L. Harrison, "A free energy principle for the brain," *Journal of Physiology-Paris* (2006) — the principle named
- Friston, K., "The free-energy principle: a unified brain theory?" *Nature Reviews Neuroscience* (2010) — the full claim
- Rao, R. and D. Ballard, "Predictive coding in the visual cortex," *Nature Neuroscience* (1999) — the process theory's independent root
- Bruineberg, J. et al., "The Emperor's New Markov Blankets," *Behavioral and Brain Sciences* (2022) — the boundary critique, with commentaries

---

See also: [Edelman](/positioning/persons/e/edelman/) · [Baars](/positioning/persons/b/baars/) · [Di Paolo](/positioning/persons/d/di-paolo/) · [Enactivism](/positioning/subjects/e/enactivism/) · [Process models of the brain](/positioning/subjects/c/cognition/neuroscience/process-models/)
