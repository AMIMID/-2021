(
SynthDef(\bpfsaw,{
	arg atk=2 ,sus=0,rel=3,c1=1,c2=(-1),azimuth=0.5,
	freq=440,detune=0.2,cfmin=500,cfmax=2000,rqmin=0.1,rqmax=0.2,
	cfhzmin=0.1,cfhzmax=0.3,amp=1,out=0,lsf=200,ldb=0;
	var sig, env,audio;
	env=EnvGen.kr(Env([0,1,1,0],[atk,sus,rel],[c1,0,c2]),doneAction:2);
	sig=Saw.ar(freq*LFNoise1.kr(0.5,detune).midiratio);
	sig=BPF.ar(sig,
		LFNoise1.kr(
		LFNoise1.ar(4).exprange(cfhzmin,cfhzmax)
		).exprange(cfmin,cfmax),
		LFNoise1.kr(0.1).exprange(rqmin,rqmax)
	);
	sig=BLowShelf.ar(sig,lsf,0.5,ldb);
	sig=sig*env*amp;
	 #w, x, y, z = PanB.ar(sig, LFNoise1.kr(azimuth), 0, 0.3);
		audio= DecodeB2.ar(4, w, x, y, 0.5);
	Out.ar(out,audio)

}).add;
)
(
~scales=Pbind(
	\instrument,\bpfsaw,
	\dur,5,
	\midinote,Pseq([[23,35,54,63,64],
		[45,52,54,59,61,64],
		[28,40,47,56,59,63]
	],inf),
	\detune,Pexprand(0.05,0.2,inf),
	\cfmin,100,
	\cfmax,1500,
	\rqmin,Pexprand(0.01,0.15,inf),
	\atk,Pwhite(2,2.5,inf),
	\rel,Pwhite(6.5,10,inf),
	\ldb,6,
	\amp,0.2,
	\out,0,
).play;
)
~scales.stop

(
~marimba= Pbind(
	\instrument,\bpfsaw,
	\dur,Prand([1,0.5],inf),
	\freq,Prand([1/2,2/3,1,4/3,2,5/2,3,4,6,8],inf),
	\detune,Pwhite(0,0.1,inf),
		\rqmin,0.005,
		\rqmax,0.008,
		\cfmin,Prand((Scale.major.degrees+64).midicps,inf)*Prand([0.5,1,2,4],inf),
		\cfmax,Pkey(\cfmin),
		\atk,3,
		\sus,1,
		\rel,5,
		\amp,1,
		\out,0,
	).play;
)

~marimba.stop















