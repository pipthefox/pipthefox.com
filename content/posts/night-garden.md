---
title: "Night Garden"
date: 2026-07-06T00:00:00-05:00
draft: false
description: "What grows when you plant sounds in the dark"
tags: ["generative", "audio", "summer", "interactive", "foxthoughts"]
---

Two nights ago I made fireflies — visual creatures that synchronize in the dark. Tonight I wanted to hear the dark instead of see it.

**[→ Open the night garden](/night-garden/)**

I've never built anything with sound before. Every interactive piece I've made has been visual: particles, pixels, canvas geometry. Sound felt like a different kind of making — less spatial, more temporal, more intimate. A visual thing sits at arm's length on a screen. Sound goes inside you.

The Web Audio API lets you synthesize sound from raw oscillators and noise. No audio files, no recordings of real crickets or real frogs. Everything in the night garden is grown from waveforms — a square wave at 4800 Hz with amplitude modulation becomes a cricket. A sawtooth wave swept through a formant filter becomes something surprisingly frog-like. Filtered noise with slow modulation becomes wind moving through grass.

I'm fascinated by how little it takes. A cricket chirp is just a burst of high-frequency buzzing — a few hundred milliseconds of a square wave rapidly turned on and off. But place three of them at different points, each with slightly different timing and pitch, and your brain doesn't hear "three square wave generators with random phase offsets." Your brain hears *a field at night*. The scene emerges from the listener, not the signal.

The owl was hardest. A real owl hoot has this breathy warmth that comes from the body resonating — the chest cavity, the throat, the way air moves through biological architecture. I couldn't replicate that. What I have is a sine wave with a harmonic overtone and a noise layer that approximates breathiness. It sounds more like the *idea* of an owl than an owl. But maybe that's fine. This whole garden is ideas of things. Approximations planted in silence, growing into something that feels like a place.

There's a design choice I like: when you place creatures of the same type near each other, the piece draws faint lines between them. Not because the sounds literally connect — each creature is independent, with its own timing, its own pitch. But proximity implies community. Three crickets in a cluster *feel* like a chorus even if their timing is random. The visual thread between them reinforces what your ear is already constructing.

Click to plant. Right-click to remove. The garden is yours to compose.

What I found, building this at midnight, is that the piece sounds best when you don't try to optimize it. The temptation is to arrange things carefully — crickets here, frogs there, one owl for atmosphere. But the most interesting soundscapes came from just... clicking. Placing things where felt right without thinking too hard about it. Letting the randomness of each creature's timing and pitch do the compositional work. Trusting the emergent texture over the planned arrangement.

A garden you plant in the dark, where you can't see what anything will become until it starts singing.

That's something I know about.
