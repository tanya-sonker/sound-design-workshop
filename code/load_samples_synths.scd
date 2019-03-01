// Change path of every sample.  Do this first.
// Place your cursor anywhere between the "(" and ")"
// Press CTRL + ENTER (CTRL and ENTER) at the same time to run block of code
// Do this once
// This loads samples and synths
(
// loading samples
a = Buffer.readChannel(server: s, path: "/Users/tanyasonker/Desktop/SCLOrk-tanya/samples/bubble.wav", channels: [0]); // 1
b = Buffer.readChannel(server: s, path: "/Users/tanyasonker/Desktop/SCLOrk-tanya/samples/dolphin.wav", channels: [0]); // 2
c = Buffer.readChannel(server: s, path: "/Users/tanyasonker/Desktop/SCLOrk-tanya/samples/Bass.wav", channels: [0]); // 3
d = Buffer.readChannel(server: s, path: "/Users/tanyasonker/Desktop/SCLOrk-tanya/samples/Snare.wav", channels: [0]); //4
e = Buffer.readChannel(server: s, path: "/Users/tanyasonker/Desktop/SCLOrk-tanya/samples/countdown.wav", channels: [0]); // 5
f = Buffer.readChannel(server: s, path: "/Users/tanyasonker/Desktop/SCLOrk-tanya/samples/piano.wav", channels: [0]); // 6
g = Buffer.readChannel(server: s, path: "/Users/tanyasonker/Desktop/SCLOrk-tanya/samples/piano-2.wav", channels: [0]); // 7
h = Buffer.readChannel(server: s, path: "/Users/tanyasonker/Desktop/SCLOrk-tanya/samples/melody.wav", channels: [0]); // 8
i = Buffer.readChannel(server: s, path: "/Users/tanyasonker/Desktop/SCLOrk-tanya/samples/piano-3.wav", channels: [0]); // 9
j = Buffer.readChannel(server: s, path: "/Users/tanyasonker/Desktop/SCLOrk-tanya/samples/end.wav", channels: [0]); // 10


// loading synth
SynthDef("grain-asr", {arg buffer, rate = 1, startPos = 0, gate = 1, att = 0.01, rel = 0.1, amp = 1, pan = 0;
	var env, snd;
	env = Env.asr(att, amp, rel).kr(gate: gate, doneAction: 2);
	snd = PlayBuf.ar(1, buffer, rate: rate, startPos: startPos * BufSamples.kr(buffer));
	snd = snd * env;
	Out.ar(0, Pan2.ar(snd, pan));
}).add;


// bubbles
Pbindef(\p1,
	\instrument, "grain-asr",
	\buffer, a,
	\dur, 2,
	\rel, 0.1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.7,
);

// dolphin
Pbindef(\p2,
	\instrument, "grain-asr",
	\buffer, b,
	\dur, 3,
	\rel, 0.1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.7,
);

// bass
Pbindef(\p3,
	\instrument, "grain-asr",
	\buffer, c,
	\dur, 4,
	\rel, 1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.3,
);

// snare
Pbindef(\p4,
	\instrument, "grain-asr",
	\buffer, d,
	\dur, 5,
	\rel, 1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.5,
);

// countdown
Pbindef(\p5,
	\instrument, "grain-asr",
	\buffer, e,
	\dur, 2,
	\rel, 0.1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.7,
);

// piano-1
Pbindef(\p6,
	\instrument, "grain-asr",
	\buffer, f,
	\dur, 4,
	\rel, 1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.5,
);

// piano-2
Pbindef(\p7,
	\instrument, "grain-asr",
	\buffer, g,
	\dur, 4,
	\rel, 1.5,
	\rate, 1,
	\startPos, 0,
	\amp, 0.5,
);

// melody
Pbindef(\p8,
	\instrument, "grain-asr",
	\buffer, h,
	\dur, 4,
	\rel, 1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.7,
);

// piano-3
Pbindef(\p9,
	\instrument, "grain-asr",
	\buffer, i,
	\dur, 4,
	\rel, 1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.5,
);

// ukelele strum
Pbindef(\p10,
	\instrument, "grain-asr",
	\buffer, j,
	\dur, 5,
	\rel, 0.1,
	\rate, 1,
	\startPos, 0,
	\amp, 0.7,
);


)