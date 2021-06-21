(
(
SynthDef(\c1,
	{   arg azimuth,decay,mul;
		var audio,sig,env;
		mul=mul*4;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = SinOsc.ar(mul,mul:(SinOsc.ar(1*1,mul:1)
	+
	SinOsc.ar(2*1,mul:1)
	+
	SinOsc.ar(3*1,mul:1)
	+
	SinOsc.ar(4*1,mul:1)
	+
	SinOsc.ar(5*1,mul:1)
	+
	SinOsc.ar(6*1,mul:1)
	+
	SinOsc.ar(7*1,mul:1)
	+
	SinOsc.ar(8*1,mul:1)
	+
	SinOsc.ar(9*1,mul:1)
	+
	SinOsc.ar(10*1,mul:1)
));

		audio= PanAz.ar(2,sig,azimuth);
	Out.ar(0,audio*env);
}
).add;
);
(
Tdef(\pattern_c,
      {
1.do({((

a= Pdef(\p_c1,
 Pbind(*[
    instrument: \c1,
					\dur,1.76,
					\decay,1.76,
					\mul,Pseq([49.00,87.31,155.56,58.27,146.83,130.81,116.54,73.42,98.00,130.81,49.00,116.54,58.27,110.00,116.54,73.42,98.00,49.00,87.31,155.56,58.27,146.83,130.81,116.54,73.42,98.00,130.81,49.00,116.54,58.27,110.00,116.54,73.42,130.81],inf),
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
	)); 0.yield});

	}
)
);
)
TempoClock.default.tempo =8;
(
Tdef(\pattern_c).play;
//s.record(numChannels:2);
)