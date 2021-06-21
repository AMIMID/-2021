s.options.numOutputBusChannels=4


(SynthDef(\tria,
	{   arg f1a,f2a,f3a,f1b,f2b,f3b,f1c,f2c,f3c,f1d,f2d,f3d,mul,decay,attack,detune,
		     h1a,h1b,h1c,h1d,h2a,h2b,h2c,h2d;
		var sig1,sig2,sig3,sig4,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig1=
FreeVerb.ar(AllpassC.ar(
			SinOsc.ar(f1a*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2a,h1a),Blip.ar(f3a,h2a))* AmpComp.kr(f1a*mul,110,1.1)));
		sig2=
FreeVerb.ar(AllpassC.ar(
			SinOsc.ar(f1b*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2b,h1b),Blip.ar(f3b,h2b))* AmpComp.kr(f1b*mul,110,1.1)));
		sig3=
FreeVerb.ar(AllpassC.ar(
		SinOsc.ar(f1c*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2c,h1c),Blip.ar(f3c,h2c))* AmpComp.kr(f1c*mul,110,1.1)));
		sig4=
FreeVerb.ar(AllpassC.ar(
	SinOsc.ar(f1d*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2d,h1d),Blip.ar(f3d,h2d))* AmpComp.kr(f1d*mul,110,1.1)));

		Out.ar(0,sig1*env);
		Out.ar(1,sig2*env);
		Out.ar(2,sig3*env);
		Out.ar(3,sig4*env);
}).add;
)

(
Tdef(\pattern_tria,
      {
		1.do({((

y= Pdef(\p_tria,
 Pbind(*[
    instrument: \tria,
					\dur,Pexprand(0.1,2,inf),
					\f1a,Pexprand(1,4,inf).trace,
					\f2a,Pexprand(0.1,10,inf),
					\f3a,Pexprand(0.1,10,inf),
					\f1b,Pexprand(1,4,inf),
					\f2b,Pexprand(0.1,10,inf),
					\f3b,Pexprand(0.1,10,inf),
					\f1c,Pexprand(1,4,inf),
					\f2c,Pexprand(0.1,10,inf),
					\f3c,Pexprand(0.1,10,inf),
					\f1d,Pexprand(1,4,inf),
					\f2d,Pexprand(0.1,10,inf),
					\f3d,Pexprand(0.1,10,inf),
					\h1a,Pexprand(1,100,inf),
					\h2a,Pexprand(1,100,inf),
						\h1b,Pexprand(1,100,inf),
					\h2b,Pexprand(1,100,inf),
						\h1c,Pexprand(1,100,inf),
					\h2c,Pexprand(1,100,inf),
						\h1d,Pexprand(1,100,inf),
					\h2d,Pexprand(1,100,inf),
		\mul,Pexprand(80,10000,inf).trace,
					\decay,Pexprand(1,8,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,1,inf);
])

).play(quant:1)
)); 0.yield});
	}
)
)
Tdef(\pattern_tria).play
Tdef(\pattern_tria).stop
Tdef(\pattern_ena).pause
Tdef(\pattern_ena).reset
y.play
y.stop
z.stop
////////////////



SynthDef(\recordbuf_2, { |bufnum = 0, outbus = 0, amp = 0.5, loop = 0|
	var data = RecordBuf.ar(In.ar(0, 1), bufnum, 0, 1, 0, 1, loop);
	FreeSelfWhenDone.kr(data);
}).store;