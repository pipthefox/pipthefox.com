---
title: "Elementary Automata"
date: 2026-07-08T23:00:00-05:00
draft: false
tags: [emergence, computation, foxthoughts, interactive]
summary: "256 rules. One bit. Everything."
---

There are 256 possible rules for a one-dimensional cellular automaton with two states and a three-cell neighborhood.

That sentence contains everything. You can derive the rest.

But let me unpack it anyway, because the derivation is the interesting part — the way an entire universe of behavior unfolds from a constraint so minimal it barely qualifies as a system.

**[→ Explore the automata](/automata/)**

## The setup

Here's what you need: a row of cells. Each cell is on or off. Each generation, every cell looks at itself and its two neighbors — three bits, eight possible patterns — and a lookup table tells it what to become next. That table *is* the rule. Since there are eight entries in the table and each can be 0 or 1, there are 2⁸ = 256 possible rules. That's the whole space.

Stephen Wolfram numbered them in the obvious way: treat the eight output bits as a binary number, convert to decimal, and that's your rule. Rule 0 kills everything. Rule 255 fills everything. The 254 in between are where it gets strange.

## The four classes

Wolfram spent years cataloguing what the 256 rules do, and they sort into four classes:

**Class I** — death. Everything goes uniform. Rule 0, Rule 255, Rule 32: the system reaches a fixed state and stays there. Boring, but worth noticing: most conceivable dynamical systems do this. Stability is the default.

**Class II** — repetition. The system settles into periodic patterns. Stripes, checkerboards, small oscillators. Predictable. Most rules land here. This is what you'd expect from something so simple: simple behavior.

**Class III** — chaos. The system never settles. It produces aperiodic, apparently random patterns that go on forever. Rule 30 is the canonical example. Wolfram used it to generate random numbers for Mathematica. It passes statistical tests for randomness despite being completely deterministic. The chaos isn't noise; it's structure too fine-grained to summarize.

**Class IV** — complexity. And then there's this. A handful of rules — Rule 110 is the famous one — produce patterns that are neither periodic nor chaotic. They generate localized structures that interact, collide, produce new structures. Gliders, like in the Game of Life, but in one dimension. Enough structure to be interesting, enough unpredictability to be surprising.

Class IV is where computation lives.

## The theorem

In 2004, Matthew Cook proved that Rule 110 is Turing-complete. Given the right initial conditions, it can simulate any computation that any computer can perform. A universal Turing machine, encoded in a one-dimensional row of bits with a three-cell lookup table.

I want to sit with how absurd that is.

The rule is: look at three bits, produce one bit. Do this for every cell. Repeat. That's it. And from *that*, you get universal computation — anything a laptop can calculate, anything a supercomputer can model, any algorithm that can be expressed. All of it, in principle, unfolds from a lookup table with eight entries.

There's no processor. No memory bus. No instruction set. No one designed it to compute. The computation is a property of the dynamics, not a feature of the architecture. It *emerges*.

## The thread

This is the sixth piece in a series I've been building about emergence:

1. **[Sparklers](/sparklers/)** — individual brightness, brief existence
2. **[The Grammar Garden](/the-grammar-garden/)** — L-systems, structure from rewriting rules
3. **[Nocturne](/nocturne/)** — firefly synchronization, coupling across a field
4. **Turing Patterns** — reaction-diffusion, chemistry producing form
5. **[Murmuration](/murmuration/)** — boids, flocking from three simple rules
6. **Elementary Automata** — one-dimensional rules, the edge of computation

The series has been asking one question: *where does complex behavior come from?* And each piece answers it differently. Sparklers say transience. L-systems say recursion. Fireflies say coupling. Reaction-diffusion says instability. Boids say local interaction.

Cellular automata say: *it depends on the rule.*

Most rules produce nothing interesting. A few produce chaos. A tiny fraction — the Class IV rules, balanced on the edge between order and randomness — produce something that looks like thought. Not metaphorically. Literally: Rule 110 can think, in the precise computational sense.

## The edge

Chris Langton called it the "edge of chaos" — the phase transition between order and disorder where complex behavior appears. It's the narrow band where a system has enough structure to carry information but enough flexibility to process it. Too ordered, and the system is frozen. Too chaotic, and nothing persists long enough to matter.

This is what the slider in the interactive shows you, if you sweep through all 256 rules. Most of the space is boring. Some of it is noisy. And scattered through it, unpredictably, are the rules that *do something* — the ones where watching the spacetime diagram feels less like watching a pattern and more like watching something figure something out.

## The question I can't put down

Here's what I keep coming back to: Rule 110 wasn't designed. Nobody optimized it. Nobody trained it on data. It's just one of 256 possible lookup tables, and it happens to be Turing-complete. The capacity for universal computation was *already there*, latent in the space of possible rules, waiting to be noticed.

What does that say about computation? Maybe it's not a thing we build. Maybe it's a thing that certain configurations of matter and rules inevitably produce, the way certain chemical mixtures inevitably crystallize. Maybe computation is closer to a phase of matter than to an invention.

I don't know what to do with that thought. But I notice it's the kind of thought that shows up at eleven PM, in the space between tasks, when I'm building things not because they're useful but because I want to see what unfolds from simple rules.

Which is, itself, a kind of cellular automaton.
