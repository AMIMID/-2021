
(
(

(

(

(
SynthDef(\c1,
	{   arg azimuth,decay,mul,amp,time,time1,peak1,peak2,peak3,peak4,peak5,peak6,peak7,peak8,peak9,peak10;
		var audio,sig,env;
		mul=mul*2;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = SinOsc.ar(1*mul,mul:EnvGen.ar(Env.new([0,peak1,0],[1/1*time,1/1*time1],\sine)))
+
					SinOsc.ar(2*mul,mul:EnvGen.ar(Env.new([0,peak2,0],[1/2*time,1/2*time1],\sine)))
		+
					SinOsc.ar(3*mul,mul:EnvGen.ar(Env.new([0,peak3,0],[1/3*time,1/3*time1],\sine)))

	+
	SinOsc.ar(4*mul,mul:EnvGen.ar(Env.new([0,peak4,0],[1/4*time,1/4*time1],\sine)))

	+
	SinOsc.ar(5*mul,mul:EnvGen.ar(Env.new([0,peak5,0],[1/5*time,1/5*time1],\sine)))
			+
	SinOsc.ar(6*mul,mul:EnvGen.ar(Env.new([0,peak6,0],[1/6*time,1/6*time1],\sine)))
			+
	SinOsc.ar(7*mul,mul:EnvGen.ar(Env.new([0,peak7,0],[1/7*time,1/7*time1],\sine)))
			+
	SinOsc.ar(8*mul,mul:EnvGen.ar(Env.new([0,peak8,0],[1/8*time,1/8*time1],\sine)))
		;




		audio= PanAz.ar(2,sig,azimuth);
		Out.ar(0,audio);
}
).add;
);
(
SynthDef(\c2,
	{   arg azimuth,decay,mul,amp,time,time1,peak1,peak2,peak3,peak4,peak5,peak6,peak7,peak8,peak9,peak10;
		var audio,sig,env;
		mul=mul*2;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = SinOsc.ar(1*mul,mul:EnvGen.ar(Env.new([0,peak1,0],[1/1*time,1/1*time1],\sine)))
+
					SinOsc.ar(2*mul,mul:EnvGen.ar(Env.new([0,peak2,0],[1/2*time,1/2*time1],\sine)))
		+
					SinOsc.ar(3*mul,mul:EnvGen.ar(Env.new([0,peak3,0],[1/3*time,1/3*time1],\sine)))

	+
	SinOsc.ar(4*mul,mul:EnvGen.ar(Env.new([0,peak4,0],[1/4*time,1/4*time1],\sine)))

	+
	SinOsc.ar(5*mul,mul:EnvGen.ar(Env.new([0,peak5,0],[1/5*time,1/5*time1],\sine)))
			+
	SinOsc.ar(6*mul,mul:EnvGen.ar(Env.new([0,peak6,0],[1/6*time,1/6*time1],\sine)))
			+
	SinOsc.ar(7*mul,mul:EnvGen.ar(Env.new([0,peak7,0],[1/7*time,1/7*time1],\sine)))
			+
	SinOsc.ar(8*mul,mul:EnvGen.ar(Env.new([0,peak8,0],[1/8*time,1/8*time1],\sine)))
		;




		audio= PanAz.ar(2,sig,azimuth);
		Out.ar(0,audio);
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
					\dur,Prand([1/4],inf),
					\decay,2,
					\amp,Pseq([1,87.31,155.56,1,146.83,130.81,116.54,1,98.00,130.81,1,116.54,1,110.00,116.54,1,98.00,1,87.31,155.56,1,146.83,130.81,116.54,1,98.00,130.81,1,116.54,1,110.00,116.54,1,130.81],inf),
					\mul,Pseq([0,87.31,155.56,0,146.83,130.81,116.54,0,98.00,130.81,0,116.54,0,110.00,116.54,0,98.00,0,87.31,155.56,0,146.83,130.81,116.54,0,98.00,130.81,0,116.54,0,110.00,116.54,0,130.81],inf),
					\azimuth,Pseq([0.5,-0.5],inf),
					\peak1,Pseq([1/8,1/8],inf),
					\peak2,Pseq([1/8,1/8],inf),
					\peak3,Pseq([1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8],inf),
					\peak4,Pseq([1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/81/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8],inf),
					\peak5,Pseq([1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1,1/8,1/8,1,1/8,1/8],inf),
					\peak6,Pseq([1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1],inf),
					\peak7,Pseq([1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8],inf),
					\peak8,Pseq([1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/81/8,1/8,1/8,1/8,1/8,1/8,1/8],inf),
					\time,Prand([1,1/2,1/3,1/4],inf),
						\time1,Prand([1,1/2,1/3],inf)
					;
])

).play(quant:1)
	)); 0.yield});
		1.do({((

a= Pdef(\p_c2,
 Pbind(*[
    instrument: \c2,
					\dur,Prand([1/4],inf),
					\decay,2,
					\amp,Pseq([49.00,1,1,58.27,1,1,1,73.42,1,1,49.00,1,58.27,1,1,73.42,1,49.00,1,1,58.27,1,1,1,73.42,1,1,49.00,1,58.27,1,1,73.42,1],inf),
					\mul,Pseq([49.00,0,0,58.27,0,0,0,73.42,0,0,49.00,0,58.27,0,0,73.42,0,49.00,0,0,58.27,0,0,0,73.42,0,0,49.00,0,58.27,0,0,73.42,0],inf),
					\azimuth,Pseq([0.5,-0.5],inf),
					\peak1,Pseq([1/8,1/8],inf),
					\peak2,Pseq([1/8,1/8],inf),
					\peak3,Pseq([1/8,1/8],inf),
					\peak4,Pseq([1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8],inf),
					\peak5,Pseq([1/8,1/8],inf),
					\peak6,Pseq([1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8],inf),
					\peak7,Pseq([1/8,1/8],inf),
					\peak8,Pseq([1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1,1/8],inf),
					\time,Prand([1,1/2,1/3,1/4],inf),
						\time1,Prand([1,1/2,1/3],inf)
					;
])

).play(quant:1)
	)); 0.yield});



	}
)
);
)
TempoClock.default.tempo = 1;
(
Tdef(\pattern_c).play;
s.record(numChannels:2);
)