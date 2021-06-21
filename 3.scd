s.options.numOutputBusChannels=2;

(
SynthDef(\333,{
	arg az,el,attack,decay,f,p,a;

	    var audio,sig,env,freq,pha,ml;

	env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack,0.3,0.3,decay]),gate:1, doneAction:2);
	freq= SinOsc.ar(f*100);
	pha= SinOsc.ar(p*100,mul:freq);
	ml=SinOsc.ar(freq,mul:pha);

	sig=SinOsc.ar(freq:freq,phase:pha,mul:ml);

	#w,x,y,z=PanB.ar(sig,LFSaw.ar(az),FSinOsc.ar(el), 0.3);
     audio=DecodeB2.ar(2, w, x, y, 0.5);
     Out.ar(0,audio*env*100);
}).add
)




(
Tdef(\pattern3,
		{1.do({((

Pdef(\p_333,

 Pbind(*[
    instrument: \333,
				\dur,Pseq([1,0.5,2,2,1,0.5,1,0.5,2,2,1,0.5],150),
				\f,Pseq([1,3,2,4,3,2,1,3,2,1,4],150),
		        \p,Pseq([1,3,2,4,3,2,1,3,2,1,4],150),
		        \a,Pseq([1,3,2,4,3,2,1,3,2,1,4],150),
		\az,Pexprand(1,1/4,150),
		\el,Pexprand(1,1/4,150),
				\decay,Pseq([2,1,3,3,2,1,2,1,3,3,2,1],150).trace,
				\attack,Pexprand(0.01,0.1,150).trace
])

).play(quant:1)
));0.yield});

		}
	)
	)

	Tdef(\pattern3).play
Tdef(\pattern3).stop
Tdef(\pattern3).pause
Tdef(\pattern3).reset

	