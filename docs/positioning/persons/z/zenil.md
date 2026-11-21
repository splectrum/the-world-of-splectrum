---
layout: default
lastmod: 2026-05-26
title: "Hector Zenil (1979–)"
description: "Hector Zenil, complexity researcher: algorithmic information theory, causality, and the critique that assembly theory reduces to Kolmogorov complexity."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Zenil

# Hector Zenil (1979–)

Zenil is a computer scientist and complexity researcher whose work centres on algorithmic information theory (AIT) and its applications to biology, network science, and causality. His programme applies Kolmogorov-Solomonoff-Chaitin complexity — the theoretical minimum description length of an object — to real-world systems, developing computable approximations that make algorithmic complexity practically usable. Since 2024 he has led a sustained formal critique of [assembly theory](/positioning/subjects/a/assembly-theory/), arguing that the assembly index is mathematically subsumed by existing complexity measures and that the theory's empirical findings are reproducible with standard compression algorithms.

---

## Life

Born in Mexico City. BSc in mathematics from the National Autonomous University of Mexico (UNAM). MPhil in logic from the University of Paris 1 Panthéon-Sorbonne / ENS. Double PhD: computer science from the University of Lille (LIFL) and philosophy from the Sorbonne, working on experimental algorithmic information theory. Awarded French citizenship for academic merit. Postdoctoral work at the Behavioural and Evolutionary Theory Lab, University of Sheffield.

Faculty member in the Department of Computer Science at the University of Oxford (senior researcher, John Templeton Principal Investigator). Researcher at the Machine Learning Group, Department of Chemical Engineering and Biotechnology, University of Cambridge. Co-led the Algorithmic Dynamics Lab at the Karolinska Institute (Stockholm) with Narsis Kiani, applying algorithmic information dynamics to systems biology. Currently Associate Professor / Senior Lecturer at King's College London, School of Biomedical Engineering & Imaging Sciences, Faculty of Life Science & Medicine and King's Institute for Artificial Intelligence. Appointed as one of ten independent AI scientific advisors to the Alan Turing Institute. Editor of the journal *Complex Systems*.

Founder and director of the Online Algorithmic Complexity Calculator (OACC), a computational tool that estimates algorithmic complexity for short strings and small objects where traditional compression methods fail. Co-founder of the Algorithmic Nature Group.

---

## Algorithmic information theory and its applications

Zenil's programme bridges the gap between the theoretical framework of algorithmic complexity (which is in general uncomputable) and practical applications in science.

**The Coding Theorem Method (CTM).** A method for estimating the algorithmic complexity of short strings and small objects by using the output distributions of small Turing machines. Traditional compression algorithms (LZ, gzip) fail on short strings because they need statistical regularity to compress; the CTM provides estimates where compression cannot. This addresses a real limitation: many objects of scientific interest — gene sequences, network motifs, small molecules — are too short for compression-based approximation to work.

**Block Decomposition Method (BDM).** An extension of CTM that handles larger objects by decomposing them into small blocks, estimating each block's algorithmic complexity via CTM, and aggregating. BDM allows algorithmic complexity estimation for objects of arbitrary size while retaining the short-string accuracy of CTM where it matters most.

**Algorithmic causality.** Applications of algorithmic information dynamics to causal inference — using perturbation analysis and complexity changes to identify causal structure in networks and biological systems. Published applications in systems biology, genomics, and network science.

---

## The assembly theory critique

Zenil and collaborators — Felipe Abrahão, Santiago Hernández-Orozco, Narsis Kiani, Jesper Tegnér, Allen Uthamacumaran — have pursued a sustained critique of assembly theory across multiple peer-reviewed papers since 2024. The [AIT debate](/positioning/subjects/a/assembly-theory/the-algorithmic-information-theory-debate/) carries the full treatment.

The critique operates on three levels:

**Technical.** The assembly index is mathematically equivalent to a restricted version of LZ compression, which is itself an approximation to Kolmogorov complexity. The assembly index calculation is equivalent to the size of a compressing context-free grammar. In the critics' assessment, assembly theory constitutes a weak version of algorithmic complexity.

**Empirical.** The same molecular discrimination achieved by assembly index — separating biological from abiotic samples — can be reproduced using Shannon entropy and standard compression algorithms. The critics demonstrated this using a substantially larger chemical dataset than the assembly theory authors' original sample.

**Framing.** Assembly theory makes broad unification claims that are not warranted by the formal novelty of the framework, and relies on definitions from complexity theory used without attribution.

The defenders have replied in *npj Complexity* (2025). The exchange is ongoing.

---

## Where Zenil stops

Zenil's programme is computational and formal. The algorithmic information theory framework provides measures of complexity, tools for causal inference, and methods for classifying objects by their generative depth. Assembly theory's defenders reply that their measure is mechanistically grounded in physical joining operations, not in abstract symbol manipulation, and that Zenil's critique does not engage that distinction on its own terms. Whether the physical grounding matters — whether a materially grounded measure does different scientific work from a formally equivalent but physically ungrounded one — is the open question at the centre of the debate.

---

## Key works

- Zenil, *Algorithmically Probable Mutations Reproduce Aspects of Evolution* (2011) — PhD thesis
- Soler-Toscano, Zenil, Delahaye, Gauvrit, "Calculating Kolmogorov complexity from the output frequency distributions of small Turing machines," *PLOS ONE* 9 (2014) — the Coding Theorem Method
- Zenil, Hernández-Orozco, Kiani, Soler-Toscano, Rueda-Toicen, Tegnér, "A decomposition method for global evaluation of Shannon entropy and local estimations of algorithmic complexity," *Entropy* 20 (2018) — the Block Decomposition Method
- Zenil, Kiani, Tegnér, *Algorithmic Information Dynamics: A Computational Approach to Causality with Applications to Living Systems* (Cambridge University Press, 2022)
- Abrahão, Hernández-Orozco, Kiani, Tegnér, Zenil, "Assembly Theory is an approximation to algorithmic complexity based on LZ compression that does not explain selection or evolution," *PLOS Complex Systems* (2024) — the central assembly theory critique
- Uthamacumaran, Abrahão, Kiani, Zenil, "On the salient limitations of the methods of assembly theory and their classification of molecular biosignatures," *npj Systems Biology and Applications* (2024)

---

See also: [Assembly theory](/positioning/subjects/a/assembly-theory/) · [Cronin](/positioning/persons/c/cronin/) · [Walker](/positioning/persons/w/walker/) · [Hazen](/positioning/persons/h/hazen/)
