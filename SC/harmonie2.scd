s.boot
(
SynthDef(\sharm2a,
	{
		var audio;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 0.5, releaseTime: 2.5, curve: -4),gate:1, doneAction:2);

		audio =  SinOsc.ar(61,Blip.ar(61,Line.ar(1,2,3),mul:3));


		Out.ar(0,audio*env);
}).add
)

d =  Synth(\sharm2a)
//////////////////////////////////////////////////////////////
s.quit
(
SynthDef(\sharm2b,
	{
		var audio1;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 2, releaseTime: 6 , curve: -4),gate:1, doneAction:2);

		audio1 =  SinOsc.ar(Line.ar(155,246,2),Blip.ar(61,Line.ar(1,36,8)));


		Out.ar(0,audio1 * env);
}).add
)
g = Synth(\sharm2b)
/////////////////////////////////////////////////////////////////////////////////////////////

(
SynthDef(\sharm2c,
	{

	    var env;
        var  audio2;
		var cutoff;

		env = EnvGen.kr(Env.linen(attackTime: 0.5, releaseTime: 9.5, curve: -4),gate:1, doneAction:2);

    cutoff = Line.kr(2,2000,10);
    audio2 = GrayNoise.ar(0.5);
    audio2 = LPF.ar(audio2,cutoff);


		Out.ar(0,audio2 * env);
}).add
)

b = Synth(\sharm2c)
j = Synth(\sharm2d)
///////////////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\sharm2d,
	{
		 var env;
        var  audio3;
		var cutoff;

		env = EnvGen.kr(Env.linen(attackTime: 5, releaseTime: 15, curve: -4),gate:1, doneAction:2);

    cutoff = Line.kr(200,20000,20);
    audio3 = PinkNoise.ar(0.5);
    audio3 = LPF.ar(audio3,cutoff);


		Out.ar(1,audio3 * env);
}).add
)
j = Synth(\sharm2d)
//////////////////////////////////////////////////////////////////////////////////////////////////////////////


s.scope
(
Pdef(\pharm2a,

 Pbind(*[
    instrument: \sharm2a,
        dur:  20,

		audio: Pwhite(1,20,inf)
])
).play(quant:1)
)

Pdef(\phase1a).pause
Pdef(\phase1a).resume
/////////////////////////////////////////////////////////////////////////////

(
Pdef(\pharm2b,

 Pbind(*[
    instrument: \sharm2b,
        dur:  8,

		audio1: Pwhite(1,100,inf)
])
).play(quant:1)
)

Pdef(\phase1b).pause
Pdef(\phase1a).resume
////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\pharm2c,

 Pbind(*[
    instrument: \sharm2c,
        dur:  12,

		audio2: Pwhite(1,1000,inf)
])
).play(quant:1)
)

Pdef(\phase1a).pause
Pdef(\phase1a).resume
////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\phaem2d,

 Pbind(*[
    instrument: \sharm2d,
        dur:  10,

	audio3: Pwhite(1,100,inf)
])
).play(quant:1)
)

Pdef(\phase1a).pause
Pdef(\phase1a).resume
///////////////////////////////////////////////////////Pdef 2////////////////////////////////////////////////
