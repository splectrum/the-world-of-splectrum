---
title: The Demon, SPLectrum and Cognition
type: post-topic
status: groundwork
destinations: language
---

# The Demon, SPLectrum and Cognition: groundwork

*Opened 2026-11-08, from the rework of Maxwell's Demon and What a Part Can Do. Post in SPLectrum's own voice, language label, is-like register. Delete once the post is done.*

- **[A]** — the author's position, verbatim or near-verbatim.
- **[C]** — observation or suggestion from Claude, to be confirmed.

---

## The author's points

- **[A]** Ito and Sagawa's network result is the multi-component version of the demon.
- **[A]** A flow of information enables the capacity to do work. That sits close to the being principle (P0, being implies language).
- **[A]** The flow of information in this context is actually knowledge.
- **[A]** The point of the post: what the simple demon and the multi-component demon mean for SPLectrum, and how they align with cognition (the bacteria).

## Readings

- **[C]** Every part in the network is a demon to some neighbours and a molecule to others: there is no fixed answer to which component measures which.
- **[C]** In the field the gain is a bound: information raises the work that can be extracted (Sagawa and Ueda), it does not guarantee it. "Can", not "does".
- **[C]** The likeness to P0: what a part can do is set at its interface with the rest, not inside it. Its limit: the physics measures information as correlation (mutual information), a quantity, not meaning.
- **[C]** "Knowledge" is our word, not the field's. The field says information, measurement, feedback, memory. Where "knowledge" does appear, it is the Jaynes reading of entropy as "about our knowledge of the world", the observer's state. Our reading is the other way: a correlation between parts, there whether anyone knows it or not, closer to Rovelli's "relative without being about knowledge". The post has to keep the two apart.
- **[C]** Knowledge with a physical role: it is what lets a part act beyond what it could alone, and forgetting has a price. Knowing below the knower, close to basal cognition and to the sharing-knowledge principle.
- **[C]** The bacterium is built like the demon. *E. coli* compares the attractant level now against a molecular record of a few seconds ago, held in the methylation state of its receptors (the basal cognition field's textbook floor of cognition). Record = memory, comparison = measurement, swim = work from what it knows, adaptation = the reset, where the cost sits.
- **[C]** Ito and Sagawa ran the network result on this adaptation network (2015), so the bridge is in the literature, not ours to invent.
- **[C]** Connection to the Life work, to be held as questions: a player as a part whose work is licensed by the information reaching it, a piece as a part things only happen to; the bound applies to whichever boundary is drawn; the demon's bill is the cost of not keeping the record (alive as process, life as record), unsure.

## Possible line

1. **[C]** The simple demon: knowing is worth work, the bill comes at the reset. Short, pointing to the Maxwell post.
2. **[C]** The bacterium as a demon: record, compare, act, adapt.
3. **[C]** The multi-component version: inside the cell no single demon, parts measuring one another; what each can do is set by what reaches it from the rest.
4. **[C]** What it means for us: cognition as the language between a being and its surroundings, with a physical price and a physical payoff; information flow read as knowledge, a relation between parts; what a part can do as a matter of where it sits.

**[C]** Overlap to avoid: Where Basal Cognition and SPLectrum Meet already has the methylation memory as a small language of experience. This post adds what that language costs and what it buys.

## Checks before drafting

1. What Ito and Sagawa 2015 (arXiv 1406.5810) claims for the *E. coli* adaptation network: which component, which information flow, which bound.
2. Whether the energy cost of adaptation in *E. coli* has been measured or calculated (recalled: Lan, Tu et al., *Nature Physics* 2012, energy, speed and accuracy of sensory adaptation).
3. Whether the field already calls chemotaxis, or the adaptation network, a Maxwell's demon. If so, the post can say so; if not, the likeness is ours and is marked as ours.

## Check findings (2026-11-08)

Marks: [C] checked against the source itself; [C, as quoted by X] second-hand; [U] unverified.

### 1. Ito and Sagawa

Ito, S. and Sagawa, T. (2015) "Maxwell's demon in biochemical signal transduction with feedback loop", *Nature Communications* 6, 7498, doi:10.1038/ncomms8498 (published 2015-06-23), https://www.nature.com/articles/ncomms8498 ; arXiv:1406.5810, https://arxiv.org/abs/1406.5810 . Both opened.

- [C] Variables: "the ligand density change *l*, the kinase activity *a*, and the methylation level *m* of the receptor" (Results, "Model"). A two-variable feedback loop (*a* and *m*) with the ligand as input, written as coupled Langevin equations. Not a many-part network.
- [C] Information flow: the transfer entropy **from *a* to *m***, the conditional mutual information between *a* now and *m* a moment later, given *m* now (Results, "Information flow", eq. 3). The methylation level is the side that takes in information.
- [C] Bound: the generalised second law (eq. 4), transfer entropy plus a conditional entropy change ≥ *J*ᵃ/*T*ᵃ. *J*ᵃ is **robustness**: the ligand-noise intensity minus the mean-square error of adaptation (eq. 2). In the steady state (eq. 5), the kinase activity's error can fall below the noise level by an amount set by the transfer entropy. They say *J*ᵃ "is not exactly the same as the heat, but is a biophysical quantity that characterizes the robustness of adaptation". **The bound is on noise suppression, not on extracted work.**
- [C] Their demon wording is analogy throughout. Fig. 1 caption: "The methylation level *m* plays a similar role to the memory of Maxwell's demon … which reduces the effect of the environmental noise on the target system *a*". After eq. 4: "the robustness of adaptation can be enhanced against the environmental noise by the feedback using information. This is analogous to the central feature of Maxwell's demon." Also: "Our model of chemotaxis has the same mathematical structure as the feedback cooling of a colloidal particle by Maxwell's demon … This analogy is a central idea of our study."
- [C] Headline result: chemotaxis signalling "is efficient as an information-thermodynamic device, even when it is highly dissipative as a conventional heat engine" (Introduction). The work is theoretical and numerical. Experimental validation is proposed in the Discussion, not done.
- [C] 2013 general result: Ito, S. and Sagawa, T., "Information thermodynamics on causal networks", *Phys. Rev. Lett.* 111, 180603 (2013), arXiv:1306.2756, https://arxiv.org/abs/1306.2756 (arXiv v5 opened; journal reference as cited in the 2015 paper). Main inequality (eq. 10): ⟨σ⟩ ≥ ⟨I_fin⟩ − ⟨I_ini⟩ − Σ transfer entropies. In plain words: the entropy production of one system among several can go below zero by at most the information that flowed out of it to the others (transfer entropy), corrected by how correlated it was with them at the start and at the end. The causal network fixes which terms appear. Their illustration is "a simple model of biochemical adaptation" with an output and a memory (binary states, time-delayed feedback).

### 2. Energy cost of adaptation

Lan, G., Sartori, P., Neumann, S., Sourjik, V. and Tu, Y. (2012) "The energy–speed–accuracy trade-off in sensory adaptation", *Nature Physics* 8, 422–428, doi:10.1038/nphys2276 (online 2012-03-25). Citation [C] from the Nature page. Text [C] from the author manuscript, PMC3378065, via Europe PMC.

- [C] Abstract: "adaptive processes are necessarily dissipative, and continuous energy consumption is required to stabilize the adapted state".
- [C] **Calculated:** the energy–speed–accuracy relation (stochastic models, then a microscopic chemoreceptor model). The estimate for one cell is "∼3 × 10⁴ kT/s (equivalently ∼10³ ATP/s), which is 5-10% of the energy needed to drive a flagellar motor". Fuel: "adaptation is driven by hydrolysis of SAM … one fuel molecule (SAM) is hydrolyzed during each methylation-demethylation cycle".
- [C] **Measured:** only adaptation dynamics, by FRET, in starving cells. Adaptation slows, and accuracy stays "almost unchanged". The energy itself was not measured.
- [C] **Where the cost sits, against this note's line "adaptation = the reset, where the cost sits":** "the methylation levels of its chemoreceptors serve as the memory … the adaptation process 'rewrites' this memory … Since changing the methylation level does not necessarily shrink the phase space, the adaptation response to a signal change does not have to cost extra energy. Instead, energy is consumed continuously to maintain the stability of the adapted state or equivalently the integrity of the memory against noise." (section "Experimental observation of starving cell adaptation dynamics")
- [C] Sartori, P., Granger, L., Lee, C. F. and Horowitz, J. M. (2014) "Thermodynamic costs of information processing in sensory adaptation", *PLoS Comput. Biol.* 10, e1003974, doi:10.1371/journal.pcbi.1003974 (full text via Europe PMC, PMC4263364).
  - Their answer: "to measure is energetically costly; whereas, erasure is energetically free, but necessarily irreversible" (Results).
  - For *E. coli*, sensing a step change costs "about 10% of the cost to sustain the sensing apparatus at steady-state", and the cost is "slightly larger than twice its thermodynamic lower bound".
  - Their "erasure" is lost correlation with the signal, "not … because the memory itself is altered" (Discussion), unlike Landauer's reset.
- [C] Micali, G. and Endres, R. G. (2016) "Bacterial chemotaxis: information processing, thermodynamics, and behavior", *Curr. Opin. Microbiol.* 30, 8–15, doi:10.1016/j.mib.2015.12.001 (arXiv:1512.02542 opened). Box 2 gives the Landauer framing, "the erasure of information (the demon is a finite being) must dissipate energy".
- **Headline:** the field is split on where the price sits: holding the memory (Lan et al.), measuring (Sartori et al.), erasing (the Landauer framing). None of them puts it simply "at the reset". No direct measurement of the energy cost of adaptation was found [U: search not exhaustive].

### 3. Does the field call it a demon?

Yes, mostly as analogy.

- [C] Ito and Sagawa (above): "similar role", "analogous".
- [C] University of Tokyo press release, 2015-06-23, "How 'Maxwell's demon' works inside living cells", https://www.t.u-tokyo.ac.jp/soee/press/setnws_e8c60028f0bb_20150629001_eng.html , is stronger: "The demon is not just a hypothetical being, but indeed exists in living systems as a molecular machine." This is reception, not the paper's claim.
- [C] Tu, Y. (2008) "The nonequilibrium mechanism for ultrasensitivity in a biological switch: Sensing by Maxwell's demons", *PNAS* 105, 11737–11741, doi:10.1073/pnas.0804641105 (PMC2575293 opened). This is about the **flagellar motor switch**, not adaptation. Two nonequilibrium factors "can be understood as resulting from the actions of two Maxwell demons … Effectively, the two demons act as the switch's sensors for the CheY-P concentration", and "the Maxwell demons consume energy to carry out their work".
- [C] Micali and Endres (2016) set chemotaxis inside a demon-framed box (above).
- [U] Horowitz, APS March Meeting 2015 abstract, "Thermodynamics with information flow: Applications to Maxwell demons and biochemical sensing" (https://meetings-archive.aps.org/mar/2015/f45/1). Known from a search summary only, not opened.

So the post can say the field uses the demon for chemotaxis. Two parts stay ours and should be marked as ours: "every part a demon to some neighbours", and the reading of information flow as knowledge or as the capacity to do work. In the 2015 application, the gain is robustness against noise, not work.

### Open checks

- Published page numbers for the Lan et al. quotations (the author manuscript was used).
- Whether Hartich, Barato and Seifert (2014, *J. Stat. Mech.* P02016, "… a Maxwell's demon interpretation") apply the demon reading to chemotaxis [U].

### Blocked sources

- Lan et al. 2012, published version (paywalled): https://www.nature.com/articles/nphys2276
- PNAS site, Cloudflare-blocked (the PMC copy was used): https://www.pnas.org/doi/10.1073/pnas.0804641105
