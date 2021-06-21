(
(
SynthDef(\1,
	{
		arg harm1, freq1, freqq1, fr1, p1, amp1;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(Blip.ar(fr1,harm1), LFSaw.kr(freq1,pi), FSinOsc.kr(freqq1,SinOsc.ar(p1)), 0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);

		Out.ar(0,audio * env * amp1);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\2,
	{
		arg harm2, freq2, freqq2, fr2, p2 , amp2;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr2,harm2), LFSaw.kr(freq2,pi), FSinOsc.kr(freqq2,SinOsc.ar(p2)), 0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);


		Out.ar(1,audio * env * amp2);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\3,
	{
		arg harm3, freq3, freqq3, fr3, p3, amp3;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr3,harm3), LFSaw.kr(freq3,pi), FSinOsc.kr(freqq3,SinOsc.ar(p3)),0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);


		Out.ar(2,audio * env * amp3);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\4,
	{
		arg harm4, freq4, freqq4, fr4, p4, amp4;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr4,harm4), LFSaw.kr(freq4,pi), FSinOsc.kr(freqq4,SinOsc.ar(p4)), 0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);


		Out.ar(3,audio * env * amp4);
}).add
);
////////////////////////////////////////////////
(
SynthDef(\5,
	{
		arg harm5, freq5, freqq5, fr5, p5, amp5;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr5,harm5), LFSaw.kr(freq5,pi), FSinOsc.kr(freqq5,SinOsc.ar(p5)), 0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);


		Out.ar(4,audio * env * amp5);
}).add
);
////////////////////////////////////////////
(
SynthDef(\6,
	{
		arg harm6, freq6, freqq6, fr6, p6, amp6;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr6,harm6), LFSaw.kr(freq6,pi), FSinOsc.kr(freqq6,SinOsc.ar(p6)), 0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);


		Out.ar(5,audio * env * amp6);
}).add
);
////////////////////////////////////////////////////////
(
(
SynthDef(\7,
	{
		arg harm7, freq7, freqq7, fr7, p7, amp7;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr7,harm7), LFSaw.kr(freq7,pi), FSinOsc.kr(freqq7,SinOsc.ar(p7)), 0.3);

		audio =   DecodeB2.ar(2, w, x, y, 0.5);


		Out.ar(8,audio * env * amp7);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\8,
	{
		arg harm8, freq8, freqq8, fr8, p8, amp8;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr8,harm8), LFSaw.kr(freq8,pi), FSinOsc.kr(freqq8,SinOsc.ar(p8)), 0.3);

		audio =   DecodeB2.ar(2, w, x, y, 0.5);


		Out.ar(8,audio * env * amp8);
}).add
);
////////////////////////////////////////////////////////
SynthDef(\G,
	{
	    arg cutoffG , ampG = 0.3, c;
		var env, audio;

		env = EnvGen.kr(Env.sine(18, 1),gate:1, doneAction:2);

    audio =  PanAz.ar(
        8,                 // numChans
        LPF.ar(GrayNoise.ar(0.2),cutoffG);,     // in
        SinOsc.kr(c), // pos
        0.5,            // level
        8            // width
    );


		Out.ar(0,audio * env * ampG);
}).add
);
)
///////////////////////////////////////////////////


