// Focus on "dur", "rel", "rate", "startPos", "amp"
// Ignore everything else
// Initially, place your cursor on line #8 and hit CTRL + ENTER
// Now, change a number for one of the parameters. Write down what you think it means.
// To stop, place your cursor on line #9  or hit CTRL + "." (period)

// let's play as a laptop orchestra
Pbindef(\p8).play;
Pbindef(\p8).stop;


// mess it up!
// melody
(
Pbindef(\p8,
	\instrument, "grain-asr",
	\buffer, h,
	\dur, 4,
	\rel, 1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.7,
).play;
)


Pbindef(\p8).stop;
// in case you want a redo scroll to the bottom


































// original:
/*
(
Pbindef(\p8,
	\instrument, "grain-asr",
	\buffer, h,
	\dur, 4,
	\rel, 1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.7,
).play;
)
*/
