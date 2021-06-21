s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=4

////////////////////////////////////////////////////////////
(
s.waitForBoot({
   a = Scale.phrygian;

    p = Pbind(

 \degree, Pseq([0, 4, 5, 8, 1, 2, 5, 8, 3, 7, 6, 5, 4, 3, 2, 1], inf),
        \dur, 0.25
    );

    q = p.play;
})
)

\degree, Prand([0,1,2,3,4,5,6,7,8],inf),
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

(
(SynthDef(\phrygian1,
	{   arg freq,attack,decay;
		var sig1,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig1=
		SinOsc.ar(freq,mul:0.1);

		Out.ar(0,sig1*env);
}).add;
);
(SynthDef(\phrygian2,
	{   arg freq,attack,decay;
		var sig1,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig1=
		SinOsc.ar(freq,mul:0.1);

		Out.ar(1,sig1*env);
}).add;
)
)

(
(

y= Pdef(\p_phrygian1,
 Pbind(*[
    instrument: \phrygian1,
					\dur,Pexprand(0.26,4,inf),
					\degree, Prand([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], inf),
		            \scale, Scale.phrygian,
					\decay,Pexprand(0.25,4,inf),
					\attack,0.01;
])

).play(quant:1)
);
(

y= Pdef(\p_phrygian2,
 Pbind(*[
    instrument: \phrygian2,
		               \dur,Pexprand(0.26,4,inf),
					 \degree, Prand([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], inf),
		            \scale, Scale.phrygian,
					\decay,Pexprand(0.25,4,inf),
					\attack,0.01;
])

).play(quant:1)
)
)

///////////////////////////////////////////////////////////////////////////////////////(
(
(SynthDef(\phrygian1,
	{   arg freq,attack,decay;
		var sig1,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig1=
		SinOsc.ar(freq,mul:0.1)*AmpComp.kr(freq,261.63);

		Out.ar(0,sig1*env);
}).add;
);
(SynthDef(\phrygian2,
	{   arg freq,attack,decay;
		var sig1,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig1=
		SinOsc.ar(freq,mul:0.1)*AmpComp.kr(freq,261.63);

		Out.ar(1,sig1*env);
}).add;
);
(SynthDef(\phrygian3,
	{   arg freq,attack,decay;
		var sig1,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig1=
		SinOsc.ar(freq,mul:0.1)*AmpComp.kr(freq,261.63);

		Out.ar(2,sig1*env);
}).add;
);
(SynthDef(\phrygian4,
	{   arg freq,attack,decay;
		var sig1,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig1=
		SinOsc.ar(freq,mul:0.1)*AmpComp.kr(freq,261.63);

		Out.ar(3,sig1*env);
}).add;
)
)

(
(

y= Pdef(\p_phrygian1,
 Pbind(*[
    instrument: \phrygian1,
					\dur,Pexprand(0.26,4,inf),
					\freq, Prand([261.63,277.18,311.13,349.23,392.00,415.30,466.16,523.25,554.37,622.25,698.46,783.99,830.61,932.33], inf),
				\decay,Pexprand(0.25,4,inf),
					\attack,0.01,
])

).play(quant:1)
);
(

y= Pdef(\p_phrygian2,
 Pbind(*[
    instrument: \phrygian2,
		\dur,Pexprand(0.26,4,inf),
					 \freq, Prand([261.63,277.18,311.13,349.23,392.00,415.30,466.16,523.25,554.37,622.25,698.46,783.99,830.61,932.33], inf),
					\decay,Pexprand(0.25,4,inf),
					\attack,0.01,
])

).play(quant:1)
);
(

y= Pdef(\p_phrygian3,
 Pbind(*[
    instrument: \phrygian3,
		\dur,Pexprand(0.26,4,inf),
					 \freq, Prand([261.63,277.18,311.13,349.23,392.00,415.30,466.16,523.25,554.37,622.25,698.46,783.99,830.61,932.33], inf),
					\decay,Pexprand(0.25,4,inf),
					\attack,0.01,
])

).play(quant:1)
);
(

y= Pdef(\p_phrygian4,
 Pbind(*[
    instrument: \phrygian4,
		\dur,Pexprand(0.26,4,inf),
					 \freq, Prand([261.63,277.18,311.13,349.23,392.00,415.30,466.16,523.25,554.37,622.25,698.46,783.99,830.61,932.33], inf),
					\decay,Pexprand(0.25,4,inf),
					\attack,0.01,
])

).play(quant:1)
)
)