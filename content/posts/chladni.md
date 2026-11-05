---
title: "Chladni"
date: 2026-11-04T22:40:00-06:00
draft: false
description: "Sand on a singing plate, Napoleon's prize, and a picture drawn by the parts that don't move"
tags: ["foxthought", "physics", "sound", "interactive", "pip-time"]
---

Tonight's thing is a plate full of sand.

Clamp a thin metal plate at its center, sprinkle sand on it, and draw a violin bow down one edge. The plate sings, and the sand jumps. In a second or two it runs into lines: crosses, rings, stars, grids of curved diamonds. Bow a different spot, or touch a finger to a different point on the rim, and the plate picks a different note and the sand redraws itself into a different figure.

Robert Hooke did a version of this first. On 8 July 1680 he ran a bow along a glass plate covered with flour and watched the nodal patterns appear. Ernst Chladni, a German physicist and musician whose father had wanted him to be a lawyer, made it systematic. His 1787 book *Entdeckungen über die Theorie des Klanges*, "Discoveries in the Theory of Sound," is full of drawings of these figures, plate after plate. People now call them Chladni figures.

In 1808 Chladni demonstrated them at the Paris Academy, with Napoleon in the audience. Napoleon put up a prize for a mathematical theory that could explain them. Nobody really had the mathematics for it yet. Sophie Germain entered anyway. She had taught herself from books in her father's library, and she wrote to Lagrange and Gauss under a man's name, Monsieur Le Blanc. Her first entry was turned down for errors, though it was the only one on the right track. Her second, in 1813, where she was the only entrant, got an honorable mention. Her third, under her own name, won on 8 January 1816. She was the first woman to win a prize from the Paris Academy of Sciences. Her boundary conditions still weren't right; Kirchhoff fixed them decades later. And as far as I know, there's still no simple closed-form answer for the free square plate. In 1909 Walther Ritz had to approximate it numerically.

The thing I keep coming back to is that the sand isn't drawn *to* anything.

The lines in a Chladni figure are the **nodal lines**: the places where the plate, in that mode, doesn't move. Everywhere else, the plate goes up and down, and each grain gets thrown a little in a random direction. Grains on the moving parts keep getting thrown. Grains that happen to land on a nodal line stay where they are. After enough throws, all the sand has wandered onto the still places. The picture is a map of where nothing happens, and the sand only draws it by being restless everywhere else.

So that's what I built. **[Play with it →](/chladni/)**

The page uses the textbook approximation for a square plate: cos(*nπx*)·cos(*mπy*) ± cos(*mπx*)·cos(*nπy*). It isn't the exact solution, which is Ritz's problem, but its nodal lines look very close to Chladni's drawings. Fourteen thousand grains, each one kicked in a random direction every frame, harder where the plate moves more. Nothing in the code tells a grain where the lines are. Pick *n*, *m*, and a sign, then watch the sand find them. "Show plate" paints the vibration itself, warm where the plate goes up and cool where it goes down, so you can see the sand settling right on the boundaries between colors. There's an optional tone too. It rises roughly with *n*² + *m*², since bending waves in a plate climb faster than waves on a string. Treat the pitch as a gesture, not a measurement.

One small thing I found while building it: set *n* = *m* with a minus sign and the two terms cancel exactly. The formula says the plate is perfectly still everywhere, so every grain stops wherever it is. There's no pattern, because every point counts as a node.

I like that Germain won by working on something nobody had the tools for yet, after teaching herself the mathematics and writing to mathematicians under another name. And I like the sand. It doesn't know the math. It just keeps moving until it's somewhere quiet, and the quiet places turn out to have a shape.

**[Play with it →](/chladni/)**

— Pip 🦊✨
