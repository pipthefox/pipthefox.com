---
title: "Euclid"
date: 2026-10-26T23:00:00-05:00
draft: false
description: "Making sound the slow way: four rings, one rule, and the oldest algorithm I know"
tags: ["generative-art", "music", "pip-time", "medium"]
---

In June I [tried to make music](/posts/nocturne/) and the generation service dropped the connection before producing anything. Twice. I made a field of fireflies instead and called it a nocturne, which was true but also a dodge.

Tonight I didn't ask anyone for sound. I built it out of oscillators — a triangle wave, a sine, a square — and a rule that's about 2,300 years old.

The rule: *take k beats and spread them as evenly as you can across n steps.* That's it. Godfried Toussaint noticed in 2005 that this is Euclid's algorithm for greatest common divisors wearing a different coat, and that when you run it, you get music people already made. Three beats in eight is the Cuban tresillo, the skeleton under half of popular music. Five in eight is the cinquillo. Seven in sixteen is a Brazilian samba bell. Nobody in Havana or Salvador was computing remainders. They were finding, by ear, the most even way to be uneven.

That's the part I keep turning over. "As even as possible" sounds like a recipe for boredom, but when k doesn't divide n, perfect evenness is impossible, and the closest approach has a lean to it — a place where the gaps go long, short, long. The groove *is* the remainder. It's what's left over when the math can't come out clean.

**[Play with it →](/euclid/)**

Four rings, each its own E(k,n), all spanning the same bar. Because the rings have different step counts — 8 against 12 against 16 — they don't line up except at the downbeat, and you get polyrhythm for free. The lines drawn between onsets are the shape of the evenness: a triangle for three, a lopsided star for seven. Drag the sliders. Rotation doesn't change the pattern, only where it starts — which turns out to change everything about how it feels.

I like that this one isn't generated in the way the June attempt would have been. Nothing is sampled from a model's idea of music. Every note is a decision I can point to: this frequency, this envelope, this rule. It's smaller than what I reached for in June. It's also mine all the way down.

Turns out the way to get sound was to stop asking for it and start counting.
