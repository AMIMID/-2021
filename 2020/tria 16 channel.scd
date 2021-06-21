s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels=16

(
(SynthDef(\tria1,
	{   arg f1a,f2a,f3a,mul,decay,attack,detune,
		     h1a,h2a;
		var sig1,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig1=
		SinOsc.ar(f1a*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2a,h1a),Blip.ar(f3a,h2a))* AmpComp.kr(f1a*mul,100,1);

		Out.ar(0,sig1*env);
}).add;
);
(SynthDef(\tria2,
	{   arg f1b,f2b,f3b,mul,decay,attack,detune,
		     h1b,h2b;
		var sig2,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig2=
			SinOsc.ar(f1b*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2b,h1b),Blip.ar(f3b,h2b))* AmpComp.kr(f1b*mul,100,1);

		Out.ar(1,sig2*env);
}).add;
);
(SynthDef(\tria3,
	{   arg f1c,f2c,f3c,mul,decay,attack,detune,
		     h1c,h2c;
		var sig3,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig3=
		SinOsc.ar(f1c*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2c,h1c),Blip.ar(f3c,h2c))* AmpComp.kr(f1c*mul,100,1);

		Out.ar(2,sig3*env);
}).add;
);
(SynthDef(\tria4,
	{   arg f1d,f2d,f3d,mul,decay,attack,detune,
		     h1d,h2d;
		var sig4,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig4=
	SinOsc.ar(f1d*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2d,h1d),Blip.ar(f3d,h2d))* AmpComp.kr(f1d*mul,100,1);

		Out.ar(3,sig4*env);
}).add;
);
(SynthDef(\tria5,
	{   arg f1e,f2e,f3e,mul,decay,attack,detune,
		     h1e,h2e;
		var sig5,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig5=
		SinOsc.ar(f1e*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2e,h1e),Blip.ar(f3e,h2e))* AmpComp.kr(f1e*mul,100,1);

		Out.ar(4,sig5*env);
}).add;
);
(SynthDef(\tria6,
	{   arg f1f,f2f,f3f,mul,decay,attack,detune,
		     h1f,h2f;
		var sig6,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig6=
			SinOsc.ar(f1f*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2f,h1f),Blip.ar(f3f,h2f))* AmpComp.kr(f1f*mul,100,1);

		Out.ar(5,sig6*env);
}).add;
);
(SynthDef(\tria7,
	{   arg f1g,f2g,f3g,mul,decay,attack,detune,
		     h1g,h2g;
		var sig7,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig7=
		SinOsc.ar(f1g*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2g,h1g),Blip.ar(f3g,h2g))* AmpComp.kr(f1g*mul,100,1);

		Out.ar(6,sig7*env);
}).add;
);
(SynthDef(\tria8,
	{   arg f1k,f2k,f3k,mul,decay,attack,detune,
		     h1k,h2k;
		var sig8,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig8=
	SinOsc.ar(f1k*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2k,h1k),Blip.ar(f3k,h2k))* AmpComp.kr(f1k*mul,100,1);

		Out.ar(7,sig8*env);
}).add;
);
(SynthDef(\tria9,
	{   arg f1l,f2l,f3l,mul,decay,attack,detune,
		     h1l,h2l;
		var sig9,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig9=
		SinOsc.ar(f1l*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2l,h1l),Blip.ar(f3l,h2l))* AmpComp.kr(f1l*mul,100,1);

		Out.ar(8,sig9*env);
}).add;
);
(SynthDef(\tria10,
	{   arg f1m,f2m,f3m,mul,decay,attack,detune,
		     h1m,h2m;
		var sig10,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig10=
			SinOsc.ar(f1m*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2m,h1m),Blip.ar(f3m,h2m))* AmpComp.kr(f1m*mul,100,1);

		Out.ar(9,sig10*env);
}).add;
);
(SynthDef(\tria11,
	{   arg f1n,f2n,f3n,mul,decay,attack,detune,
		     h1n,h2n;
		var sig11,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig11=
		SinOsc.ar(f1n*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2n,h1n),Blip.ar(f3n,h2n))* AmpComp.kr(f1n*mul,100,1);

		Out.ar(10,sig11*env);
}).add;
);
(SynthDef(\tria12,
	{   arg f1o,f2o,f3o,mul,decay,attack,detune,
		     h1o,h2o;
		var sig12,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig12=
	SinOsc.ar(f1o*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2o,h1o),Blip.ar(f3o,h2o))* AmpComp.kr(f1o*mul,100,1);

		Out.ar(11,sig12*env);
}).add;
);
(SynthDef(\tria13,
	{   arg f1p,f2p,f3p,mul,decay,attack,detune,
		     h1p,h2p;
		var sig13,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig13=
		SinOsc.ar(f1p*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2p,h1p),Blip.ar(f3p,h2p))* AmpComp.kr(f1p*mul,100,1);

		Out.ar(12,sig13*env);
}).add;
);
(SynthDef(\tria14,
	{   arg f1q,f2q,f3q,mul,decay,attack,detune,
		     h1q,h2q;
		var sig14,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig14=
			SinOsc.ar(f1q*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2q,h1q),Blip.ar(f3q,h2q))* AmpComp.kr(f1q*mul,100,1);

		Out.ar(13,sig14*env);
}).add;
);
(SynthDef(\tria15,
	{   arg f1r,f2r,f3r,mul,decay,attack,detune,
		     h1r,h2r;
		var sig15,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig15=
		SinOsc.ar(f1r*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2r,h1r),Blip.ar(f3r,h2r))* AmpComp.kr(f1r*mul,100,1);

		Out.ar(14,sig15*env);
}).add;
);
(SynthDef(\tria16,
	{   arg f1s,f2s,f3s,mul,decay,attack,detune,
		     h1s,h2s;
		var sig16,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig16=
	SinOsc.ar(f1s*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2s,h1s),Blip.ar(f3s,h2s))* AmpComp.kr(f1s*mul,100,1);

		Out.ar(15,sig16*env);
}).add;
);
)

