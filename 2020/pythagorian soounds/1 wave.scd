



(
{
	(
		Mix.new(
			[SinOsc.ar(freq:1*220,mul:1,phase:pi),SinOsc.ar(freq:2*220,mul:1/2,phase:pi),SinOsc.ar(freq:3/2*220,mul:2/3,phase:pi),SinOsc.ar(freq:4/3*220,mul:3/4,phase:pi)]
		)
	)!2
	}.play
)

({
	SinOsc.ar(freq:1*440,mul:1,phase:pi)
	+
	SinOsc.ar(freq:2*440,mul:1/2,phase:pi)
	+
	SinOsc.ar(freq:3/2*440,mul:2/3,phase:pi)
	+
	SinOsc.ar(freq:4/3*440,mul:3/4,phase:pi)
}.play

)


([1,2,3].collect{arg item; item.postln; {SinOsc.ar(440,mul:0.5)}.play;}).postln

(
SynthDef.new(\pwave, {

	arg freq = 200, gain = 0.1, decay = 40;
	var temp, sum, a,env;
	a = 1;
	sum = 0;
	 [1,2,3,4].do{
		arg count;
		temp = SinOsc.ar((freq) * ((count + a)/count),phase:pi,mul:gain * (count/(count + a)));
		env = EnvGen.ar(Env.linen(0.1,0,decay*((count + a)/count),curve:[-3,0,-3]));
		sum = sum + (temp*env);
	};
	//sum = sum + (SinOsc.ar(freq,phase:pi,mul:gain) * ( EnvGen.ar(Env.linen(0.1,0,decay*16,curve:[-3,0,-3]))));
	Out.ar(0,sum);
}).add;
)

(
[100*2,100*3/2,100*4/3].do{ arg item; Synth.new(\pwave,[\freq, item])};
x = Synth.new(\pwave);
({
	SinOsc.ar(freq:1*440,mul:1*0.1,phase:pi)
	+
	SinOsc.ar(freq:2*440,mul:1/2*0.1,phase:pi)
	+
	SinOsc.ar(freq:3/2*440,mul:2/3*0.1,phase:pi)
	+
	SinOsc.ar(freq:4/3*440,mul:3/4*0.1,phase:pi)
}.play

)
)

(
SynthDef.new(\pwave, {

	arg freq = 200, gain = 0.1, decay = 5;
	var temp, sum, a,env;
	a = 5;
	sum = 0;
	 [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].do{
		arg count;
		temp = SinOsc.ar((freq) * ((count + a)/count),phase:pi,mul:gain * (count/(count + a)));
		env = EnvGen.ar(Env.linen(0.1,0,decay*((count + a)/count),curve:[-3,0,-3]));
		sum = sum + (temp*env);
	};
	//sum = sum + (SinOsc.ar(freq,phase:pi,mul:gain) * ( EnvGen.ar(Env.linen(0.1,0,decay*16,curve:[-3,0,-3]))));
	Out.ar(0,sum);
}).add;
)





