s.options.numOutputBusChannels=8


(SynthDef(\ena,
	{   arg f1a,x,y,f2a,f3a,f1b,f2b,f3b,f1c,f2c,f3c,mul,decay,attack,azimuth,detune,
		     h1a,h1b,h1c,h2a,h2b,h2c;
		var sig1,sig2,sig3,env,audio;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig1=
		BLowShelf.ar(LFPar.ar(f1a*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(SinOsc.ar(f2a),h1a),Blip.ar(SinOsc.ar(f3a),h2a))* AmpComp.kr(f1a*mul, 110,1.1));

		    #w, x, y, z = PanB.ar(sig1, LFNoise1.kr(azimuth), 0, 0.3);
		audio= DecodeB2.ar(2, w, x, y, 0.5);


		Out.ar(0,audio*env);
}).add;
)

(
Tdef(\pattern_ena,
      {
		1.do({((

z= Pdef(\p_ena,

 Pbind(*[
    instrument: \ena,
					\dur,Pexprand(0.01,0.1,inf),
					\f1a,Pexprand(1,4,inf),
					\f2a,Pexprand(0.1,40,inf),
					\f3a,Pexprand(0.1,40,inf),
					\h1a,Pexprand(1,100,inf),
					\h2a,Pexprand(1,100,inf),
		\mul,Pexprand(20,10000,inf),
					\decay,Pexprand(1,8,inf),
					\attack,Pexprand(1,4,inf),
					\azimuth,Pexprand(0.1,2,inf).trace,
					\detune,Pexprand(0.1,1,inf).trace;
])

).play(quant:1)
)); 0.yield});
	}
)
)
s.plotTree
Tdef(\pattern_ena).play
Tdef(\pattern_ena).stop
Tdef(\pattern_ena).pause
Tdef(\pattern_ena).reset
z.stop
y.stop