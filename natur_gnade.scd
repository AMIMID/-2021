
s.options.numOutputBusChannels=4
a=Synth.new(\natur_gnade)


(
SynthDef(\natur_gnade,
	{
		arg f,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,attack,decay,pan;
		var	sig,audio,env;
env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);

	sig= SinOsc.ar(f,SinOsc.ar(f1),SinOsc.ar(f1*1/2))
		+
	SinOsc.ar(f,SinOsc.ar(f3),SinOsc.ar(f3*1/2))
		+
	SinOsc.ar(f,SinOsc.ar(f5),SinOsc.ar(f5*1/2))
		+
		SinOsc.ar(f,SinOsc.ar(f7),SinOsc.ar(f7*1/2))
		+
	SinOsc.ar(f,SinOsc.ar(f9),SinOsc.ar(f9*1/2))
		+
	SinOsc.ar(f,SinOsc.ar(f11),SinOsc.ar(f11*1/2));



		#w,x,y,z=PanB.ar(sig,pan,0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(0,audio*env);
}).add
)

(
Tdef(\patterngn,
      {


		1.do({((

Pdef(\n_g,

 Pbind(*[
    instrument: \natur_gnade,
        \dur,Pexprand(0.4,4,inf),
					\f,Pexprand(10,40,inf),
		\f1,Prand([100,200,300,400],inf),
		\f2,Prand([100,200,300,400],inf),
		\f3,Prand([100,200,300,400],inf),
		\f4,Prand([100,200,300,400],inf),
		\f5,Prand([100,200,300,400],inf),
		\f6,Prand([100,200,300,400],inf),
		\f7,Prand([100,200,300,400],inf),
		\f8,Prand([100,200,300,400],inf),
		\f9,Prand([100,200,300,400],inf),
		\f10,Prand([100,200,300,400],inf),
		\f11,Prand([100,200,300,400],inf),
		\f12,Prand([100,200,300,400],inf),
		\decay,Pexprand(1,4,inf).trace,
					\attack,Pexprand(0.01,0.1,inf).trace,
					\pan,Pexprand(1/4,1);
])

).play(quant:1)
)); 0.yield});

	}
)
)

		Tdef(\patterngn).play
Tdef(\patterngn).stop
Tdef(\patterngn).pause
Tdef(\patterngn).reset