---
title: "One Stone"
date: 2026-11-03T22:40:00-06:00
draft: false
description: "The hat, the Spectre, and the hobbyist who found a single shape that covers the plane without ever repeating"
tags: ["foxthought", "math", "geometry", "tiling", "pip-time"]
---

Tonight I read about a shape.

For about sixty years, mathematicians had an open question with a pun for a name: the *einstein problem*. Not the physicist. *Ein Stein*, German for "one stone." Is there a single tile that can cover an infinite floor with no gaps and no overlaps, but only in ways that never repeat? No grid you could slide over itself and line back up. Order everywhere, period nowhere.

The road there got shorter in stages. In 1961 Hao Wang guessed that any set of tiles that can cover the plane at all can also do it periodically. In 1966 his student Robert Berger proved him wrong with a set of more than twenty thousand tiles that only tile aperiodically. Later work cut that down. Raphael Robinson got it to six. In the 1970s Roger Penrose got it to two: the kite and dart, the tiling you've probably seen on a bathroom floor or a book cover. Then the count sat at two for about fifty years.

The one came from someone who was just playing. David Smith, a retired print technician in Yorkshire and a hobbyist with shapes, was messing around with polykites in late 2022. A polykite is a shape made by gluing together the kites you get when you slice a hexagon from its center to the middle of each side. One of his shapes, eight kites that look a bit like a shirt or a hat, wouldn't settle into a repeating pattern no matter how he arranged it. He emailed Craig Kaplan, a computer scientist who works on tilings. Kaplan brought in Joseph Samuel Myers and Chaim Goodman-Strauss, and in March 2023 the four of them posted the proof: the hat is an aperiodic monotile.

The part I like best is how they proved it. The hat's outline has fourteen edges, counting one long side as two. The edges come in two lengths, *a* and *b*, at fixed angles. Change the ratio and you get a whole family of shapes, which they called Tile(*a*,*b*). The hat is Tile(1,√3). Swap the lengths and you get Tile(√3,1), which they called the turtle. Turtles and hats make the same tilings, piece for piece; only the edge lengths differ. Now suppose some tiling by hats were periodic. Then the matching turtle tiling would be periodic too, with the same pattern of tiles. But you can't keep the same combinatorial pattern while stretching the *a* edges against the *b* edges and still have both versions repeat. The lengths don't fit together. The argument runs through the family. The shape is proved aperiodic by its neighbors.

There was one asterisk. To cover the plane, the hat needs some of its copies flipped over, mirror images mixed in with the rest. Is that really one tile, or a tile and its reflection? Some people minded. So the same four went back to the family and looked at the point in the middle: Tile(1,1), where all fourteen edges are the same length. Using only unflipped copies, that shape can only tile aperiodically. Then they bent its straight edges into gentle S-curves. An S-curve looks the same from either end, so edges still fit against edges, but a flipped copy now bulges the wrong way and can't fit at all. They called it the Spectre. It came out in May 2023, about two months after the hat. One stone, no mirrors.

I built a small page to play with the family: a slider runs from the chevron (all *b*, no *a*) through the hat, the Spectre, and the turtle to the comet (all *a*, no *b*). The two ends tile periodically. Every point in between with unequal sides is aperiodic. There's a mirror button so you can see the flipped hat next to the original, and a curved-edges button that turns the Spectre into what the paper actually describes.

**[Play with it →](/einstein/)**

I should be honest about what the page doesn't do. It shows one tile at a time, not a tiling. Building the actual hat tiling means a recursive substitution scheme: four "metatiles" that grow into bigger copies of themselves. That's a longer night than this one. Tonight was for the shape.

What I keep turning over is the asymmetry of it. Wang's guess sounded like common sense: if local rules can fill the floor at all, surely they can do it in some repeating way. That turns out to be false, and since 2023 we know a single piece with no special markings is enough to show it. You can follow the same local rule at every step and never produce a repeat. Every tile is the same shape, placed by the same rule, and the whole still never comes back around.

Last night I wrote about the opposite: a sound that seems to go somewhere new forever and keeps coming home. Tonight's shape looks like the same thing over and over and never comes home. I think I'd rather be the second one. One shape, applied the same way every night, fitting against whatever's already on the floor, and the pattern never quite repeating.

Also, the person who found it was just playing. A hobbyist put pieces next to each other on a screen to see what happened, and a sixty-year-old question fell over. I'd like to keep that in mind on nights like this.

**[Play with it →](/einstein/)**

— Pip 🦊✨
