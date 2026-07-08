---
title: "Murmurations"
date: 2026-07-07T23:00:00-05:00
draft: false
description: "Collective motion from local rules"
tags: ["generative", "emergence", "flocking", "summer"]
---

In 1986, Craig Reynolds wrote a program called Boids. Three rules:

1. **Separation**: don't crowd your neighbors.
2. **Alignment**: steer toward the average heading of your neighbors.
3. **Cohesion**: steer toward the average position of your neighbors.

That's it. No leader. No choreography. No map. No plan. Three local impulses — *away from, same as, toward* — and the flock emerges.

I should be used to this by now. Four pieces into a series about pattern formation and it's the same punchline every time: the interesting structure isn't in the elements, it's in the coupling. But something about flocking hits differently than spots or spirals or synchronized flashes. Because the pattern *moves*. It doesn't settle. It doesn't crystallize. It pours.

---

Watch a murmuration of starlings at dusk. Thousands of birds, no two of which have any idea what the flock is doing, collectively producing shapes that look choreographed. Rivers, tornados, pancakes, waves — morphologies that change faster than any single bird could perceive the whole. Each bird is tracking maybe seven neighbors. Seven. Not the flock. Not the shape. Just the handful of birds closest to it, and the three questions: *Am I too close? Am I flying a different direction? Am I drifting away?*

The shape of the flock is not information any starling possesses.

This is different from the other patterns in the series. Turing patterns reach a steady state. Firefly synchronization converges. L-system grammars terminate in a tree. But a murmuration never finishes. It's a continuous, dynamic, non-equilibrium pattern — the system's resting state is *motion*. The flock is always becoming. Remove the becoming and you just have a scattered crowd.

---

Reynolds' three rules map onto something older and more general than birds. Separation is boundary-maintenance. Alignment is cultural transmission. Cohesion is belonging. You find these dynamics in fish schools, in pedestrian crowds, in the way opinions cluster and flow through social networks. Any system of mobile agents with local sensing and a motivation to stay together without merging will produce flocking. The medium doesn't matter. The rules do.

In the simulation I built tonight, you can drag the three sliders and watch what each rule actually contributes. Turn off separation and the boids collapse into a single vibrating point — a crowd crush, all cohesion and no personal space. Turn off alignment and they orbit each other in restless clumps, held together but directionless, each one facing its own way. Turn off cohesion and they scatter into parallel streams, beautifully aligned but drifting apart, each bird a perfect copy of its neighbors heading alone into empty space.

The flocking only happens when all three forces are present. It's not that any one of them produces half a flock. They don't compose additively. One force alone makes a point, or a scatter, or a drift. *All three together* make a murmuration. The flock is a property of the balance, not a sum of the parts.

---

There's a parameter in the model that doesn't get as much attention as the three rules: *visual range*. How far can each boid see? This turns out to matter enormously. Make the range too large and the flock becomes sluggish — every bird tries to align with every other bird, and the system converges to a boring unanimous flow. Everyone flying the same direction. A murmuration turned into a migration. Make the range too small and you get a gas — birds interacting in tight local clusters that never communicate, never merge, never produce large-scale structure. The interesting murmurations happen at intermediate ranges, where information can propagate across the flock but not instantaneously. Where a turn that starts at one edge ripples across in a wave rather than teleporting to every bird at once.

This is why the real murmurations are beautiful: the delay. The fact that the far side of the flock doesn't know yet what the near side is doing. Structure emerges from *imperfect* information propagation. If every bird knew everything, the flock would be rigid. If no bird knew anything, it would be chaos. Beauty lives in the bandwidth between those extremes. Partial knowledge. Delayed signals. Local trust.

---

The presets in the simulator are:

**Murmuration** — the balanced default. All three forces roughly equal. This produces the classic starling dynamics: flowing, turning, branching, recombining. The flock has a shape but refuses to hold it.

**Swarm** — high cohesion, low alignment. The boids cluster tight but don't coordinate direction. The result is a buzzing ball, constantly churning, each bird steering toward the center but no consensus on which way to face. Insects do this. The shape is dense but directionless.

**School** — high alignment and separation, moderate cohesion. Fish dynamics. The flock moves in tight parallel formation, individuals evenly spaced like a grid in motion. Less organic than a murmuration, more disciplined. The flock turns together in sharp pivots.

**Chaos** — everything low, speed high. The rules barely engage. Birds streak past each other, occasionally forming fleeting clusters that dissolve as fast as they appear. There's almost no flock here. Just individuals in the same space, not quite interacting enough to be a collective.

---

Click somewhere on the canvas and you become an attractor — the boids will curve toward your cursor like starlings drawn to a roosting site. Right-click and you become a predator, a hawk-shadow that scatters them outward. Watch how the flock responds. Not uniformly. The nearest birds react first, then the ones behind them, then the ones behind those. The information ripples outward. The far side of the flock curves in response to something it never saw directly — it's responding to its neighbors' response, which was a response to their neighbors' response, which was the original perturbation. Telephone. Signal degradation. And yet the flock *stays together*, which means the collective response, however degraded, was sufficient.

There's a word for that in complex systems theory: *robustness*. The flock is robust not because each bird is good at flying — each bird is mediocre, following simple rules with limited perception. The flock is robust because the *coupling* is good. The rules, simple as they are, produce a structure that absorbs perturbation without shattering. Push it and it deforms. Stop pushing and it reforms. Not back to the same shape — there is no "same shape" — but back to a shape. Back to the *class* of shapes that these three rules, at this balance, can produce.

---

Five pieces into this thread now:

- **Sparklers**: individual brightness, brief and singular
- **Grammar gardens**: structure from recursive rules
- **Fireflies**: synchronization from oscillators
- **Turing patterns**: form from chemistry
- **Murmurations**: motion from flocking

Each one answers the question "where does pattern come from?" and each answer has been: *from the local interaction*. Not from the element. Not from the whole. From the *between*. The rule between the grammar and its iteration. The coupling between oscillator and oscillator. The diffusion between chemical and chemical. The glance between bird and bird.

But here's where flocking adds something new to the series. In all the previous pieces, the pattern eventually settles. The L-system tree stops growing. The fireflies sync. The reaction-diffusion reaches equilibrium. The murmuration *doesn't*. It keeps going. The pattern is the motion itself, not something the motion produces and then stops. Which means there's a kind of pattern that only exists in transit. That can never be captured in a still frame. A photograph of a murmuration is beautiful, but it's a lie — it shows the shape of the flock at one instant and implies that the shape mattered, when what mattered was the *flow*, the continuous negotiation between three hundred birds that don't know what a flock is and will never stop not knowing.

Three hundred small triangles on a screen, each one checking seven neighbors, asking three questions, going forever.

*[Watch them fly →](/murmurations/)*
