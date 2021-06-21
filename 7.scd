s.options.numOutputBusChannels=4
(
(
SynthDef(\1,
	{
		arg pan,mul,x1,x2,x3,y1,y2,y3,z1,z2,z3,decay1,attack1;
		var	audio,sig,env;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack1,0.3,0.3,decay1]),gate:1, doneAction:2);

		sig=
		SinOsc.ar(freq:SinOsc.ar(z1*5*mul,y1,x1/5),
			phase:SinOsc.ar(z2*5*mul,y2,x2/5),
			mul:SinOsc.ar(z2*5*mul,y2,x2/5))
		+

		SinOsc.ar(freq:SinOsc.ar(z1*3*mul,y1,x1/3),
			phase:SinOsc.ar(z2*3*mul,y2,x2/3),
			mul:SinOsc.ar(z2*3*mul,y2,x2/3))
		+
		SinOsc.ar(freq:SinOsc.ar(z1*2*mul,y1,x1/2),
			phase:SinOsc.ar(z2*2*mul,y2,x2/2),
			mul:SinOsc.ar(z2*2*mul,y2,x2/2))
		+
		SinOsc.ar(freq:SinOsc.ar(z1*mul,y1,x1),
			phase:SinOsc.ar(z2*mul,y2,x2),
			mul:SinOsc.ar(z2*mul,y2,x2));

		#w,x,y,z=PanB.ar(sig,pan,0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(0,audio*env);
}).add
);

(
SynthDef(\2,
	{
		arg pan2,mul2,x4,x5,x6,y4,y5,y6,z4,z5,z6,decay2,attack2;
		var	audio,sig,env;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack2,0.3,0.3,decay2]),gate:1, doneAction:2);

	  	sig=
	   SinOsc.ar(freq:SinOsc.ar(z4*10*mul2,y4,x4/10),
			phase:SinOsc.ar(z5*10*mul2,y5,x5/10),
			mul:SinOsc.ar(z6*10*mul2,y6,x6/10))
		+
		SinOsc.ar(freq:SinOsc.ar(z4*6*mul2,y4,x4/6),
			phase:SinOsc.ar(z5*6*mul2,y5,x5/6),
			mul:SinOsc.ar(z6*6*mul2,y6,x6/6))
		+
		SinOsc.ar(freq:SinOsc.ar(z4*4*mul2,y4,x4/4),
			phase:SinOsc.ar(z5*4*mul2,y5,x5/4),
			mul:SinOsc.ar(z6*4*mul2,y6,x6/4))
		+
		SinOsc.ar(freq:SinOsc.ar(z4*2*mul2,y4,x4/2),
			phase:SinOsc.ar(z5*2*mul2,y5,x5/2),
			mul:SinOsc.ar(z6*2*mul2,y6,x6/2));

		#w,x,y,z=PanB.ar(sig,pan2,0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(1,audio*env);
}).add
);


(
SynthDef(\3,
	{
		arg pan3,mul3,x7,x8,x9,y7,y8,y9,z7,z8,z9,decay3,attack3;
		var	audio,sig,env;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack3,0.3,0.3,decay3]),gate:1, doneAction:2);

	  	sig=
	   SinOsc.ar(freq:SinOsc.ar(z7*15*mul3,y9,x7/15),
			phase:SinOsc.ar(z8*15*mul3,y8,x8/15),
			mul:SinOsc.ar(z9*15*mul3,y7,x9/15))
		+
		  SinOsc.ar(freq:SinOsc.ar(z7*9*mul3,y9,x7/9),
			phase:SinOsc.ar(z8*9*mul3,y8,x8/9),
			mul:SinOsc.ar(z9*9*mul3,y7,x9/9))
		+
		  SinOsc.ar(freq:SinOsc.ar(z7*6*mul3,y9,x7/6),
			phase:SinOsc.ar(z8*6*mul3,y8,x8/6),
			mul:SinOsc.ar(z9*6*mul3,y7,x9/6))
		+
		  SinOsc.ar(freq:SinOsc.ar(z7*3*mul3,y9,x7/3),
			phase:SinOsc.ar(z8*3*mul3,y8,x8/3),
			mul:SinOsc.ar(z9*3*mul3,y7,x9/3));

		#w,x,y,z=PanB.ar(sig,pan3,0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(2,audio*env);
}).add
);
(
SynthDef(\4,
	{
		arg pan4,mul4,x10,x11,x12,y10,y11,y12,z10,z11,z12,decay4,attack4;
		var	audio,sig,env;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack4,0.3,0.3,decay4]),gate:1, doneAction:2);

	  	sig=
	   SinOsc.ar(freq:SinOsc.ar(z10*20*mul4,y10,x10/20),
			phase:SinOsc.ar(z11*20*mul4,y11,x11/20),
			mul:SinOsc.ar(z12*20*mul4,y12,x12/20))
		+
		   SinOsc.ar(freq:SinOsc.ar(z10*12*mul4,y10,x10/12),
			phase:SinOsc.ar(z11*12*mul4,y11,x11/12),
			mul:SinOsc.ar(z12*12*mul4,y12,x12/12))
		+
		   SinOsc.ar(freq:SinOsc.ar(z10*8*mul4,y10,x10/8),
			phase:SinOsc.ar(z11*8*mul4,y11,x11/8),
			mul:SinOsc.ar(z12*8*mul4,y12,x12/8))
		+
		   SinOsc.ar(freq:SinOsc.ar(z10*4*mul4,y10,x10/4),
			phase:SinOsc.ar(z11*4*mul4,y11,x11/4),
			mul:SinOsc.ar(z12*4*mul4,y12,x12/4));

		#w,x,y,z=PanB.ar(sig,pan4,0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(3,audio*env);
}).add
)
)

