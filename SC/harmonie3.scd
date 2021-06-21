//////////////////////////////////////////SYNTHDEFS3//////////////////////////////////////////////////////////
(
SynthDef(\sharm3a,
	{
		var audio;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 3, releaseTime: 7, curve: -4),gate:1, doneAction:2);

		audio =  Blip.ar(Line.ar(123,155,2),Line.ar(1,15,10));


		Out.ar(1,audio * env);
}).add
)

a =  Synth(\sharm3a)
////////////////////////////////////////////////////////////////////////////////////////////////////////////

(
SynthDef(\sharm3b,
	{
		var audio1;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 3, releaseTime: 7 , curve: -4),gate:1, doneAction:2);

		audio1 =  Blip.ar(Line.ar(77,61,2),Line.kr(1,10,10));


		Out.ar(0,audio1 * env);
}).add
)
b = Synth(\sharm3b)
///////////////////////////////////////////////////////////////////////////////////////////////////////////

(
SynthDef(\sharm3c,
	{
		var audio2;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 1, releaseTime: 9, curve: -4),gate:1, doneAction:2);

		audio2 =  Blip.ar(155,Line.kr(1,4,10));


		Out.ar(1,audio2 * env);
}).add
)
b = Synth(\eye)

///////////////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\sharm3d,
	{
		var audio3;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 1, releaseTime: 7, curve: -4),gate:1, doneAction:2);

		audio3 =  Blip.ar(123,Line.kr(2,6,8));


		Out.ar(0,audio3 * env);
}).add
)
d = Synth(\sharm3d)
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\sharm3e,
	{
		var audio3;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 2, releaseTime: 6, curve: -4),gate:1, doneAction:2);

		audio3 =  Blip.ar(587,Line.kr(1,16,8));


		Out.ar(0,audio3 * env);
}).add
)
e = Synth(\sharm3e)
////////////////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\sharm3f,
	{
		var audio3;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 2, releaseTime: 6, curve: -4),gate:1, doneAction:2);

		audio3 =  Blip.ar(698,Line.kr(1,9,8));


		Out.ar(1,audio3 * env);
}).add
)
f = Synth(\sharm3f)
////////////////////////////////////////////////////PATTERNS3////////////////////////////////////////////

s.scope
(
Pdef(\pharm3a,

 Pbind(*[
    instrument: \sharm3a,
        dur:  8,

		audio: Pwhite(1,100,inf)
])
).play(quant:1)
)

Pdef(\pharm3a).pause
Pdef(\pharm3a).resume
/////////////////////////////////////////////////////////////////////////////

(
Pdef(\pharm3b,

 Pbind(*[
    instrument: \sharm3b,
        dur:  10,
		audio1: Pwhite(1,50,inf)
])
).play(quant:1)
)

Pdef(\pharm3b).pause
Pdef(\pharm3b).resume
////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\pharm3c,

 Pbind(*[
    instrument: \sharm3c,
        dur:  10,

		audio2: Pwhite(1,50,inf)
])
).play(quant:1)
)

Pdef(\pharm3c).pause
Pdef(\pharm3c).resume
////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\pharm3d,

 Pbind(*[
    instrument: \sharm3d,
        dur:  6,

	audio3: Pwhite(1,50,inf)
])
).play(quant:1)
)

Pdef(\pharm3d).pause
Pdef(\pharm3d).resume
//////////////////////////////////////////////////////////////////////////////////////////////////////(
(
Pdef(\pharm3e,

 Pbind(*[
    instrument: \sharm3e,
        dur:  10,

	audio3: Pwhite(1,50,4)
])
).play(quant:1)
)

Pdef(\pharm3e).pause
Pdef(\pharm3e).resume
///////////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\pharm3f,

 Pbind(*[
    instrument: \sharm3f,
        dur:  10,

	audio3: Pwhite(1,50,4)
])
).play(quant:1)
)

Pdef(\pharm3f).pause
Pdef(\pharm3f).resume
