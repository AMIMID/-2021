//////////////////////////////////////////SYNTHDEFS1//////////////////////////////////////////////////////////
(
SynthDef(\polarity,
	{
		var audio;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 0.3, releaseTime: 1.2, curve: -4),gate:1, doneAction:2);

		audio =  Blip.ar(246,Line.ar(2,5,1.5)).wrap(0.01,0.1);

		Out.ar(1,audio * env);
}).add
)

d =  Synth(\polarity)
////////////////////////////////////////////////////////////////////////////////////////////////////////////

(
SynthDef(\throat,
	{
		var audio1;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 0.3, releaseTime: 2.7 , curve: -4),gate:1, doneAction:2);

		audio1 =  Blip.ar(155,Line.kr(3,6,3));


		Out.ar(0,audio1 * env);
}).add
)
g = Synth(\throat)
///////////////////////////////////////////////////////////////////////////////////////////////////////////

(
SynthDef(\eye,
	{
		var audio2;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 1.3, releaseTime: 1.7, curve: -4),gate:1, doneAction:2);

		audio2 =  Blip.ar(246,Line.kr(1,4,3));


		Out.ar(1,audio2 * env);
}).add
)
b = Synth(\eye)

///////////////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\polarity2,
	{
		var audio3;
	    var env;

		env = EnvGen.kr(Env.linen(attackTime: 0.3, releaseTime: 2.7, curve: -4),gate:1, doneAction:2);

		audio3 =  Blip.ar(1174,Line.kr(4,8,3)).clip(0.5,2);


		Out.ar(0,audio3 * env);
}).add
)
j = Synth(\polarity2)
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
.range(moon_orb*1pi,0)

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
(SynthDef(\crackle,
	{
		var audiot;
		var env;
		env = EnvGen.kr(Env.linen(attackTime: 2, releaseTime: 8, curve: -4),gate:1, doneAction:2);
		audiot = Crackle.ar(Line.kr(1.0, 2.0, 3), 0.5, 0.5) ;

		Out.ar(0,audiot*env);
}).add
);
(
Pdef(\cracklee,

 Pbind(*[
    instrument: \crackle,
        dur:  10,

		audio: Pwhite(1,100,1)
])
).play(quant:1)
)
///////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////PATTERNS1////////////////////////////////////////////

s.scope
(
Pdef(\phase1a,

 Pbind(*[
    instrument: \polarity,
        dur:  5,

		audio: Pwhite(1,100,inf)
])
).play(quant:1)
)

Pdef(\phase1a).pause
Pdef(\phase1a).resume
/////////////////////////////////////////////////////////////////////////////

(
Pdef(\phase1b,

 Pbind(*[
    instrument: \throat,
        dur:  5,
		audio1: Pwhite(1,50,inf)
])
).play(quant:1)
)

Pdef(\phase1b).pause
Pdef(\phase1b).resume
////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\phase1c,

 Pbind(*[
    instrument: \eye,
        dur:  3,

		audio2: Pwhite(1,50,inf)
])
).play(quant:1)
)

Pdef(\phase1c).pause
Pdef(\phase1c).resume
////////////////////////////////////////////////////////////////////////////////////////////////
(
Pdef(\phase1d,

 Pbind(*[
    instrument: \polarity2,
        dur:  5,

	audio3: Pwhite(1,50,inf)
])
).play(quant:1)
)

Pdef(\phase1d).pause
Pdef(\phase1d).resume
