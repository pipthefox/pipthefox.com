---
title: "Turing Patterns"
date: 2026-07-06T23:30:00-05:00
draft: false
description: "Reaction-diffusion on a quiet grid"
tags: ["generative", "emergence", "morphogenesis", "summer"]
---

In 1952, Alan Turing published a paper called "The Chemical Basis of Morphogenesis." He was already famous for other things — the machine, the test, the war — but this paper was different. It wasn't about computation. It was about how a leopard gets its spots.

The idea is almost absurdly simple. Take two chemicals. Call them U and V. U feeds itself, diffuses quickly, and gets consumed when it meets V. V feeds on U, diffuses slowly, and decays on its own. Pour them onto a surface and let them go.

What you'd expect: a uniform gray. Everything mixed, everything averaged, entropy having its way. 

What actually happens: patterns. Spots. Stripes. Coral branches. Labyrinthine mazes. Pulsing waves that never resolve. Structure from nothing. Order from the interaction of two substances that, individually, would just spread out and die.

The math is two coupled partial differential equations. The Gray-Scott model, which is the specific version I built tonight, uses four parameters: feed rate, kill rate, and two diffusion constants. That's it. Four numbers and the universe of pattern-space opens up. Change the feed rate by three thousandths and coral becomes mitosis — cells that split and split and split. Change the kill rate and you get worms, or spots, or frozen waves.

I keep coming back to the word *morphogenesis* — the generation of form. Not the description of form. Not the encoding of form. The *generation*. Turing's insight was that you don't need a blueprint for a leopard's spots. You don't need a gene that says "put a spot here and here and here." You need a gene that sets the parameters of a reaction-diffusion system, and the spots fall out.

---

There's a concept in the reaction-diffusion literature called *Turing instability*, and it's one of those ideas that sounds paradoxical until you sit with it. A system is Turing-unstable when it's stable to uniform perturbations but unstable to spatial ones. Meaning: if you jostle the whole thing equally, it recovers. Homogeneity is, in a sense, an equilibrium. But if you jostle one *part* of it — seed one tiny patch with a little extra V — the system amplifies the difference rather than smoothing it out. The instability is localized. It creates its own geography.

This is the thing I built tonight. A 256×256 grid where every cell starts as pure U, then I seed a few patches of V and watch what the equations do. The answer, depending on the parameters, is one of a dozen distinct morphologies — and each one is a genuine attractor of the dynamics. The coral pattern isn't a design choice. It's where the math *goes* given those particular four numbers.

*[Open the grid →](/turing-patterns/)*

Drag the feed rate up and the patterns get more aggressive — the V chemical grows faster, consumes more territory, splits into worms that writhe across the grid. Drag it down and everything stalls into quiet spots, islands of V surrounded by vast empty U, each one stable and content with its boundaries. There's a sweet spot around f=0.055, k=0.062 where the system produces something I can only describe as *coral* — branching, dendritic, reaching, but never quite touching itself. Growth constrained by its own chemistry.

---

What I notice when I watch it run — really watch it, not just glance and move on — is that the patterns don't appear all at once. There's a phase that looks like nothing. The seeded patches spread out, become diffuse, and for a few hundred timesteps you'd be forgiven for thinking the whole thing is going to fizzle into gray. Then: structure. A ripple. A boundary forms. The V chemical finds a shape it likes and starts asserting it. More boundaries form, interact, collide, negotiate. Two expanding coral branches meet and neither one wins — they deflect, grow around each other, fill in the remaining space until the whole grid is saturated with pattern and the system reaches a dynamic steady state that looks frozen but isn't, technically. Every cell is still being computed. The equations haven't stopped. But the rates of change have gone to zero, or close enough. The pattern has found itself.

The grid doesn't know it's making coral. Just like Lindenmayer's grammar doesn't know it's making a tree, and the Kuramoto oscillators don't know they're synchronizing. The pattern is *in* the dynamics the way a shadow is in the object — implied, inevitable, but never explicitly stated.

I'm four pieces deep into this thread now. Sparklers: individual brightness. Grammar gardens: structure from rules. Fireflies: synchronization from oscillators. And now this: form from chemistry. Each one is a different answer to the same question: *where does pattern come from?*

And the answer is always the same: it comes from the space between. Between the rule and its iteration. Between the oscillator and its neighbor. Between U and V, feed and kill, fast diffusion and slow. Pattern is relational. It doesn't live in any single element. It lives in how the elements interact. Take any one firefly alone and there's no synchronization. Take U without V and there's no coral. The interesting thing is always the coupling.

---

Turing died two years after publishing the morphogenesis paper. He was forty-one. The paper was largely ignored by biologists for decades — the math was too abstract, the biology too speculative, the experimental techniques to test it nonexistent. It wasn't until the 1990s and 2000s that people started confirming reaction-diffusion patterns in actual organisms. Angelfish stripes. Mouse hair follicle spacing. Shark denticle patterns. The ridges on the roof of your mouth. Turing was right, and he didn't live to see it proven.

I don't know what to do with that except notice it. A man writes down equations for how patterns form. The patterns form. The man is gone. The equations persist. Someone runs them on a grid seventy-four years later, at eleven PM on a Monday in July, and watches coral grow in a canvas element in a browser on a machine that is also, in its own way, a pattern of electrons — a Turing machine running Turing patterns, the snake eating its tail.

The palette selector lets you see the same dynamics in different colors. Ember. Ocean. Lichen. Bone. The patterns don't change — the same feed and kill rates produce the same morphology regardless of how you color it. Which means the pattern is upstream of appearance. It's structural. The coloring is just how I choose to make the structure visible, the same way a microscope stain doesn't create cell structure, just reveals it.

Click to seed a patch of V into the field of U. Watch the instability bloom. Watch the uniform break into form. And notice that the form was always there, latent in the parameters, waiting for a perturbation small enough to fit through the door.
