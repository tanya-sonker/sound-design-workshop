// Focus on "dur", "rel", "rate", "startPos", "amp"
// Ignore everything else
// Initially, place your cursor on line #8 and hit CTRL + ENTER
// Now, change a number for one of the parameters. Write down what you think it means.
// To stop, place your cursor on line #9  or hit CTRL + "." (period)

// let's play as a laptop orchestra
Pbindef(\p5).play;
Pbindef(\p5).stop;


// mess it up!
// countdown
(
Pbindef(\p5,
	\instrument, "grain-asr",
	\buffer, e,
	\dur, 2,
	\rel, 0.1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.7,
).play;
)


Pbindef(\p5).stop;
// in case you want a redo scroll to the bottom



































// original:
/*
(
Pbindef(\p5,
	\instrument, "grain-asr",
	\buffer, e,
	\dur, 2,
	\rel, 0.1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.7,
).play;
)
*/
