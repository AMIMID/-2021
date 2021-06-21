
(
SynthDef(\33,
	{
			arg az,el,attack,decay,
	    x1,y1,z1,x2,y2,z2,x3,y3,z3;
		var f1,d1,f2,d2,f3,d3,audio,sig,env;
		d1=Complex(x1,y1).abs;f1=Complex(d1,z1).abs;
        d2=Complex(x2,y2).abs;f2=Complex(d2,z2).abs;
       d3=Complex(x3,y3).abs;f3=Complex(d3,z3).abs;
env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack,0.3,0.3,decay]),gate:1, doneAction:2);
sig= SinOsc.ar(freq:f1*100,phase:SinOsc.ar(f2*100),mul:SinOsc.ar(f3*100));

		#w,x,y,z=PanB.ar(sig,LFSaw.ar(az),FSinOsc.ar(el), 0.3);
     audio=DecodeB2.ar(3, w, x, y, 0.5);
     Out.ar(0,audio*env);
}).add
)


(Tdef(\pattern3c,
		{1.do({((

Pdef(\p_33,

 Pbind(*[
    instrument: \33,
				\dur,Pseq([1,0.5,2,2,1,0.5,1,0.5,2,2,1,0.5],150),
		\x1,Pseq([1,3,2,4],150),
		\y1,Pseq([1,2,3,4,3,2,1,1,2,3,4,3,2],150),
		\z1,Pseq([1,2,3,4,3,2,1,1,2,3,4,3,2],150),
		\x2,Pseq([1,3,2,4],150),
		\y2,Pseq([1,2,3,4,3,2,1,1,2,3,4,3,2],150),
		\z2,Pseq([1,2,3,4,3,2,1,1,2,3,4,3,2],150),
		\x3,Pseq([1,3,2,4],150),
		\y3,Pseq([1,2,3,4,3,2,1,1,2,3,4,3,2],150),
		\z3,Pseq([1,2,3,4,3,2,1,1,2,3,4,3,2],150),

		\az,Pexprand(1/4,1,150),
		\el,Pexprand(1/4,1,150),
				\decay,Pseq([2,1,3,3,2,1,2,1,3,3,2,1],150).trace,
				\attack,Pexprand(0.01,0.1,150).trace
])

).play(quant:1)
));0.yield});
		}
	)
	)

	Tdef(\pattern3c).play
Tdef(\pattern3c).stop
Tdef(\pattern3c).pause
Tdef(\pattern3c).reset