(
Tdef(\harm5,
      {
		1.do({((
Pdef(\pG,

 Pbind(*[
    instrument: \G,
         \dur,Pseq([5,4,3,2,3,4,20],inf).trace,
		\cutoffG, Pseq([2,20,200,2000,200,20,2],inf).trace,
					\c, Pexprand(0.1,9,inf)

])
).play(quant:1)
)); 0.yield});

		1.do({((

Pdef(\p1,

 Pbind(*[
    instrument: \1,
        \dur,Prand([3,6,9],inf).trace,
		\freq1, Pseq([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\freqq1, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\fr1, Prand([400,700,1066.666],inf).trace,
					\harm1, Prand([1,2,3],inf).trace,
		\p1, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
					\amp1, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});


		 1.do({((
 Pdef(\p2,

 Pbind(*[
    instrument: \2,
        \dur,Prand([3,6,9],inf).trace,
		\freq2, Pseq([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\freqq2, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\fr2, Prand([400,700,1066.666],inf).trace,
					\harm2, Prand([4,5,6],inf).trace,
		\p2, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
					\amp2, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});

				 1.do({((
 Pdef(\p3,

 Pbind(*[
    instrument: \3,
        \dur,Prand([3,6,9],inf).trace,
		\freq3, Pseq([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\freqq3, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\fr3, Prand([400,700,1066.666],inf).trace,
					\harm3, Prand([7,8,9],inf).trace,
		\p3, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
					\amp3, Pseq([0.333333333,0.666666666,1],inf).trace
])
).play(quant:1)
)); 0.yield});

				 1.do({((
 Pdef(\p4,

 Pbind(*[
    instrument: \4,
        \dur,Prand([3,6,9],inf).trace,
		\freq4, Pseq([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\freqq4, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\fr4, Prand([400,700,1066.666],inf).trace,
					\harm4, Prand([10,11,12],inf).trace,
		\p4, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
					\amp4, Pseq([0.333333333,0.666666666,1],inf).trace
])
).play(quant:1)
)); 0.yield});

				 1.do({((
 Pdef(\p5,

 Pbind(*[
    instrument: \5,
        \dur,Prand([3,6,9],inf).trace,
		\freq5, Pseq([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\freqq5, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\fr5, Prand([400,700,1066.666],inf).trace,
					\harm5, Prand([13,14,15],inf).trace,
		\p5, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
					\amp5, Pseq([0.333333333,0.666666666,1],inf).trace
])
).play(quant:1)
)); 0.yield});

				 1.do({((
 Pdef(\p6,

 Pbind(*[
    instrument: \6,
        \dur,Prand([3,6,9],inf).trace,
		\freq6, Pseq([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\freqq6, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\fr6, Prand([400,700,1066.666],inf).trace,
					\harm6, Prand([16,17,18],inf).trace,
		\p6, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
					\amp6, Pseq([0.333333333,0.666666666,1],inf).trace
])
).play(quant:1)
)); 0.yield});

		0.do({((
		Pdef(\p7,

 Pbind(*[
    instrument: \7,
        \dur,Prand([3,6,9],inf).trace,
		\freq7, Pseq([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\freqq7, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\fr7, Prand([400,700,1066.666],inf).trace,
					\harm7, Prand([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18],inf).trace,
		\p7, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
					\amp7, Pseq([0.333333333,0.666666666,1],inf).trace
])
).play(quant:1)
)); 0.yield});

		0.do({((
Pdef(\p8,

 Pbind(*[
    instrument: \8,
        \dur,Prand([3,6,9],inf).trace,
		\freq8, Pseq([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\freqq8, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
		\fr8, Prand([400,700,1066.666],inf).trace,
					\harm8, Prand([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18],inf).trace,
		\p8, Prand([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,6,7,8,9],inf).trace,
					\amp8, Pseq([0.333333333,0.666666666,1],inf).trace
])
).play(quant:1)
)); 0.yield});



	}
)
)

Tdef(\harm5).play
Tdef(\harm5).stop
Tdef(\harm5).pause
Tdef(\harm5).reset





			0.do({((
Pdef(\pa16,

 Pbind(*[
    instrument: \16,
        \dur,Pseq([3,6],inf).trace,
		\freq16, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq16,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr16, Prand([80,240,480],inf).trace,
		\harm16, Pseq([2,3,4],inf).trace,
		\p16, Pexprand(1,5,inf).trace,
					\amp16, Pexprand(0.333333333,1,inf).trace
])

).play(quant:1)

)); 3.yield});


			0.do({((
Pdef(\pa15,

 Pbind(*[
    instrument: \15,
        \dur,Pseq([3,6],inf).trace,
		\freq15, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq15,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr15, Prand([80,240,480],inf).trace,
		\harm15,  Pseq([2,3,4],inf).trace,
		\p15,  Pexprand(1,5,inf).trace,
					\amp15,  Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 6.yield});

	0.do({((
Pdef(\pa14,

 Pbind(*[
    instrument: \14,
        \dur,Pseq([3,6],inf).trace,
		\freq14, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq14,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr14,  Prand([80,240,480],inf).trace,
		\harm14,  Pseq([2,3,4],inf).trace,
		\p14,  Pexprand(1,5,inf).trace,
					\amp14,  Pexprand(0.333333333,1,inf).trace
])

).play(quant:1)
)); 9.yield});

				0.do({((
Pdef(\pa13,

 Pbind(*[
    instrument: \13,
        \dur,Pseq([3,6],inf).trace,
		\freq13, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq13, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr13,  Prand([80,240,480],inf).trace,
	\harm13,  Pseq([2,3,4],inf).trace,
		\p13,  Pexprand(1,5,inf).trace,
					\amp13,  Pexprand(0.333333333,1,inf).trace
])

).play(quant:1)
)); 6.yield});


			0.do({((
Pdef(\pa12,

 Pbind(*[
    instrument: \12,
        \dur,Pseq([3,6],inf).trace,
		\freq12, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq12,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr12,  Prand([80,240,480],inf).trace,
	\harm12,  Pseq([2,3,4],inf).trace,
		\p12,  Pexprand(1,5,inf).trace,
					\amp12,  Pexprand(0.333333333,1,inf).trace
])

).play(quant:1)
)); 3.yield});


	 0.do({((


 Pdef(\pa11,

 Pbind(*[
    instrument: \11,
        \dur,Pseq([3,6],inf).trace,
		\freq11, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq11,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr11,   Prand([80,240,480],inf).trace,
		\harm11,  Pseq([2,3,4],inf).trace,
		\p11,  Pexprand(1,5,inf).trace,
					\amp11,  Pexprand(0.333333333,1,inf).trace
])

).play(quant:1)
)); 6.yield});

		0.do({((

			Pdef(\pa10,

 Pbind(*[
    instrument: \10,
        \dur,Pseq([3,6],inf).trace,
		\freq10, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq10,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr10,  Prand([80,240,480],inf).trace,
		\harm10,  Pseq([2,3,4],inf).trace,
		\p10,  Pexprand(1,5,inf).trace,
					\amp10,  Pexprand(0.333333333,1,inf).trace
])

).play(quant:1)
)); 9.yield});

	0.do({((
Pdef(\pa9,

 Pbind(*[
    instrument: \9,
        \dur,Pseq([3,6],inf).trace,
		\freq9, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq9,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr9,  Prand([80,240,480],inf).trace,
	\harm9,  Pseq([2,3,4],inf).trace,
		\p9,  Pexprand(1,5,inf).trace,
					\amp9,  Pexprand(0.333333333,1,inf).trace
])

).play(quant:1)
)); 6.yield});

		0.do({((
		Pdef(\pa8,

 Pbind(*[
    instrument: \8,
        \dur,Pseq([3,6],inf).trace,
		\freq8, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq8,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr8,  40,
		\harm8,  Pseq([1],inf).trace,
		\p8,  1,
					\amp8,  Pexprand(0.333333333,1,inf).trace
])

).play(quant:1)
)); 3.yield});


		0.do({((
Pdef(\pa7,

 Pbind(*[
    instrument: \7,
        \dur,Pseq([3,6],inf).trace,
		\freq7, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq7,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr7,  40,
		\harm7,  Pseq([1,2],inf).trace,
		\p7,  1,
					\amp7,  Pexprand(0.333333333,1,inf).trace
])

).play(quant:1)
)); 6.yield});

		0.do({((
Pdef(\pa6,

 Pbind(*[
    instrument: \6,
        \dur,Pseq([3,6],inf).trace,
		\freq6, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq6, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr6,   40,
	\harm6,   Pseq([1],inf).trace,
		\p6,   1,
					\amp6, Pexprand(0.333333333,1,inf).trace

					])
).play(quant:1)
)); 9.yield});


		0.do({((
Pdef(\pa5,

 Pbind(*[
    instrument: \5,
        \dur,Pseq([3,6],inf).trace,
		\freq5,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq5,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr5,   40,
	\harm5,  1,
		\p5,   Pexprand(1,5,inf).trace,
					\amp5,  Pexprand(0.333333333,1,inf).trace

])
).play(quant:1)
)); 6.yield});





		1.do({((
Pdef(\pa5,

 Pbind(*[
    instrument: \5,
        \dur,9,
		\freq5,4,
		\freqq5,4,
		\fr5,   400,
	\harm5,  1,
		\p5,   Pexprand(1,5,inf).trace,
					\amp5,  Pexprand(0.333333333,1,inf).trace

])
).play(quant:1)
)); 3.yield});


			1.do({((
Pdef(\pa4,

 Pbind(*[
    instrument: \1,
        \dur,9,
		\freq4,4,
		\freqq4,4,
		\fr4,  400,
		\harm4, Prand([2,3,4,5],inf).trace,
		\p4,  Pexprand(1,5,inf).trace,
					\amp4,  Pexprand(0.333333333,1,inf).trace

])
).play(quant:1)
)); 3.yield});