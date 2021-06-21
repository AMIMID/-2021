s.freeAll
s.boot
s.meter
s.scope
s.freqscope
s.makeWindow

////////////////////////////////////////////Synthdefs////////////////////////////////
a = Synth(\8)
(
(
SynthDef(\1,
	{
		arg harm1, freq1, amp1 = 0.08;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(100,(Blip.ar(freq1,harm1)),amp1);

		Out.ar(0,audio * env);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\2,
	{
		arg harm2, freq2, amp2 = 0.08;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(200,(Blip.ar(freq2,harm2)),amp2);


		Out.ar(1,audio * env);
}).add
);
////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\3,
	{
		arg harm3, freq3, amp3 = 0.08;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(300,(Blip.ar(freq3,harm3)),amp3);


		Out.ar(2,audio * env);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\4,
	{
		arg harm4, freq4, amp4 = 0.08;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(400,(Blip.ar(freq4,harm4)),amp4);


		Out.ar(3,audio * env);
}).add
);
///////////////////////////////////////////////////////////////////////////////////////

(
SynthDef(\5,
	{
		arg harm5, freq5;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(500,(Blip.ar(freq5,harm5)));


		Out.ar(4,audio  * env * 0.02);
}).add
);
///////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\6,
	{
		arg harm6, freq6;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(600,(Blip.ar(freq6,harm6)));


		Out.ar(5,audio * env);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\7,
	{
		arg harm7, freq7;
        var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

    audio = SinOsc.ar(700,(Blip.ar(freq7,harm7)));


		Out.ar(6,audio * env * 0.02);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\8,
	{
		arg harm8, freq8;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

    audio = SinOsc.ar(800,(Blip.ar(freq8,harm8)));


		Out.ar(7,audio * env * 0.02);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\9,
	{
		arg harm9, freq9;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(900,(Blip.ar(freq9,harm9)));


		Out.ar(8,audio * env);
}).add
);
////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\10,
	{
		arg harm10, freq10;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(1000,(Blip.ar(freq10,harm10)));


		Out.ar(9,audio * env);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\11,
	{
		arg harm11, freq11;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(1100,(Blip.ar(freq11,harm11)));


		Out.ar(10,audio * env);
}).add
);
/////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\12,
	{
		arg harm12, freq12;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(1200,(Blip.ar(freq12,harm12)));


		Out.ar(11,audio * env);
}).add
);
//////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\13,
	{
		arg harm13, freq13;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(1300,(Blip.ar(freq13,harm13)));


		Out.ar(12,audio * env);
}).add
);
////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\14,
	{
		arg harm14, freq14;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(1400,(Blip.ar(freq14,harm14)));


		Out.ar(13,audio * env);
}).add
);
////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\15,
	{
		arg harm15, freq15;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio = SinOsc.ar(1500,(Blip.ar(freq15,harm15)));


		Out.ar(14,audio * env);
}).add
);
////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\16,
	{
		arg harm16, freq16;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(1600,(Blip.ar(freq16,harm16)));


		Out.ar(15,audio * env);
}).add
);
///////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\17,
	{
		arg harm17, freq17;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

			audio =  SinOsc.ar(1700,(Blip.ar(freq17,harm17)));


		Out.ar(16,audio * env);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\18,
	{
		arg harm18, freq18;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,1,0.6,0],[1,3,3,1]),gate:1, doneAction:2);

		audio =  SinOsc.ar(1800,(Blip.ar(freq18,harm18)));


		Out.ar(17,audio * env);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\G,
	{
	    arg cutoffG , ampG = 1;
		var env, audio;

		env = EnvGen.kr(Env.sine(18, 1),gate:1, doneAction:2);

    audio =  PanAz.ar(
        6,                 // numChans
        LPF.ar(GrayNoise.ar(0.4),cutoffG);,     // in
        LFSaw.kr(8), // pos
        0.5,            // level
        3            // width
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
         \dur,Pseq([9,9,9,9,9],inf).trace,
		\cutoffG, Pseq([2,20,200,2000,200],inf).trace
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
        \dur,Pseq([1,5,8],inf).trace,
	\freq1, Pexprand(1,20000,inf).trace,
	\harm1, Pexprand(1,8,inf).trace
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
\dur,Pseq([1,5,8],inf).trace,
	\freq2, Pexprand(1,20000,inf).trace,
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
       \dur,Pseq([1,5,8],inf).trace,
	\freq3, Pexprand(1,20000,inf).trace,
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
       \dur,Pseq([1,5,8],inf).trace,
	\freq4, Pexprand(1,20000,inf).trace,
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
		0.do({((
Pdef(\pG,

 Pbind(*[
    instrument: \G,
         \dur,Pseq([9,9,9,9,9],inf).trace,
		\cutoffG, Pseq([2,20,200,2000,200],inf).trace
])
).play(quant:1)
)); 0.yield});

		1.do({((
Pdef(\p1,

 Pbind(*[
    instrument: \1,
        \dur,Pseq([6,6,6,6,6,6,6,6],inf).trace,
					\freq1, Pseq([100,200,300,400,500,400,300,200],inf).trace,
					\harm1, Pseq([1,2,3,2,1,2,3,2],inf).trace
])
).play(quant:1)
)); 0.yield});

        1.do({((
Pdef(\p2,

 Pbind(*[
    instrument: \2,
\dur,Pseq([6,6,6,6,6,6,6,6],inf).trace,
					\freq2, Pseq([100,200,300,400,500,400,300,200],inf).trace,
					\harm2, Pseq([1,2,3,2,1,2,3,2],inf).trace
])
).play(quant:1)
)); 0.yield});

        1.do({((
Pdef(\p3,

 Pbind(*[
    instrument: \3,
       \dur,Pseq([6,6,6,6,6,6,6,6],inf).trace,
					\freq3, Pseq([100,200,300,400,500,400,300,200],inf).trace,
					\harm3, Pseq([1,2,3,2,1,2,3,2],inf).trace
])
).play(quant:1)
)); 0.yield});

        1.do({((
Pdef(\p4,

 Pbind(*[
    instrument: \4,
       \dur,Pseq([6,6,6,6,6,6,6,6],inf).trace,
					\freq4, Pseq([100,200,300,400,500,400,300,200],inf).trace,
					\harm4, Pseq([1,2,3,2,1,2,3,2],inf).trace
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
