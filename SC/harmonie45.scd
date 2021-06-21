.s.freeAll
s.boot
s.meter
s.scope
s.freqscope
s.makeWindow

////////////////////////////////////////////Synthdefs////////////////////////////////
a = Synth(\1)
(
(
SynthDef(\1,
	{
		arg harm1, freq1, freqq1, fr, p, amp1 = 1;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(Blip.ar(fr,harm1), FSinOsc.kr(freq1,pi), FSinOsc.kr(freqq1,p * (1pi)), 0.3);

		audio =   DecodeB2.ar(4, w, x, y, 0.5);

		Out.ar(0,audio * env * amp1);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\2,
	{
		arg harm2, freq2, freqq2, amp2 = 0.1;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(9,harm2), FSinOsc.kr(freq2,pi), FSinOsc.kr(freqq2,0.5pi), 0.3);

		audio =   DecodeB2.ar(4, w, x, y, 0.5);


		Out.ar(0,audio * env * amp2);
}).add
);
////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\3,
	{
		arg harm3, freq3, freqq3, amp3 = 0.1;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(16,harm3), FSinOsc.kr(freq3,pi), FSinOsc.kr(freqq3,0.5pi), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(0,audio * env * amp3);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\4,
	{
		arg harm4, freq4, freqq4, amp4 = 0.1;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

	#w, x, y, z = PanB.ar(Blip.ar(25,harm4), FSinOsc.kr(freq4,pi), FSinOsc.kr(freqq4,0.5pi), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(0,audio * env * amp4);
}).add
);
///////////////////////////////////////////////////////////////////////////////////////

