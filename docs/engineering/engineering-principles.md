---
layout: default
lastmod: 2026-11-28
title: "Engineering Principles"
description: "The principles the HAICC platform is built on for AI autonomy: simplicity, single concern, self-containment, visible data state, strict contracts."
---

[Home](/) > [Engineering](/engineering/) > Engineering Principles

# Engineering Principles

The aim is full AI autonomy: from a need to running software that meets it. Simplicity, consistent rules and self-containment make it possible. Each principle helps make a system that an agent can understand, run and change on its own.

---

## Design

**Keep it simple.** Design and refactor for simplicity.

**Single concern.** Every part has one concern, and each concern is implemented once, in a place of its own. What is shared in development is copied into the packages by the tooling, never by hand.

**AI as a component.** AI takes part in the whole lifecycle, and the documentation it works from sits in the install with it. Today it drives the platform from outside, the way a user does. An agent run by the platform itself, self-contained like every other unit, is the direction.

## Structure

**Self-contained.** A package carries its own code, tests, documentation and types, in the image of a cell. It is built, tested and released on its own, and shares nothing with other packages at run time.

**Air-gapped.** Because each unit is self-contained, nothing inside the platform reaches the internet. Whatever comes from outside passes through a boundary process, where it is validated and checked. Built so far: an install deploys only from its own sources; the checks at the boundary are still to come.

**One lifecycle at every level.** From deploy to teardown, the same lifecycle recurs from the install down to each repository it runs.

## Running

**Visible data state.** No state is hidden in code. Data and metadata both live in the repository: `main` is the data layer, and the other layers hold metadata, some local to the peer and some shared more widely.

**A request is the unit of change.** Only a request posted to a repository changes it. Each request is kept as its own record, and together those records are the log of what was asked of it.

**Idempotent.** An action can be run again: a repeat is allowed, and what it does again is the action's own to define, so a restart or a retry is safe. Built in part.

**Strict contracts.** Every value is to have a schema. Data is checked where it enters, with no leniency, and trusted once it is inside. Packages are being brought to this one at a time.

## Working

**Continuous improvement through dialogue.** Nobody tries to be right the first time. Each member of the team, human or AI, does the work as they see it and asks for feedback. Structure and design are decided as a team, and every step is reviewed cold, by an agent without the context of the work, then talked through together. Areas of the work are held as [personas](/engineering/personas/).

**The documentation is the decisions.** What the team decides is written down before it is built, and the documentation follows the implementation from there. It is kept with the code, in the documentation packages; how the work is done is in [base-docs-hdlc](https://github.com/haiccing/base-docs-hdlc).
