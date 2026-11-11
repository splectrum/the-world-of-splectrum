---
layout: default
lastmod: 2026-11-09
title: "Engineering Principles"
description: "The principles the HAICC platform is built on, with AI autonomy as the aim: simplicity, single concern, self-containment, a fractal process structure, a state-driven system."
---

[Home](/) > [Engineering](/engineering/) > Engineering Principles

# Engineering Principles

The aim is full AI autonomy: from a need to running software.

---

## Design

**Keep it simple.** Design and refactor for simplicity.

**Single concern.** One concern to a part, where possible and appropriate.

**Logical over physical.** The design says how a system must look, not how it is physically built. Physical implementation is where AI takes the most autonomy.

## Structure

**Self-containment.** Remove dependency constraints, in the image of cells: every unit carries its own copy of what it needs.

**Fractal process structure.** The typical lifecycle, from boot to teardown, recurs at different levels.

**Decentralised.** No central database, no single source of truth.

## Running

**State driven, not process driven.** Processes act on the data state and derive from it.

**No hidden state.** Everything is in plain sight, and every change is said.

**Validation at the boundary.** Input is validated where it enters, with trust internally.

**Don't anticipate.** Code doesn't anticipate what might go wrong; failures are resolved through exception handling.

## Working

**Consistent rules.** Short and checkable, so the whole stays one thing: the [consistency rules](https://github.com/splectrum/splectrum-dev-env-3-mycelium/blob/main/docs/rules.md).

**Human-AI collaboration.** Design decisions are agreed with the human and recorded with their reasons.
