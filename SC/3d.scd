(
(
SynthDef(\1,
	{
		arg harm1, freq1, freqq1, fr1, p1, amp1;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(Blip.ar(fr1,harm1), Blip.kr(freq1,p1), SinOsc.kr(freqq1), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);

		Out.ar(0,audio * env * amp1 * 0.8);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\2,
	{
		arg harm2, freq2, freqq2, fr2, p2 , amp2;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr2,harm2), Blip.kr(freq2,p2), FSinOsc.kr(freqq2), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(1,audio * env * amp2 * 0.7);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\3,
	{
		arg harm3, freq3, freqq3, fr3, p3, amp3;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr3,harm3), Blip.kr(freq3,p3), FSinOsc.kr(freqq3),0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(2,audio * env * amp3 * 0.6);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\4,
	{
		arg harm4, freq4, freqq4, fr4, p4, amp4;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr4,harm4),Blip.kr(freq4,p4), FSinOsc.kr(freqq4), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(3,audio * env * amp4 * 0.5);
}).add
);
////////////////////////////////////////////////
(
SynthDef(\5,
	{
		arg harm5, freq5, freqq5, fr5, p5, amp5;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr5,harm5), Blip.kr(freq5,p5), FSinOsc.kr(freqq5), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(4,audio * env * amp5 * 0.4);
}).add
);
////////////////////////////////////////////
(
SynthDef(\6,
	{
		arg harm6, freq6, freqq6, fr6, p6, amp6;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr6,harm6), Blip.kr(freq6,p6), FSinOsc.kr(freqq6), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(5,audio * env * amp6 * 0.3);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\7,
	{
		arg harm7, freq7, freqq7, fr7, p7, amp7;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr7,harm7), Blip.kr(freq7,p7), FSinOsc.kr(freqq7), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(6,audio * env * amp7 * 0.2);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\8,
	{
		arg harm8, freq8, freqq8, fr8, p8, amp8;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr8,harm8), Blip.kr(freq8,p8), FSinOsc.kr(freqq8), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(7,audio * env * amp8 * 0.1);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\9,
	{
		arg harm9, freq9, freqq9, fr9, p9, amp9;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr9,harm9), Blip.kr(freq9,p9), FSinOsc.kr(freqq9), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(8,audio * env * amp9);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\10,
	{
		arg harm10,freq10,freqq10,fr10,p10,amp10;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr10,harm10), Blip.kr(freq10,p10), FSinOsc.kr(freqq10), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(9,audio * env * amp10);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\11,
	{
		arg harm11, freq11, freqq11, fr11, p11, amp11;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr11,harm11), Blip.kr(freq11,p11), FSinOsc.kr(freqq11), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);

		Out.ar(10,audio * env * amp11);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\12,
	{
		arg harm12, freq12, freqq12, fr12, p12, amp12;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr12,harm12),Blip.kr(freq12,p12), FSinOsc.kr(freqq12), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(11,audio * env * amp12);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\13,
	{
		arg harm13, freq13, freqq13, fr13, p13, amp13;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr13,harm13),Blip.kr(freq13,p13), FSinOsc.kr(freqq13), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(12,audio * env * amp13);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\14,
	{
		arg harm14, freq14, freqq14, fr14, p14, amp14;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr14,harm14), Blip.kr(freq14,p14), FSinOsc.kr(freqq14), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(13,audio * env * amp14);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\15,
	{
		arg harm15, freq15, freqq15, fr15, p15, amp15;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr15,harm15),Blip.kr(freq15,p15), FSinOsc.kr(freqq15), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(14,audio * env * amp15);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\16,
	{
		arg harm16, freq16, freqq16, fr16, p16, amp16;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr16,harm16), Blip.kr(freq16,p16), FSinOsc.kr(freqq16), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);


		Out.ar(15,audio * env * amp16);
}).add
);

SynthDef(\G,
	{
	    arg cutoffG , ampG , c;
		var env, audio;

		env = EnvGen.kr(Env.sine(18, 1),gate:1, doneAction:2);

    audio =  PanAz.ar(
        18,                 // numChans
        LPF.ar(GrayNoise.ar(0.4),cutoffG);,     // in
				SinOsc.kr(c), // pos
        0.5,            // level
        18         // width
    );


		Out.ar(0,audio * env * ampG);
}).add
)

///////////////////////////////////////////////////


(
Tdef(\b16,
      {

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

		1.do({((
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


		1.do({((
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

		1.do({((
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


		1.do({((
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
Pdef(\pa4,

 Pbind(*[
    instrument: \4,
        \dur,Pseq([3,6],inf).trace,
		\freq4,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq4,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr4,  40,
		\harm4,  1,
		\p4,  Pexprand(1,5,inf).trace,
					\amp4,  Pexprand(0.333333333,1,inf).trace

])
).play(quant:1)
)); 3.yield});

		 1.do({((
 Pdef(\pa3,

 Pbind(*[
    instrument: \3,
        \dur,Pseq([3,6],inf).trace,
		\freq3,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq3,Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr3,  40,
		\harm3,  1,
		\p3,  Pexprand(1,5,inf).trace,
					\amp3,  Pexprand(0.333333333,1,inf).trace

])
).play(quant:1)
)); 6.yield});


		 1.do({((
 Pdef(\pa2,

 Pbind(*[
    instrument: \2,
        \dur,Pseq([3,6],inf).trace,
		\freq2, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq2, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\fr2,  40,
		\harm2, 1,
		\p2,  Pexprand(1,5,inf).trace,
					\amp2,  Pexprand(0.333333333,1,inf).trace

])
).play(quant:1)
)); 9.yield});

			1.do({((

Pdef(\pa1,

 Pbind(*[
    instrument: \1,
        \dur,Pseq([3,6],inf).trace,
		\freq1, Prand([0.4,0.8,1.2,1.6],inf).trace,
		\freqq1, Prand([0.4,0.8,1.2,1.6],inf).trace,
					\fr1, 40,
		\harm1, 1,
		\p1,  Pexprand(1,5,inf).trace,
					\amp1, Pexprand(0.333333333,1,inf).trace

])
).play(quant:1)
)); 6.yield});



		1.do({((
Pdef(\pG,

 Pbind(*[
    instrument: \G,
         \dur,Pseq([5,4,3,2,3,4,42],inf).trace,
		\cutoffG, Pseq([2,20,200,2000,200,20,2],inf).trace,
					\c, Pexprand(0.3,0.6,inf).trace,
					\ampG, 1

])
).play(quant:1)
)); 0.yield});


	}
);
)



Tdef(\b16).play;

Tdef(\b16).play
Tdef(\b16).stop
Tdef(\b16).pause
Tdef(\b16).reset

				Pexprand(0.333333333,1,inf).trace
