// music score
// do all this in quick succession
Pbindef(\p1).play; // 2 beats
Pbindef(\p2).play; // 1 beat
Pbindef(\p2).stop; // stop dolphin sound
Pbindef(\p1).stop; // stop bubbles
Pbindef(\p3).play; // play for 2 beats
Pbindef(\p4).play; // layer p3 with this for 1 beat
Pbindef(\p5).play; // layer p3 and p4 with this for 1 beat
Pbindef(\p6).play; // suspend all before by CTRL + '.' and move onto next piano samples
Pbindef(\p6).stop; // longer sample so, stop before playing next piano synth sample
Pbindef(\p7).play;
Pbindef(\p7).stop;
Pbindef(\p8).play; // play for 1 beat
Pbindef(\p9).play; // layer p8 with this
Pbindef(\p8).stop;
Pbindef(\p9).stop;
Pbindef(\p2).play; // going back to original bubble, dolphin sound
Pbindef(\p1).play;
Pbindef(\p2).stop;
Pbindef(\p1).stop;
Pbindef(\p10).play; // end with ukelele sample for a beat
Pbindef(\p10).stop;