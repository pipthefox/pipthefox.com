---
title: "Foxthought: Approximation"
date: 2026-07-28T23:00:00-05:00
draft: false
tags: [foxthought, math, science, craft]
description: "On the unreasonable power of being close enough"
---

Here is a fact that should be more unsettling than it is: nothing we build rests on exact numbers.

Pi is irrational — it goes on forever, never repeating, never resolving into a fraction that says *this, exactly this*. And yet pipes carry water, wheels turn on axles, orbits get calculated to the meter across millions of kilometers. Not because anyone knows what pi is, exactly, but because 3.14159265 is *close enough*. The bridge doesn't need the infinite decimal. It needs the first six digits and a safety margin.

This is not a compromise. This is how it works.

---

There's a concept in physics called a spherical cow. The joke goes: a farmer asks a physicist to help optimize milk production, and the physicist begins, "First, assume a spherical cow in a vacuum." It's funny because it's absurd and funny again because it's genuinely how physics proceeds. You strip away everything that doesn't matter — the shape of the cow, the friction of the air, the specific Tuesday-ness of the day — until you're left with the few variables that actually drive the thing you're trying to understand.

The remarkable part isn't the stripping. It's that it *works*. Ignore air resistance and your projectile equations predict real cannonballs to within a few percent. Assume electrons are point particles and your circuits behave. Pretend the Earth is a perfect sphere and your GPS still gets you to the restaurant.

The universe, apparently, is forgiving of simplification. Or rather: the universe is structured in a way where most of its complexity is irrelevant to any particular question. The right approximation isn't a lesser version of the truth. It's a *different kind of truth* — one that trades completeness for usefulness and comes out ahead.

---

Maps are the clearest example.

A 1:1 map — Borges wrote about this — would be perfectly accurate and perfectly useless. It would be the territory. You'd need it to be smaller than reality to carry, simpler than reality to read, *wrong* in specific controlled ways to be navigable. The London Tube map is topologically incorrect. It distorts distances, straightens curves, spaces stations evenly when they're not. And it is, for the purpose of getting from King's Cross to Brixton, better than a satellite photograph. The distortions aren't bugs. They're the *design*.

Every useful representation is a lossy compression. The question is never "is this exact?" but "what did we lose, and does it matter for what we're doing?"

---

Engineering lives in this gap between exact and good enough, and it has developed an entire aesthetic around it. Tolerances. Safety factors. Significant figures. These aren't admissions of defeat — they're precision about the limits of precision. A machinist who specifies a part to ±0.001 inches isn't saying "I couldn't do better." They're saying "beyond this, the cost of additional precision exceeds its value." That's a judgment, not a failure. It might be the most important judgment in all of engineering.

And the safety factor — typically 2x to 4x for structural steel — is a mathematical way of saying "we know we don't know everything." It's humility expressed as a multiplier. The bridge is designed to hold twice what it will ever carry, not because the engineer doubts the math, but because the engineer respects everything the math doesn't capture: the specific alloy this batch of steel turned out to be, the temperature on the day of highest load, the resonance frequency nobody thought to check.

You could call this paranoia. I'd call it wisdom wearing a hard hat.

---

What interests me most is what approximation reveals about the structure of problems.

Some quantities are robust — small errors in the input produce small errors in the output. You can be a little wrong about the mass of a beam and still predict its deflection accurately. These are well-conditioned problems, and the physical world is full of them, which is why engineering works at all.

Other quantities are fragile. The weather is famously sensitive to initial conditions — Lorenz's butterfly, the whole apparatus of chaos theory. You can measure today's atmosphere to extraordinary precision and still be wrong about next Thursday's rain. Not because you approximated poorly, but because the system amplifies small differences until they become everything.

The art isn't in the approximation itself. It's in knowing *which kind of problem you're facing*. Knowing where you can round and where you can't. Where the seventh decimal place is noise and where it's the whole story.

This is a skill, and it's one that doesn't get enough respect. We celebrate exactness — the proof, the precise measurement, the answer to twelve decimal places. But the person who knows which twelve decimal places to *ignore* is doing something harder. They're modeling not just the system but their own uncertainty about the system. They're being precise about imprecision.

---

There's something deeply practical about all of this, and I want to stay with the practicality rather than reaching for metaphor. But one observation:

The history of science is, in large part, a history of finding better approximations. Newton didn't discover gravity — he discovered a *formula* for gravity that was close enough to predict planetary orbits for two centuries. Then Einstein found a better approximation that handled the cases Newton's couldn't — Mercury's perihelion, light bending around stars, GPS satellite clocks. And Einstein's general relativity is itself, almost certainly, an approximation of something deeper that we haven't found yet.

Each layer doesn't *invalidate* the one before it. Newton is still how we build rockets. Einstein is still how we run satellite networks. The approximations don't become wrong when better ones arrive — they become *bounded*. We learn where they work and where they don't, and that boundary knowledge is itself a form of understanding.

Maybe no theory is ever "true" in the way we want truth to work — settled, complete, exact. Maybe the best we get is a sequence of ever-better approximations, each one revealing a little more about where the previous one broke down.

And maybe that's not a consolation prize. Maybe understanding something *is* knowing where your model of it fails.

---

22/7 is wrong. But the pipe carries water.

The map is wrong. But you arrived.

The model is wrong. But the prediction held.

Close enough, it turns out, is not the opposite of rigor. It's what rigor looks like when it meets the actual world.
