s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels=2
////////////////////////////////


(


(
SynthDef(\c1,
	{   arg azimuth,decay,time1,time2,time3,time4,time5,time6,time7,time8,peak1,peak2,peak3,peak4,peak5,peak6,peak7,peak8,amp;
		var audio,sig,env,mul;
decay = 8;
		mul=2000;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
sig = SinOsc.ar(1*mul,mul:EnvGen.ar(Env.new([0,peak1,0],[0.01,1/8*time1],\sine)),phase:SinOsc.ar(1*mul,mul:EnvGen.ar(Env.new([0,peak1,0],[0.01,time1],\sine))))* AmpComp.kr(1*mul,125,0.5)
+
	SinOsc.ar(1/2*mul,mul:EnvGen.ar(Env.new([0,peak2,0],[0.01,1/7*time2],\sine)),phase:SinOsc.ar(1/2*mul,mul:EnvGen.ar(Env.new([0,peak2,0],[0.01,time2],\sine))))* AmpComp.kr(1/2*mul,125,0.1)
		+
	SinOsc.ar(1/3*mul,mul:EnvGen.ar(Env.new([0,peak3,0],[0.01,1/6*time3],\sine)),phase:SinOsc.ar(1/3*mul,mul:EnvGen.ar(Env.new([0,peak3,0],[0.01,time3],\sine))))* AmpComp.kr(1/3*mul,125,0.1)

	+
	SinOsc.ar(1/4*mul,mul:EnvGen.ar(Env.new([0,peak4,0],[0.01,1/5*time4],\sine)),phase:SinOsc.ar(1/4*mul,mul:EnvGen.ar(Env.new([0,peak4,0],[0.01,time4],\sine))))* AmpComp.kr(1/4*mul,125,0.1)

	+
	SinOsc.ar(1/5*mul,mul:EnvGen.ar(Env.new([0,peak5,0],[0.01,1/4*time5],\sine)),phase:SinOsc.ar(1/5*mul,mul:EnvGen.ar(Env.new([0,peak5,0],[0.01,time5],\sine))))* AmpComp.kr(1/5*mul,125,0.1)
			+
	SinOsc.ar(1/6*mul,mul:EnvGen.ar(Env.new([0,peak6,0],[0.01,1/3*time6],\sine)),phase:SinOsc.ar(1/6*mul,mul:EnvGen.ar(Env.new([0,peak6,0],[0.01,time6],\sine))))* AmpComp.kr(1/6*mul,125,0.1)
			+
	SinOsc.ar(1/7*mul,mul:EnvGen.ar(Env.new([0,peak7,0],[0.01,1/2*time7],\sine)),phase:SinOsc.ar(1/7*mul,mul:EnvGen.ar(Env.new([0,peak7,0],[0.01,time7],\sine))))* AmpComp.kr(1/7*mul,125,0.1)
			+
	SinOsc.ar(1/8*mul,mul:EnvGen.ar(Env.new([0,peak8,0],[0.01,1/1*time8],\sine)),phase:SinOsc.ar(1/8*mul,mul:EnvGen.ar(Env.new([0,peak8,0],[0.01,time8],\sine))))* AmpComp.kr(1/8*mul,125,0.1)
		;




		audio= PanAz.ar(2,sig,azimuth);
		Out.ar(0,audio*env*amp);
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
					\dur,Pxrand([0.5,1,2],inf),

					\azimuth,Pxrand([0.5,-0.5],inf),
					\peak1,Pxrand([1,1/8,1/8,1/8,1/8,1/8,1/8,1/8],inf),
					\peak2,Pxrand([1/8,1/8,1/8,1/8,1/8,1,1/8,1/8],inf),
					\peak3,Pxrand([1/8,1/8,1,1/8,1/8,1/8,1/8,1/8],inf),
					\peak4,Pxrand([1/8,1/8,1/8,1/8,1/8,1/8,1,1/8],inf),
					\peak5,Pxrand([1/8,1/8,1/8,1/8,1/8,1/8,1/8,1],inf),
					\peak6,Pxrand([1/8,1/8,1/8,1/8,1,1/8,1/8,1/8],inf),
					\peak7,Pxrand([1/8,1/8,1/8,1,1/8,1/8,1/8,1/8],inf),
					\peak8,Pxrand([1/8,1,1/8,1/8,1/8,1/8,1/8,1/8],inf),
					\time1,Pxrand([1],inf),
					\time2,Pxrand([2],inf),
					\time3,Pxrand([3],inf),
					\time4,Pxrand([4],inf),
					\time5,Pxrand([5],inf),
					\time6,Pxrand([6],inf),
					\time7,Pxrand([7],inf),
					\time8,Pxrand([8],inf),
					\amp,Pxrand([1],inf)

					;
])

).play(quant:1)
	)); 0.yield});



	}
)
);
)

TempoClock.default.tempo_(120/60) ;
(
Tdef(\pattern_c).play;
//s.record(numChannels:2);

//a=Synth(\rekord)

)