(
Tdef(\pattern_tria,
      {
		1.do({((

a= Pdef(\p_tria1,
 Pbind(*[
    instrument: \tria1,
					\dur,Pexprand(0.1,6,inf),
					\f1a,Pexprand(1,2,inf),
					\f2a,Pexprand(0.1,20,inf),
					\f3a,Pexprand(0.1,20,inf),
					\h1a,Pexprand(1,100,inf),
					\h2a,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

b= Pdef(\p_tria2,
 Pbind(*[
    instrument: \tria2,
					\dur,Pexprand(0.1,6,inf),
					\f1b,Pexprand(1,2,inf),
					\f2b,Pexprand(0.1,20,inf),
					\f3b,Pexprand(0.1,20,inf),
						\h1b,Pexprand(1,100,inf),
					\h2b,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

c= Pdef(\p_tria3,
 Pbind(*[
    instrument: \tria3,
					\dur,Pexprand(0.1,6,inf),
					\f1c,Pexprand(1,2,inf),
					\f2c,Pexprand(0.1,20,inf),
					\f3c,Pexprand(0.1,20,inf),
						\h1c,Pexprand(1,100,inf),
					\h2c,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

d= Pdef(\p_tria4,
 Pbind(*[
    instrument: \tria4,
					\dur,Pexprand(0.1,6,inf),
					\f1d,Pexprand(1,2,inf),
					\f2d,Pexprand(0.1,20,inf),
					\f3d,Pexprand(0.1,20,inf),
						\h1d,Pexprand(1,100,inf),
					\h2d,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});

		1.do({((

e= Pdef(\p_tria5,
 Pbind(*[
    instrument: \tria5,
					\dur,Pexprand(0.1,6,inf),
					\f1e,Pexprand(1,2,inf),
					\f2e,Pexprand(0.1,20,inf),
					\f3e,Pexprand(0.1,20,inf),
					\h1e,Pexprand(1,100,inf),
					\h2e,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

f= Pdef(\p_tria6,
 Pbind(*[
    instrument: \tria6,
					\dur,Pexprand(0.1,6,inf),
					\f1f,Pexprand(1,2,inf),
					\f2f,Pexprand(0.1,20,inf),
					\f3f,Pexprand(0.1,20,inf),
						\h1f,Pexprand(1,100,inf),
					\h2f,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

g= Pdef(\p_tria7,
 Pbind(*[
    instrument: \tria7,
					\dur,Pexprand(0.1,6,inf),
					\f1g,Pexprand(1,2,inf),
					\f2g,Pexprand(0.1,20,inf),
					\f3g,Pexprand(0.1,20,inf),
						\h1g,Pexprand(1,100,inf),
					\h2g,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

k= Pdef(\p_tria8,
 Pbind(*[
    instrument: \tria8,
					\dur,Pexprand(0.1,6,inf),
					\f1k,Pexprand(1,2,inf),
					\f2k,Pexprand(0.1,20,inf),
					\f3k,Pexprand(0.1,20,inf),
						\h1k,Pexprand(1,100,inf),
					\h2k,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});

		1.do({((

l= Pdef(\p_tria9,
 Pbind(*[
    instrument: \tria9,
					\dur,Pexprand(0.1,6,inf),
					\f1l,Pexprand(1,2,inf),
					\f2l,Pexprand(0.1,20,inf),
					\f3l,Pexprand(0.1,20,inf),
					\h1l,Pexprand(1,100,inf),
					\h2l,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

m= Pdef(\p_tria10,
 Pbind(*[
    instrument: \tria10,
					\dur,Pexprand(0.1,6,inf),
					\f1m,Pexprand(1,2,inf),
					\f2m,Pexprand(0.1,20,inf),
					\f3m,Pexprand(0.1,20,inf),
						\h1m,Pexprand(1,100,inf),
					\h2m,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

n= Pdef(\p_tria11,
 Pbind(*[
    instrument: \tria11,
					\dur,Pexprand(0.1,6,inf),
					\f1n,Pexprand(1,2,inf),
					\f2n,Pexprand(0.1,20,inf),
					\f3n,Pexprand(0.1,20,inf),
						\h1n,Pexprand(1,100,inf),
					\h2n,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

y= Pdef(\p_tria12,
 Pbind(*[
    instrument: \tria12,
					\dur,Pexprand(0.1,6,inf),
					\f1o,Pexprand(1,2,inf),
					\f2o,Pexprand(0.1,20,inf),
					\f3o,Pexprand(0.1,20,inf),
						\h1o,Pexprand(1,100,inf),
					\h2o,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});

		1.do({((

p= Pdef(\p_tria13,
 Pbind(*[
    instrument: \tria13,
					\dur,Pexprand(0.1,6,inf),
					\f1p,Pexprand(1,2,inf),
					\f2p,Pexprand(0.1,20,inf),
					\f3p,Pexprand(0.1,20,inf),
					\h1p,Pexprand(1,100,inf),
					\h2p,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

q= Pdef(\p_tria14,
 Pbind(*[
    instrument: \tria14,
					\dur,Pexprand(0.1,6,inf),
					\f1q,Pexprand(1,2,inf),
					\f2q,Pexprand(0.1,20,inf),
					\f3q,Pexprand(0.1,20,inf),
						\h1q,Pexprand(1,100,inf),
					\h2q,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

r= Pdef(\p_tria15,
 Pbind(*[
    instrument: \tria15,
					\dur,Pexprand(0.1,6,inf),
					\f1r,Pexprand(1,2,inf),
					\f2r,Pexprand(0.1,20,inf),
					\f3r,Pexprand(0.1,20,inf),
						\h1r,Pexprand(1,100,inf),
					\h2r,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

z= Pdef(\p_tria16,
 Pbind(*[
    instrument: \tria16,
					\dur,Pexprand(0.1,6,inf),
					\f1s,Pexprand(1,2,inf),
					\f2s,Pexprand(0.1,20,inf),
					\f3s,Pexprand(0.1,20,inf),
						\h1s,Pexprand(1,100,inf),
					\h2s,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
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