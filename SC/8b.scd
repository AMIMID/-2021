(
(
SynthDef(\1,
	{
		arg harm1, freq1, freqq1, fr1, p1, amp1;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(Blip.ar(fr1,harm1), LFSaw.kr(freq1,pi), FSinOsc.kr(freqq1,SinOsc.ar(p1)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);

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

		audio =   DecodeB2.ar(5, w, x, y, 0.5);


		Out.ar(0,audio * env * amp2);
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

		audio =   DecodeB2.ar(5, w, x, y, 0.5);


		Out.ar(3,audio * env * amp3);
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

		audio =   DecodeB2.ar(6, w, x, y, 0.5);


		Out.ar(0,audio * env * amp4);
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

		audio =   DecodeB2.ar(6, w, x, y, 0.5);


		Out.ar(2,audio * env * amp5);
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

		audio =   DecodeB2.ar(4, w, x, y, 0.5);


		Out.ar(0,audio * env * amp6);
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

		audio =   DecodeB2.ar(4, w, x, y, 0.5);


		Out.ar(2,audio * env * amp7);
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

		audio =   DecodeB2.ar(4, w, x, y, 0.5);


		Out.ar(4,audio * env * amp8);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\9,
	{
		arg harm9, freq9, freqq9, fr9, p9, amp9;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr9,harm9), LFSaw.kr(freq9,pi), FSinOsc.kr(freqq9,SinOsc.ar(p9)), 0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);


		Out.ar(0,audio * env * amp9);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\10,
	{
		arg harm10,freq10,freqq10,fr10,p10,amp10;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr10,harm10), LFSaw.kr(freq10,pi), FSinOsc.kr(freqq10,SinOsc.ar(p10)), 0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);


		Out.ar(1,audio * env * amp10);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\11,
	{
		arg harm11, freq11, freqq11, fr11, p11, amp11;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr11,harm11), LFSaw.kr(freq11,pi), FSinOsc.kr(freqq11,SinOsc.ar(p11)), 0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);


		Out.ar(2,audio * env * amp11);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\12,
	{
		arg harm12, freq12, freqq12, fr12, p12, amp12;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr12,harm12), LFSaw.kr(freq12,pi), FSinOsc.kr(freqq12,SinOsc.ar(p12)), 0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);


		Out.ar(3,audio * env * amp12);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\13,
	{
		arg harm13, freq13, freqq13, fr13, p13, amp13;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr13,harm13), LFSaw.kr(freq13,pi), FSinOsc.kr(freqq13,SinOsc.ar(p13)), 0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);


		Out.ar(4,audio * env * amp13);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\14,
	{
		arg harm14, freq14, freqq14, fr14, p14, amp14;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr14,harm14), LFSaw.kr(freq14,pi), FSinOsc.kr(freqq14,SinOsc.ar(p14)), 0.3);

		audio =   DecodeB2.ar(3, w, x, y, 0.5);


		Out.ar(5,audio * env * amp14);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\15,
	{
		arg harm15, freq15, freqq15, fr15, p15, amp15;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr15,harm15), LFSaw.kr(freq15,pi), FSinOsc.kr(freqq15,SinOsc.ar(p15)), 0.3);

		audio =   DecodeB2.ar(2, w, x, y, 0.5);


		Out.ar(0,audio * env * amp15);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\16,
	{
		arg harm16, freq16, freqq16, fr16, p16, amp16;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr16,harm16), LFSaw.kr(freq16,pi), FSinOsc.kr(freqq16,SinOsc.ar(p16)), 0.3);

		audio =   DecodeB2.ar(2, w, x, y, 0.5);


		Out.ar(2,audio * env * amp16);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\17,
	{
		arg harm17, freq17, freqq17, fr17, p17, amp17;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr17,harm17), LFSaw.kr(freq17,pi), FSinOsc.kr(freqq17,SinOsc.ar(p17)), 0.3);

		audio =   DecodeB2.ar(2, w, x, y, 0.5);


		Out.ar(4,audio * env * amp17);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\18,
	{
		arg harm18, freq18, freqq18, fr18, p18, amp18;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr18,harm18), LFSaw.kr(freq18,pi), FSinOsc.kr(freqq18,SinOsc.ar(p18)), 0.3);

		audio =   DecodeB2.ar(2, w, x, y, 0.5);


		Out.ar(6,audio * env * amp18);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\19,
	{
		arg harm19, freq19, freqq19, fr19, p19, amp19;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr19,harm19), LFSaw.kr(freq19,pi), FSinOsc.kr(freqq19,SinOsc.ar(p19)), 0.3);

		audio =   DecodeB2.ar(7, w, x, y, 0.5);


		Out.ar(0,audio * env * amp19);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\20,
	{
		arg harm20, freq20, freqq20, fr20, p20, amp20;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr20,harm20), LFSaw.kr(freq20,pi), FSinOsc.kr(freqq20,SinOsc.ar(p20)), 0.3);

		audio =   DecodeB2.ar(7, w, x, y, 0.5);


		Out.ar(1,audio * env * amp20);
}).add
);
////////////////////////////////////////////////////////
SynthDef(\G,
	{
	    arg cutoffG , ampG = 0.9, c;
		var env, audio;

		env = EnvGen.kr(Env.sine(18, 1),gate:1, doneAction:2);

    audio =  PanAz.ar(
        8,                 // numChans
        LPF.ar(GrayNoise.ar(0.333),cutoffG);,     // in
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
					\c, Pexprand(3,9,inf).trace,
					\ampG, Prand([0.3,0.6,0.9],inf).trace

])
).play(quant:1)
)); 0.yield});

		1.do({((

Pdef(\pa1,

 Pbind(*[
    instrument: \1,
        \dur,Prand([3,6,9],inf).trace,
		\freq1, Prand([0.66666,2,4],inf).trace,
		\freqq1, Prand([0.66666,2,4],inf).trace,
		\fr1, Prand([0.66666,2,4],inf).trace,
					\harm1, Prand([1,2,3,4,5,6],inf).trace,
		\p1, Prand([0.66666,2,4],inf).trace,
					\amp1, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});


		 1.do({((
 Pdef(\pa2,

 Pbind(*[
    instrument: \2,
        \dur,Prand([3,6,9],inf).trace,
		\freq2, Prand([1.333333,3,5.333333],inf).trace,
		\freqq2, Prand([1.333333,3,5.333333],inf).trace,
		\fr2, Prand([133.333,300,533.333],inf).trace,
					\harm2, Prand([1,2,3,4,5,6],inf).trace,
		\p2, Prand([1.333333,3,5.333333],inf).trace,
					\amp2, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});

				 1.do({((
 Pdef(\pa3,

 Pbind(*[
    instrument: \3,
        \dur,Prand([3,6,9],inf).trace,
		\freq3, Prand([1.333333,3,5.333333],inf).trace,
		\freqq3, Prand([1.333333,3,5.333333],inf).trace,
		\fr3, Prand([133.333,300,533.333],inf).trace,
					\harm3, Prand([1,2,3,4,5,6],inf).trace,
		\p3, Prand([1.333333,3,5.333333],inf).trace,
					\amp3, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});

				 1.do({((
 Pdef(\pa4,

 Pbind(*[
    instrument: \4,
        \dur,Prand([3,6,9],inf).trace,
		\freq4, Prand([1.333333,3,5.333333],inf).trace,
		\freqq4, Prand([1.333333,3,5.333333],inf).trace,
		\fr4, Prand([133.333,300,533.333],inf).trace,
					\harm4, Prand([1,2,3,4,5,6],inf).trace,
		\p4, Prand([1.333333,3,5.333333],inf).trace,
					\amp4, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});

				 1.do({((
 Pdef(\pa5,

 Pbind(*[
    instrument: \5,
        \dur,Prand([3,6,9],inf).trace,
		\freq5, Prand([1.333333,3,5.333333],inf).trace,
		\freqq5, Prand([1.333333,3,5.333333],inf).trace,
		\fr5, Prand([133.333,300,533.333],inf).trace,
					\harm5, Prand([1,2,3,4,5,6],inf).trace,
		\p5, Prand([1.333333,3,5.333333],inf).trace,
					\amp5, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});

				 1.do({((
 Pdef(\pa6,

 Pbind(*[
    instrument: \6,
        \dur,Prand([3,6,9],inf).trace,
		\freq6, Prand([2,4,6.666666],inf).trace,
		\freqq6, Prand([2,4,6.666666],inf).trace,
		\fr6, Prand([200,400,666.666],inf).trace,
					\harm6, Prand([1,2,3,4,5,6],inf).trace,
		\p6, Prand([2,4,6.666666],inf).trace,
					\amp6, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});

		1.do({((
		Pdef(\pa7,

 Pbind(*[
    instrument: \7,
        \dur,Prand([3,6,9],inf).trace,
		\freq7, Prand([2,4,6.666666],inf).trace,
		\freqq7, Prand([2,4,6.666666],inf).trace,
		\fr7, Prand([200,400,666.666],inf).trace,
					\harm7, Prand([1,2,3,4,5,6],inf).trace,
		\p7, Prand([2,4,6.666666],inf).trace,
					\amp7, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});

		1.do({((
Pdef(\pa8,

 Pbind(*[
    instrument: \8,
        \dur,Prand([3,6,9],inf).trace,
		\freq8, Prand([2,4,6.666666],inf).trace,
		\freqq8, Prand([2,4,6.666666],inf).trace,
		\fr8, Prand([200,400,666.666],inf).trace,
					\harm8, Prand([1,2,3,4,5,6],inf).trace,
		\p8, Prand([2,4,6.666666],inf).trace,
					\amp8, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa9,

 Pbind(*[
    instrument: \9,
        \dur,Prand([3,6,9],inf).trace,
		\freq9, Prand([4,7,10.666666],inf).trace,
		\freqq9, Prand([4,7,10.666666],inf).trace,
		\fr9, Prand([400,700,1066.666],inf).trace,
					\harm9, Prand([1,2,3,4,5,6],inf).trace,
		\p9, Prand([4,7,10.666666],inf).trace,
					\amp9, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa10,

 Pbind(*[
    instrument: \10,
        \dur,Prand([3,6,9],inf).trace,
		\freq10, Prand([4,7,10.666666],inf).trace,
		\freqq10, Prand([4,7,10.666666],inf).trace,
		\fr10, Prand([400,700,1066.666],inf).trace,
					\harm10, Prand([1,2,3,4,5,6],inf).trace,
		\p10, Prand([4,7,10.666666],inf).trace,
					\amp10, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa11,

 Pbind(*[
    instrument: \11,
        \dur,Prand([3,6,9],inf).trace,
		\freq11, Prand([4,7,10.666666],inf).trace,
		\freqq11, Prand([4,7,10.666666],inf).trace,
		\fr11, Prand([400,700,1066.666],inf).trace,
					\harm11, Prand([1,2,3,4,5,6],inf).trace,
		\p11, Prand([4,7,10.666666],inf).trace,
					\amp11, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa12,

 Pbind(*[
    instrument: \12,
        \dur,Prand([3,6,9],inf).trace,
		\freq12, Prand([4,7,10.666666],inf).trace,
		\freqq12, Prand([4,7,10.666666],inf).trace,
		\fr12, Prand([400,700,1066.666],inf).trace,
					\harm12, Prand([1,2,3,4,5,6],inf).trace,
		\p12, Prand([4,7,10.666666],inf).trace,
					\amp12, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa13,

 Pbind(*[
    instrument: \13,
        \dur,Prand([3,6,9],inf).trace,
		\freq13, Prand([4,7,10.666666],inf).trace,
		\freqq13, Prand([4,7,10.666666],inf).trace,
		\fr13, Prand([400,700,1066.666],inf).trace,
					\harm13, Prand([1,2,3,4,5,6],inf).trace,
		\p13, Prand([4,7,10.666666],inf).trace,
					\amp13, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa14,

 Pbind(*[
    instrument: \14,
        \dur,Prand([3,6,9],inf).trace,
		\freq14, Prand([4,7,10.666666],inf).trace,
		\freqq14, Prand([4,7,10.666666],inf).trace,
		\fr14, Prand([400,700,1066.666],inf).trace,
					\harm14, Prand([1,2,3,4,5,6],inf).trace,
		\p14, Prand([4,7,10.666666],inf).trace,
					\amp14, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa15,

 Pbind(*[
    instrument: \15,
        \dur,Prand([3,6,9],inf).trace,
		\freq15, Prand([2.666666,5,8],inf).trace,
		\freqq15, Prand([2.666666,5,8],inf).trace,
		\fr15, Prand([266.666,500,800],inf).trace,
					\harm15, Prand([1,2,3,4,5,6],inf).trace,
		\p15, Prand([2.666666,5,8],inf).trace,
					\amp15, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa16,

 Pbind(*[
    instrument: \16,
        \dur,Prand([3,6,9],inf).trace,
		\freq16, Prand([2.666666,5,8],inf).trace,
		\freqq16, Prand([2.666666,5,8],inf).trace,
		\fr16, Prand([266.666,500,800],inf).trace,
					\harm16, Prand([1,2,3,4,5,6],inf).trace,
		\p16, Prand([2.666666,5,8],inf).trace,
					\amp16, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa17,

 Pbind(*[
    instrument: \17,
        \dur,Prand([3,6,9],inf).trace,
		\freq17, Prand([02.666666,5,8],inf).trace,
		\freqq17, Prand([2.666666,5,8],inf).trace,
		\fr17, Prand([266.666,500,800],inf).trace,
					\harm17, Prand([1,2,3,4,5,6],inf).trace,
		\p17, Prand([2.666666,5,8],inf).trace,
					\amp17, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa18,

 Pbind(*[
    instrument: \18,
        \dur,Prand([3,6,9],inf).trace,
		\freq18, Prand([2.666666,5,8],inf).trace,
		\freqq18, Prand([2.666666,5,8],inf).trace,
		\fr18, Prand([266.666,500,800],inf).trace,
					\harm18, Prand([1,2,3,4,5,6],inf).trace,
		\p18, Prand([2.666666,5,8],inf).trace,
					\amp18, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa19,

 Pbind(*[
    instrument: \19,
        \dur,Prand([3,6,9],inf).trace,
		\freq19, Prand([1.333333,3,5.333333],inf).trace,
		\freqq19, Prand([1.333333,3,5.333333],inf).trace,
		\fr19, Prand([133.333,300,533.333],inf).trace,
					\harm19, Prand([1,2,3,4,5,6],inf).trace,
		\p19, Prand([1.333333,3,5.333333],inf).trace,
					\amp19, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 0.yield});
			1.do({((
Pdef(\pa20,

 Pbind(*[
    instrument: \20,
        \dur,Prand([3,6,9],inf).trace,
		\freq20, Prand([1.333333,3,5.333333],inf).trace,
		\freqq20, Prand([1.333333,3,5.333333],inf).trace,
		\fr20, Prand([133.333,300,533.333],inf).trace,
					\harm20, Prand([1,2,3,4,5,6],inf).trace,
		\p20, Prand([1.333333,3,5.333333],inf).trace,
					\amp20, Pexprand(0.333333333,1,inf).trace
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