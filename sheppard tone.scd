
(
(SynthDef(\shep1,{
	arg amp, freq;
	var sig,env;
	env = env=EnvGen.kr(Env.perc(0.01,1/2),gate:1, doneAction:2);
	sig = SinOsc.ar(freq);
	sig = sig*amp;
	Out.ar(0, sig*env);
}).add
);
(SynthDef(\shep2,{
	arg amp, freq;
	var sig,env;
	env = env=EnvGen.kr(Env.perc(0.01,1/2),gate:1, doneAction:2);
	sig = SinOsc.ar(freq);
	sig = sig*amp;
	Out.ar(0, sig*env);
}).add
);
(SynthDef(\shep3,{
	arg amp, freq;
	var sig,env;
	env = env=EnvGen.kr(Env.perc(0.01,1/2),gate:1, doneAction:2);
	sig = SinOsc.ar(freq);
	sig = sig*amp;
	Out.ar(0, sig*env);
}).add
);
)

(
(

a= Pdef(\p_shep1,
 Pbind(*[
    instrument: \shep1,
					\dur,0.51,
					\freq, Pseq([65.41,69.30,69.30,77.78,77.78,87.31,87.31,98.00,98.00,103.83,103.83,116.54,116.54,130.81], inf),
	\amp,Pseq([0.09,0.16,0.23,0.3,0.37,0.44,0.51,0.58,0.65,0.72,0.79,0.86,0.93,1], inf)	;

])

).play(quant:1)
);
(

b= Pdef(\p_shep2,
 Pbind(*[
    instrument: \shep2,
		\dur,0.51,
					 \freq, Pseq([130.81,138.59,138.59,155.56,155.56,174.61,174.61,196.00,196.00,207.65,207.65,233.08,233.08,261.63], inf),
	\amp,Pseq([1], inf)	;

])

).play(quant:1)
);
(

c= Pdef(\p_shep3,
 Pbind(*[
    instrument: \shep3,
		\dur,0.51,
					 \freq, Pseq([261.63,277.18,277.18,311.13,311.13,349.23,349.23,392.00,392.00,415.30,415.30,466.16,466.16,523.25], inf),
	\amp,Pseq([1,0.93,0.86,0.79,0.72,0.65,0.58,0.51,0.44,0.37,0.3,0.23,0.16,0.09], inf)	;

])

).play(quant:1)
);


)
//////////////////////////////////////////////////////////////
(
(SynthDef(\shep1,{
	arg amp=1;
	var sig,env;
	env=EnvGen.kr(Env.new([0,1,1,0],[0,6,0]),gate:1,doneAction:2);
	sig = SinOsc.ar(XLine.kr(65.41,130.81,6),mul:XLine.kr(0.09,1,6));
	sig = sig*amp;
	Out.ar(0, sig*env);
}).add
);
(SynthDef(\shep2,{
	arg amp=1;
	var sig,env;
	env=EnvGen.kr(Env.new([0,1,1,0],[0,6,0]),gate:1,doneAction:2);
	sig = SinOsc.ar(XLine.kr(130.81,261.63,6));
	sig = sig*amp;
	Out.ar(0, sig*env);
}).add
);
(SynthDef(\shep3,{
	arg amp=1;
	var sig,env;
	env=EnvGen.kr(Env.new([0,1,1,0],[0,6,0]),gate:1,doneAction:2);
	sig = SinOsc.ar(XLine.kr(261.63,523.25,6),mul:XLine.kr(1,0.09,6));
	sig = sig*amp;
	Out.ar(0, sig*env);
}).add
);
)

(
(

a= Pdef(\p_shep1,
 Pbind(*[
    instrument: \shep1,
					\dur,6;

])

).play(quant:1)
);
(

b= Pdef(\p_shep2,
 Pbind(*[
    instrument: \shep2,
		\dur,6;

])

).play(quant:1)
);
(

c= Pdef(\p_shep3,
 Pbind(*[
    instrument: \shep3,
		\dur,6;
])

).play(quant:1)
);


)