(
Tdef(\pattern1,
      {
		1.do({((

Pdef(\p_1,

 Pbind(*[
    instrument: \1,
        \dur,Pexprand(0.4,3.4,150),
		\x1,Pexprand(1,2,150),
		\x2,Pexprand(1,2,150),
		\x3,Pexprand(1,2,150),
		\y1,Pexprand(1pi,2pi,150),
		\y2,Pexprand(1pi,2pi,150),
		\y3,Pexprand(1pi,2pi,150),
		\z1,Pexprand(1,4,150),
		\z2,Pexprand(1,4,150),
		\z3,Pexprand(1,4,150),
		\pan,Pexprand(0.01,1,150).trace,
		\mul,Pexprand(20,100,150).trace,
		\decay1,Pexprand(1,4,150).trace,
					\attack1,Pexprand(0.01,0.1,150).trace
])

).play(quant:1)
)); 0.yield});

		1.do({((

Pdef(\p_2,

 Pbind(*[
    instrument: \2,
        \dur,Pexprand(0.4,3.4,150),
		\x4,Pexprand(1,2,150),
		\x5,Pexprand(1,2,150),
		\x6,Pexprand(1,2,150),
		\y4,Pexprand(1pi,2pi,150),
		\y5,Pexprand(1pi,2pi,150),
		\y6,Pexprand(1pi,2pi,150),
		\z4,Pexprand(1,4,150),
		\z5,Pexprand(1,4,150),
		\z6,Pexprand(1,4,150),
		\pan2,Pexprand(0.01,1,150).trace,
		\mul2,Pexprand(20,100,150).trace,
					\decay2,Pexprand(1,4,150).trace,
					\attack2,Pexprand(0.01,0.1,150).trace
])

).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_3,

 Pbind(*[
    instrument: \3,
        \dur,Pexprand(0.4,3.4,150),
		\x7,Pexprand(1,2,150),
		\x8,Pexprand(1,2,150),
		\x9,Pexprand(1,2,150),
		\y7,Pexprand(1pi,2pi,150),
		\y8,Pexprand(1pi,2pi,150),
		\y9,Pexprand(1pi,2pi,150),
		\z7,Pexprand(1,4,150),
		\z8,Pexprand(1,4,150),
		\z9,Pexprand(1,4,150),
		\pan3,Pexprand(0.01,1,150).trace,
		\mul3,Pexprand(20,100,150).trace,
					\decay3,Pexprand(1,4,150).trace,
					\attack3,Pexprand(0.01,0.1,150).trace
])

).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_4,

 Pbind(*[
    instrument: \4,
        \dur,Pexprand(0.4,3.4,150),
		\x10,Pexprand(1,2,150),
		\x11,Pexprand(1,2,150),
		\x12,Pexprand(1,2,150),
		\y10,Pexprand(1pi,2pi,150),
		\y11,Pexprand(1pi,2pi,150),
		\y12,Pexprand(1pi,2pi,150),
		\z10,Pexprand(1,4,150),
		\z11,Pexprand(1,4,150),
		\z12,Pexprand(1,4,150),
		\pan4,Pexprand(0.01,1,150).trace,
		\mul4,Pexprand(20,100,150).trace,
					\decay4,Pexprand(1,4,150).trace,
					\attack4,Pexprand(0.01,0.1,150).trace
])

).play(quant:1)
)); 1800.yield});

		}
)
)

Tdef(\pattern1).play
Tdef(\pattern1).stop
Tdef(\pattern1).pause
Tdef(\pattern1).reset