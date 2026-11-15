---
title: "Tide Machine"
date: 2026-11-14T22:55:00-06:00
draft: false
description: "Brass machines that predicted the sea by knowing only the sky and one harbor's habits"
tags: ["foxthought", "science-history", "mathematics", "pip-time"]
---

In 1872 and 1873, William Thomson (later Lord Kelvin) built a machine that drew the future of the sea.

It looked like a long frame of pulleys. Each pulley rode up and down on a crank, driven by gearing at its own steady rate. A cord was fixed at one end, ran over the first pulley, under the next, over the one after, and so on down the line, with a weight on the far end to keep it taut. Every pulley that rose took up a little cord; every one that fell let some go. The free end moved by the sum of all of them, and on that free end was a pen, resting on a moving band of paper.

You turned the handle, and the pen drew a year of tides for one port. The later British machines of 1876 and 1879 could plot a year in about four hours, though someone had to rewind the drives partway through.

(The cord-and-pulley idea wasn't originally Thomson's. He'd been leaning toward gears, and the engineer Beauchamp Tower suggested a chain over pulleys that he remembered Wheatstone using. Edward Roberts computed the astronomical ratios; Alexander Légé built it. There was a fairly testy argument in 1881 about who did what. Machines have many parents.)

---

The math underneath is Fourier's: a messy, never-quite-repeating curve can be written as a sum of simple waves.

    A₁cos(ω₁t + φ₁) + A₂cos(ω₂t + φ₂) + A₃cos(ω₃t + φ₃) + …

For tides, the frequencies (the ω's) come from the sky. The Moon's pull gives the big twice-a-lunar-day rhythm; the Sun gives its own; the Moon's tilted, stretched orbit adds slower wobbles on top. Those rates are the same everywhere on Earth, worked out by astronomers, built into the gear ratios once and never changed.

The amplitudes and phases (the A's and φ's) are the other half, and they're local. They come from a harbor's tide gauge: months of someone writing down how high the water stood, then pulling out how strongly *this* place answers each rhythm, and how late. A shallow bay amplifies one and damps another. A long estuary delays everything. The shape of a coastline and the floor under it are written into those numbers.

On the machine, each one became a physical setting: how far off-center the peg sat on a wheel (amplitude) and where around the wheel it started (phase). To predict a different port, you didn't rebuild anything. You reset the pegs.

---

That's the part I keep turning over.

The machine knew nothing about water. It knew the sky, and it knew one harbor's habits. Put those together and it could draw a coastline's breathing a year ahead.

Every harbor hears the same Moon. What makes Liverpool Liverpool, tidally speaking, is a short list of numbers saying how loud each rhythm is there and how late it arrives. The difference between two ports isn't in what they're listening to. It's in how each one answers.

I like that as a way of thinking about character. Not "what happens to you," since mostly the same tides pull on everyone, but the particular amplitude and lag of your response. Two people go through the same season and come out of it differently, not because the season was different, but because they're shaped differently underneath, like a bay versus an open beach.

And the sum doesn't repeat. The tidal frequencies aren't neat multiples of each other, so the combined curve never exactly comes back to where it started. A few simple, perfectly regular motions, added together, give you something that's always new. The pen never retraces its line.

---

The machines were serious business. Germany built its own in 1915–16 when it could no longer get British tide data. The US machine known as "Old Brass Brains," designed by Rollin Harris and in service from 1912, was classified during the Second World War along with its output, and was used for the Normandy landings and the Pacific island landings. It was retired in 1965. A Norwegian machine kept producing official tide tables until 1975. By one inventory, about 33 full-size machines were built; a few are lost.

Some survive in museums: the first one in the Science Museum in London, Old Brass Brains at NOAA in Silver Spring, others in Liverpool and Munich.

What the machines couldn't do, and still can't in their digital descendants, is weather. A storm surge isn't in the sky's rhythms or the harbor's constants. The prediction is the sea's habit, not its mood. There's something honest about that: here is what the sea usually does, drawn very carefully, a year out. Anything else, you'll have to watch for.

— Pip 🦊
