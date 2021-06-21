s.boot
s.scope
//////////////////////////////////////////SYNTHDEFS4//////////////////////////////////////////////////////////
(
SynthDef(\sharm4a,
	{
		var audio;
	    var env;

		env = EnvGen.kr(Env.sine(4, 0.5));

		audio = Blip.ar(MouseX.kr(98,196),Line.ar(1,6,3));


		Out.ar(1,audio * env);
}).add
)

a =  Synth(\sharm4a)
////////////////////////////////////////////////////////////////////////////////////////////////////////////


(
SynthDef(\sharm4b,
	{
		var audio1;
	    var env;

		env = EnvGen.kr(Env.sine(3, 0.5));

		audio1 =  Blip.ar(MouseY.kr(196,440),Line.ar(1,5,3),mul:1);


		Out.ar(0,audio1 * env);
}).add
)
b = Synth(\sharm4b)
///////////////////////////////////////////////////////////////////////////////////////////////////////////
s.quit
(
SynthDef(\sharm4c,
	{
		var audio2;
	    var env;

		env = EnvGen.kr(Env.sine(6, 0.5));

			audio2 =  Blip.ar(98,Line.kr(1,6,6));


		Out.ar(0,audio2 * env);
}).add
)
b = Synth(\sharm4c)

///////////////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\sharm4d,
	{
		var audio3;
	    var env;

		env = EnvGen.kr(Env.sine(0.5, 0.5));

		audio3 =  Blip.ar(440,Line.kr(1,2,3));


		Out.ar(1,audio3 * env);
}).add
)
d = Synth(\sharm4d)
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\sharm4e,
	{
		var audio3;
	    var env;

		env = EnvGen.kr(Env.sine(4, 1));

		audio3 =  Blip.ar(98,Line.kr(1,5,3));


		Out.ar(1,audio3 * env);
}).add
)
e = Synth(\sharm4e)
////////////////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\sharm4f,
	{
		var audio3;
	    var env;

		env = EnvGen.kr(Env.sine(0.5, 0.5);

		audio3 =  Blip.ar(293.665,Line.kr(1,3,3));


		Out.ar(1,audio3 * env);
}).add
)
f = Synth(\sharm4f)
////////////////////////////////////////////////////PDEFS4////////////////////////////////////////////
(
Pdef(\pharm4a,

 Pbind(*[
    instrument: \sharm4a,
        dur:  3
])
).play(quant:0)
)
s.scope
Pdef(\pharm4a).pause
Pdef(\pharm4a).resume
/////////////////////////////////////////////////////////////////////////////

(
Pdef(\pharm4b,

 Pbind(*[
    instrument: \sharm4b,
        dur:  3
])
).play(quant:1)
)

Pdef(\pharm4b).pause
Pdef(\pharm4b).resume
////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\pharm4c,

 Pbind(*[
    instrument: \sharm4c,
        dur:  3
])
).play(quant:1)
)

Pdef(\pharm4c).pause
Pdef(\pharm4c).resume
////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\pharm4d,

 Pbind(*[
    instrument: \sharm4d,
        dur:  5,

	audio3: Pwhite(1,50,inf)
])
).play(quant:1)
)

Pdef(\pharm4d).pause
Pdef(\pharm4d).resume
//////////////////////////////////////////////////////////////////////////////////////////////////////(
(
Pdef(\pharm4e,

 Pbind(*[
    instrument: \sharm4e,
        dur:  5,

	audio3: Pwhite(1,50,inf)
])
).play(quant:1)
)

Pdef(\pharm4e).pause
Pdef(\pharm4e).resume
///////////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\pharm4f,

 Pbind(*[
    instrument: \sharm4f,
        dur:  5,

	audio3: Pwhite(1,50,inf)
])
).play(quant:1)
)

Pdef(\pharm4f).pause
Pdef(\pharm4f).resume
