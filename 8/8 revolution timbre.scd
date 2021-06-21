(

(
SynthDef(\c1,
	{   arg azimuth,decay,amp,time,peak1,peak2,peak3,peak4,peak5,peak6,peak7,peak8,peak9,peak10,peak11,peak12,peak13,peak14,peak15,peak16;
		var audio,sig,env,mul;
mul=4;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig =  SinOsc.ar(36.71*mul,mul:EnvGen.ar(Env.new([0,peak16,0],[1/36.71*time*100],\sine)),phase:SinOsc.ar(36.71*mul))
+
		SinOsc.ar(38.89*mul,mul:EnvGen.ar(Env.new([0,peak15,0],[1/38.89*time*100],\sine)),phase:SinOsc.ar(38.89*mul))
+
		SinOsc.ar(43.65*mul,mul:EnvGen.ar(Env.new(0,[peak14,0],[1/43.65*time*100],\sine)),phase:SinOsc.ar(43.65*mul))
+
		SinOsc.ar(49.00*mul,mul:EnvGen.ar(Env.new([0,peak1,0],[1/49.00*time*100],\sine)),phase:SinOsc.ar(49.00*mul))
+
		SinOsc.ar(55.00*mul,mul:EnvGen.ar(Env.new([0,peak2,0],[1/55.00*time*100],\sine)),phase:SinOsc.ar(55.00*mul))
		+
	SinOsc.ar(58.27*mul,mul:EnvGen.ar(Env.new([0,peak3,0],[1/58.27*time*100],\sine)),phase:SinOsc.ar(58.27*mul))

	+
	SinOsc.ar(65.41*mul,mul:EnvGen.ar(Env.new([0,peak4,0],[1/65.41*time*100],\sine)),phase:SinOsc.ar(65.41*mul))

	+
	SinOsc.ar(73.42*mul,mul:EnvGen.ar(Env.new([0,peak5,0],[1/73.42*time*100],\sine)),phase:SinOsc.ar(73.42*mul))
			+
	SinOsc.ar(77.78*mul,mul:EnvGen.ar(Env.new([0,peak6,0],[1/77.78*time*100],\sine)),phase:SinOsc.ar(77.78*mul))
			+
	SinOsc.ar(87.31*mul,mul:EnvGen.ar(Env.new([0,peak7,0],[1/87.31*time*100],\sine)),phase:SinOsc.ar(87.31*mul))
			+
	SinOsc.ar(98.00*mul,mul:EnvGen.ar(Env.new([0,peak8,0],[1/98.00*time*100],\sine)),phase:SinOsc.ar(98.00*mul))
					+
	SinOsc.ar(110.00*mul,mul:EnvGen.ar(Env.new([0,peak9,0],[1/110.00*time*100],\sine)),phase:SinOsc.ar(110.00*mul))
			+
	SinOsc.ar(116.54*mul,mul:EnvGen.ar(Env.new([0,peak10,0],[1/116.54*time*100],\sine)),phase:SinOsc.ar(116.54*mul))
		+
		SinOsc.ar(130.81*mul,mul:EnvGen.ar(Env.new([0,peak11,0],[1/130.81*time*100],\sine)),phase:SinOsc.ar(130.81*mul))
+
	SinOsc.ar(146.83*mul,mul:EnvGen.ar(Env.new([0,peak12,0],[1/146.83*time*100],\sine)),phase:SinOsc.ar(146.83*mul))
		+
	SinOsc.ar(155.56*mul,mul:EnvGen.ar(Env.new([0,peak13,0],[1/155.56*time*100],\sine)),phase:SinOsc.ar(155.56*mul))



		;




		audio= PanAz.ar(2,sig,azimuth);
		Out.ar(0,audio*amp*100*1);
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
					\dur,Pseq([1/4],inf),
					\decay,1,
					\amp,Pxrand([1/49.00,1/87.31,1/155.56,1/58.27,1/146.83,1/130.81,1/116.54,1/73.42,1/98.00,1/130.81,1/49.00,1/116.54,1/58.27,1/110.00,1/116.54,1/73.42,1/98.00,1/49.00,1/87.31,1/155.56,1/58.27,1/146.83,1/130.81,1/116.54,1/73.42,1/98.00,1/130.81,1/49.00,1/116.54,1/58.27,1/110.00,1/116.54,1/73.42,1/130.81],inf),
					\azimuth,Pseq([0.5,-0.5],inf),
					\peak1,Pxrand([1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16],inf),
					\peak2,Pxrand([1/16],inf),
					\peak3,Pxrand([1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16],inf),
					\peak4,Pxrand([1/16],inf),
					\peak5,Pxrand([1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16],inf),
					\peak6,Pxrand([1/16],inf),
					\peak7,Pxrand([1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16],inf),
					\peak8,Pxrand([1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16],inf),
					\peak9,Pxrand([1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16],inf),
					\peak10,Pxrand([1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1,1/16,1/16,1,1/16,1/16],inf),
					\peak11,Pxrand([1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1],inf),
					\peak12,Pxrand([1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16],inf),
					\peak13,Pseq([1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16,1/16],inf),
					\peak14,Pxrand([1/16],inf),
					\peak15,Pxrand([1/16],inf),
					\peak16,Pxrand([1/16],inf),
					\time,Pxrand([1,1/2,1/4],inf)

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
//s.record(numChannels:2);
)