(
SynthDef(\5,
	{
		arg harm5, freq5, freqq5, amp5 = 0.1;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

	#w, x, y, z = PanB.ar(Blip.ar(36,harm5), FSinOsc.kr(freq5,pi), FSinOsc.kr(freqq5,0.5pi), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(0,audio  * env * amp5);
}).add
);
///////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\6,
	{
		arg harm6, freq6, freqq6, amp6 = 0.1;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

	#w, x, y, z = PanB.ar(Blip.ar(49,harm6), FSinOsc.kr(freq6,pi), FSinOsc.kr(freqq6,0.5pi), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);

		Out.ar(0,audio * env * amp6);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\7,
	{
		arg harm7, freq7, freqq7, amp7 = 0.1;
        var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2])),gate:1, doneAction:2);

 #w, x, y, z = PanB.ar(Blip.ar(64,harm7), FSinOsc.kr(freq7,pi), FSinOsc.kr(freqq7,0.5pi), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(0,audio * env * amp7);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\8,
	{
		arg harm8, freq8, freqq8, amp8 = 0.1;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

   #w, x, y, z = PanB.ar(Blip.ar(81,harm8), FSinOsc.kr(freq8,pi), FSinOsc.kr(freqq8,0.5pi), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);

		Out.ar(0,audio * env * amp8);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\9,
	{
		arg harm9, freq9;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		audio = PanAz.ar(
        4,                 // numChans
     Blip.ar(1200,harm9),     // in
        SinOsc.kr(0.6), // pos
        0.5,            // level
        1           // width
    );


		Out.ar(8,audio * env);
}).add
);
////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\10,
	{
		arg harm10, freq10;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		audio =  PanAz.ar(
        4,                 // numChans
     Blip.ar(1200,harm10),     // in
        SinOsc.kr(0.6), // pos
        0.5,            // level
        1           // width
    );


		Out.ar(9,audio * env);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\11,
	{
		arg harm11, freq11;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		audio =  PanAz.ar(
        4,                 // numChans
     Blip.ar(1200,harm11),     // in
        SinOsc.kr(0.6), // pos
        0.5,            // level
        1           // width
    );


		Out.ar(10,audio * env);
}).add
);
/////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\12,
	{
		arg harm12, freq12;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		audio =  PanAz.ar(
        4,                 // numChans
     Blip.ar(1200,harm12),     // in
        SinOsc.kr(0.6), // pos
        0.5,            // level
        1           // width
    );


		Out.ar(11,audio * env);
}).add
);
//////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\13,
	{
		arg harm13, freq13;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		audio =  PanAz.ar(
        4,                 // numChans
     Blip.ar(1200,harm13),     // in
        SinOsc.kr(0.6), // pos
        0.5,            // level
        1           // width
    );


		Out.ar(12,audio * env);
}).add
);
////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\14,
	{
		arg harm14, freq14;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		audio = PanAz.ar(
        4,                 // numChans
     Blip.ar(1200,harm14),     // in
        SinOsc.kr(0.6), // pos
        0.5,            // level
        1           // width
    );


		Out.ar(13,audio * env);
}).add
);
////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\15,
	{
		arg harm15, freq15;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		audio = PanAz.ar(
        4,                 // numChans
     Blip.ar(1200,harm15),     // in
        SinOsc.kr(0.6), // pos
        0.5,            // level
        1           // width
    );


		Out.ar(14,audio * env);
}).add
);
////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\16,
	{
		arg harm16, freq16;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		audio =  PanAz.ar(
        4,                 // numChans
     Blip.ar(1200,harm16),     // in
        SinOsc.kr(0.6), // pos
        0.5,            // level
        1           // width
    );

		Out.ar(15,audio * env);
}).add
);
///////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\17,
	{
		arg harm17, freq17;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

			audio = PanAz.ar(
        4,                 // numChans
     Blip.ar(1200,harm17),     // in
        SinOsc.kr(0.6), // pos
        0.5,            // level
        1           // width
    );


		Out.ar(16,audio * env);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\18,
	{
		arg harm18, freq18;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		audio =  PanAz.ar(
        4,                 // numChans
     Blip.ar(1200,harm18),     // in
        SinOsc.kr(0.6), // pos
        0.5,            // level
        1           // width
    );


		Out.ar(17,audio * env);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\G,
	{
	    arg cutoffG , ampG = 0.1;
		var env, audio;

		env = EnvGen.kr(Env.sine(18, 1),gate:1, doneAction:2);

    audio =  PanAz.ar(
        8,                 // numChans
        LPF.ar(GrayNoise.ar(0.4),cutoffG);,     // in
        SinOsc.kr(0.3), // pos
        0.5,            // level
        8            // width
    );


		Out.ar(0,audio * env * ampG);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\P,
	{
		arg cutoffP, ampP = 1;
		var env, audio;


		env = EnvGen.kr(Env.sine(18, 1),gate:1, doneAction:2);

    audio = PinkNoise.ar(0.4);
    audio = LPF.ar(audio,cutoffP);


		Out.ar(2,audio * env * ampP);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////
(
SynthDef.new(\tone,
	{
		arg freq=40, nharm=12, detune=0.2, gate=1,
		pan=0, amp=1, out=0;
		var sig, env, envq;
		envq = EnvGen.kr(Env.sine(10, 10));
		env = EnvGen.kr(Env.adsr(0.05,0.1,0.5,3),gate);
		sig = Blip.ar(
			freq *
			LFNoise1.kr(0.2!16).bipolar(detune.neg,detune).midiratio,nharm
		);
		sig = sig * LFNoise1.kr(0.5!16).exprange(0.1,1);
		sig = Splay.ar(sig);
		sig = Balance2.ar(sig[0],sig[1],pan);
		sig = sig * env * envq * amp;
		Out.ar(out,sig);
}).add
);
(
SynthDef.new(\sine,{
	arg freq=440, atk=0.005,rel=0.3,amp=1,pan=0;
	var sig,env;
	sig = SinOsc.ar(freq);
	env = EnvGen.kr(Env.new([0,1,0],[atk,rel],[1,-1]),doneAction: 2);
	sig = Pan2.ar(sig,pan,amp);
	sig = sig * env;
	Out.ar(0,sig);
}).add;
);

)
Synth(\tone,[\gate,1])
///////////////////////////////////////////////////pdefs//////////////////////////////////////////////
(
Pdef(
	\detune,
 Pbind(
	\instrument, \tone,
	\dur,Pseq([2,5,2],inf).trace,
	\freq, Pexprand(50,500,inf).trace,
	\nharm, Pexprand(1,16,inf).trace,
	\detune, Pseq([1,2,1],inf).trace,
	\pan, Pwhite(-0.8, 0.8,inf)
);
).play(quant:1);
);
///////////////////////////////////////////////
(
Pdef(
	\sinetone,
Pbind(
	\instrument, \sine,
	\dur,Pseq([0.6,0.15,0.15],inf).trace,
	\freq, Pexprand(50,22000,inf).trace,
	\atk, Pwhite(2.0,3.0,inf),
	\rel, Pwhite(5.0,10.0,inf),
	\amp, Pexprand(0.01,0.2,inf),
	\pan, Pwhite(-0.8, 0.8,inf)
);
).play(quant:1);
);

//////////////////////////////////////
(
Pdef(\pG,

 Pbind(*[
    instrument: \G,
         \dur,Pseq([8,8,8],inf).trace,
		\cutoffG, Pseq([200,2000,200],inf).trace
])
).play(quant:1)
);
//////////////////////////////////////
(
Pdef(\pP,

 Pbind(*[
    instrument: \P,
    \dur,Pseq([1,64],inf).trace,
	\cutoffP, Pexprand(2,2000,inf).trace
])
).play(quant:1)
);
//////////////////////////////////////
(
Pdef(\p1,

 Pbind(*[
    instrument: \1,
        \dur,Pseq([6,6,6,6,6,6,6,6,6,6,6,6,6],inf).trace,
		\freq1, Pseq([0.1,0.2,0.3,0.5,0.8,1.3,2.1,3.4,5.5,8.9,14.4,23.3,37.7],inf).trace,
		\freq2, Pseq([0.1,0.2,0.3,0.5,0.8,1.3,2.1,3.4,5.5,8.9,14.4,23.3,37.7],inf).trace,
		\fr1, Pseq([40,160,90,250,160,360,250,490,360,640,390,810,640],inf).trace,
	\harm1, Pexprand(2,14,inf).trace,
		\p1, Pseq([0.1,0.2,0.3,0.5,0.8,1.3,2.1,3.4,5.5,8.9,14.4,23.3,37.7],inf).trace
])
).play(quant:1)
)

Pdef(\phase1a).pause
Pdef(\phase1a).resume
/////////////////////////////////////////////////////////////////////////////

(
Pdef(\p2,

 Pbind(*[
    instrument: \2,
\dur,Pseq([7.9,7.9],inf).trace,
	\freq2, Pseq([0.2,0.4],inf).trace,
	\harm2, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\phase1b).pause
Pdef(\phase1b).resume
////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\p3,

 Pbind(*[
    instrument: \3,
       \dur,Pseq([7.9,7.9],inf).trace,
	\freq3, Pseq([0.3,0.6],inf).trace,
	\harm3, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\phase1c).pause
Pdef(\phase1c).resume
////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\p4,

 Pbind(*[
    instrument: \4,
       \dur,Pseq([7.9,7.9],inf).trace,
	\freq4, Pseq([0.5,1],inf).trace,
	\harm4, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\phase1d).pause
Pdef(\phase1d).resume
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\p5,

 Pbind(*[
    instrument: \5,
    \dur,Pseq([1,5,8],inf).trace,
	\freq5, Pexprand(1,20000,inf).trace,
	\harm5, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\phase1a).pause
Pdef(\phase1a).resume
/////////////////////////////////////////////////////////////////////////////

(
Pdef(\p6,

 Pbind(*[
    instrument: \6,
\dur,Pseq([1,5,8],inf).trace,
	\freq6, Pexprand(1,20000,inf).trace,
	\harm6, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\phase1b).pause
Pdef(\phase1a).resume
////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\p7,

 Pbind(*[
    instrument: \7,
\dur,Pseq([1,5,8],inf).trace,
	\freq7, Pexprand(1,20000,inf).trace,
	\harm7, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\phase1a).pause
Pdef(\phase1a).resume
////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\p8,

 Pbind(*[
    instrument: \8,
	\dur,Pseq([1,5,8],inf).trace,
	\freq8, Pexprand(1,20000,inf).trace,
	\harm8, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\phase1a).pause
Pdef(\phase1a).resume
////////////////////////////////////////////////////////////////////////////////////////////////

s.scope
(
Pdef(\p9,

 Pbind(*[
    instrument: \9,
\dur,Pseq([1,5,8],inf).trace,
	\freq9, Pexprand(1,20000,inf).trace,
	\harm9, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\pharm3a).pause
Pdef(\pharm3a).resume
/////////////////////////////////////////////////////////////////////////////

(
Pdef(\p10,

 Pbind(*[
    instrument: \10,
      \dur,Pseq([1,5,8],inf).trace,
	\freq10, Pexprand(1,20000,inf).trace,
	\harm10, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\pharm3b).pause
Pdef(\pharm3b).resume
////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\p11,

 Pbind(*[
    instrument: \11,
        \dur,Pseq([1,5,8],inf).trace,
	\freq11, Pexprand(1,20000,inf).trace,
	\harm11, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\pharm3c).pause
Pdef(\pharm3c).resume
////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\p12,

 Pbind(*[
    instrument: \12,
       \dur,Pseq([1,5,8],inf).trace,
	\freq12, Pexprand(1,20000,inf).trace,
	\harm12, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\pharm3d).pause
Pdef(\pharm3d).resume
//////////////////////////////////////////////////////////////////////////////////////////////////////(
(
Pdef(\p13,

 Pbind(*[
    instrument: \13,
      \dur,Pseq([1,5,8],inf).trace,
	\freq13, Pexprand(1,20000,inf).trace,
	\harm13, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\pharm3e).pause
Pdef(\pharm3e).resume
///////////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\p14,

 Pbind(*[
    instrument: \14,
       \dur,Pseq([1,5,8],inf).trace,
	\freq14, Pexprand(1,20000,inf).trace,
	\harm14, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\pharm3f).pause
Pdef(\pharm3f).resume
///////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\p15,

 Pbind(*[
    instrument: \15,
         \dur,Pseq([1,5,8],inf).trace,
	\freq15, Pexprand(1,20000,inf).trace,
	\harm15, Pexprand(1,8,inf).trace
])
).play(quant:0)
)
s.scope
Pdef(\pharm4a).pause
Pdef(\pharm4a).resume
/////////////////////////////////////////////////////////////////////////////

(
Pdef(\p16,

 Pbind(*[
    instrument: \16,
         \dur,Pseq([1,5,8],inf).trace,
	\freq16, Pexprand(1,20000,inf).trace,
	\harm16, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\pharm4b).pause
Pdef(\pharm4b).resume
////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\p17,

 Pbind(*[
    instrument: \17,
       \dur,Pseq([1,5,8],inf).trace,
	\freq17, Pexprand(1,20000,inf).trace,
	\harm17, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\pharm4c).pause
Pdef(\pharm4c).resume
////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\p18,

 Pbind(*[
    instrument: \18,
    \dur,Pseq([1,5,8],inf).trace,
	\freq18, Pexprand(1,20000,inf).trace,
	\harm18, Pexprand(1,8,inf).trace
])
).play(quant:1)
)

Pdef(\pharm4d).pause
Pdef(\pharm4d).resume

//////////////////////////////////////////////task///////////////////////////////////////////////////////

///////////////////////////////////////////////////harm5/////////////////////////////////////////////////
(
Tdef(\harm5,
      {
		1.do({((
Pdef(\pG,

 Pbind(*[
    instrument: \G,
         \dur,Pseq([5,4,3,2,3,4,5],inf).trace,
		\cutoffG, Pseq([2,20,200,2000,200,20,2],inf).trace
])
).play(quant:1)
)); 0.yield});

		1.do({((
Pdef(\p1,

 Pbind(*[
    instrument: \1,
        \dur,Pseq([7.9,7.9],inf).trace,
		\freq1, Pseq([0.2,0.3],inf).trace,
					\freqq1, Pseq([0.4,0.5],inf).trace,
	\harm1, Pexprand(1,8.5,inf).trace
])
).play(quant:1)
)); 0.yield});

        1.do({((
 Pdef(\p2,

 Pbind(*[
    instrument: \2,
\dur,Pseq([7.9,7.9],inf).trace,
	\freq2, Pseq([0.4,0.6],inf).trace,
					\freqq2, Pseq([0.8,1],inf).trace,
	\harm2, Pexprand(2,8.5,inf).trace
])
).play(quant:1)
)); 0.yield});

        1.do({((
Pdef(\p3,

 Pbind(*[
    instrument: \3,
       \dur,Pseq([7.9,7.9],inf).trace,
	\freq3, Pseq([0.6,0.9],inf).trace,
					\freqq3, Pseq([1.2,1.5],inf).trace,
	\harm3, Pexprand(3,8.5,inf).trace
])
).play(quant:1)
)); 0.yield});

        1.do({((
Pdef(\p4,

 Pbind(*[
    instrument: \4,
       \dur,Pseq([7.9,7.9],inf).trace,
	\freq4, Pseq([1,1.5],inf).trace,
					\freqq4, Pseq([2,2.5],inf).trace,
	\harm4, Pexprand(4,8.5,inf).trace
])
).play(quant:1)
)); 0.yield});
		 1.do({((
Pdef(\p5,

 Pbind(*[
    instrument: \5,
       \dur,Pseq([7.9,7.9],inf).trace,
	\freq5, Pseq([1.6,2.4],inf).trace,
					\freqq5, Pseq([3.2,4],inf).trace,
	\harm5, Pexprand(5,8.5,inf).trace
])
).play(quant:1)
)); 0.yield});
		 1.do({((
Pdef(\p6,

 Pbind(*[
    instrument: \6,
       \dur,Pseq([7.9,7.9],inf).trace,
	\freq6, Pseq([2.6,3.9],inf).trace,
					\freqq6, Pseq([5.2,6.5],inf).trace,
	\harm6, Pexprand(6,8.5,inf).trace
])
).play(quant:1)
)); 0.yield});
		 1.do({((
Pdef(\p7,

 Pbind(*[
    instrument: \7,
       \dur,Pseq([7.9,7.9],inf).trace,
	\freq7, Pseq([4.2,6.3],inf).trace,
					\freqq7, Pseq([8.4,10.5],inf).trace,
	\harm7, Pexprand(7,8.5,inf).trace
])
).play(quant:1)
)); 0.yield});
		 1.do({((
Pdef(\p8,

 Pbind(*[
    instrument: \8,
       \dur,Pseq([7.9,7.9],inf).trace,
	\freq8, Pseq([6.8,10.2],inf).trace,
					\freqq8, Pseq([13.6,17],inf).trace,
	\harm8, Pexprand(8,8.5,inf).trace
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




////////////////////////////////////////////////////////////////////////////////////////////////////
(
Tdef(\task,
      {
		1.do({(Tdef(\harm4).play); 3.yield});

        1.do({(Tdef(\harm2).play); 3.yield});

        1.do({(Tdef(\harm2).play); 5.yield});

        1.do({(Tdef(\harm1).play); 5.yield});

		1.do({(Tdef(\harm3).play); 0.1.yield});
		1.do({(Tdef(\harm3).play); 0.1.yield});

      }
)
)

Tdef(\task).play
Tdef(\task).stop
Tdef(\task).pause
Tdef(\task).reset
