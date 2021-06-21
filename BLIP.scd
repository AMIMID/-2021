



(
SynthDef(\blip1,
	{
	arg harm1,freq,bfreq,harm2;
	var audio1,audio2,env;
			env = EnvGen.kr(Env([0,1,1,0],[1,16,1]),gate:1, doneAction:2);
audio1= LFTri.ar(freq,3.1,add:Blip.ar(bfreq,harm1));
audio2= LFTri.ar(freq,0,add:Blip.ar(bfreq,harm2));
		Out.ar(1,audio1*env);
		Out.ar(0,audio2*env)
}).add;
)


(
Tdef(\BLIP,
      {

		1.do({((

Pdef(\b1,

 Pbind(*[
    instrument: \blip1,
        \dur,Pseq([20],inf),
					\harm1,Pexprand(1,20).trace,
					\freq,Pexprand(110,440),
					\bfreq,Pexprand(110,440),
					\harm2,Pexprand(1,20).trace
])
).play(quant:1)

)); 0.yield});

	}
)
)

Tdef(\BLIP).play
Tdef(\BLIP).stop
Tdef(\BLIP).pause
Tdef(\BLIP).reset