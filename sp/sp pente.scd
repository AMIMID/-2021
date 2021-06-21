s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels= 12;

s.record(numChannels:1);


(

(SynthDef(\tessera1,
	{
		arg azimuth,decay;
		var sig1,env,audio;
		sig1= FreeVerb.ar(In.ar(4),0.6,1,1);
			env=EnvGen.kr(Env.perc(0.01,decay),gate:1, doneAction:2);
		audio= PanAz.ar(2,sig1,azimuth);
		Out.ar(0,audio*env);
}).add;
);

(
SynthDef(\sp1,
	{
		arg  freq1, fr1;
		var audio,mul,dur,env;

		//dur = Demand.kr(Dust.kr(1),0,Drand([2000,20000],inf));
		dur =44100;

		mul =TExpRand.kr(20,20000,Dust.kr(dur));

		env = EnvGen.ar(Env.perc(releaseTime:4),doneAction:2);
		#w, x, y, z = PanB.ar(SinOsc.ar(fr1*mul)* AmpComp.kr(fr1*mul, 80,1.3),SinOsc.kr(freq1),gain:1);

		audio =   DecodeB2.ar(8, w, x, y, 1);

		Out.ar(4,audio*env);
}).add
);
(
Tdef(\pattern_tria1,

      {

		1.do({loop({
(
 Synth.new(\sp1, [\gate,1, \fr1,4, \freq1,0.01*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,6, \freq1,0.02*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,8, \freq1,0.03*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,9, \freq1,0.04*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,10, \freq1,0.05*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,12, \freq1,0.06*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,14, \freq1,0.07*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,15, \freq1,0.08*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,16, \freq1,0.09*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,18, \freq1,0.1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,20, \freq1,0.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,21, \freq1,0.3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,22, \freq1,0.4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,24, \freq1,0.5*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,25, \freq1,0.6*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,27, \freq1,0.7*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,28, \freq1,0.8*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,30, \freq1,0.9*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,32, \freq1,1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,33, \freq1,1.1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,35, \freq1,1.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,36, \freq1,1.3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,40, \freq1,1.4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,42, \freq1,1.5*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,44, \freq1,1.6*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,45, \freq1,1.7*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,48, \freq1,1.8*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,49, \freq1,1.9*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,50, \freq1,2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,55, \freq1,2.1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,56, \freq1,2.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,60, \freq1,2.3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,64, \freq1,2.4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,66, \freq1,2.5*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,70, \freq1,2.6*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,72, \freq1,2.7*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,77, \freq1,2.8*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,2.9*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,81, \freq1,3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,84, \freq1,3.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,88, \freq1,3.3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,90, \freq1,3.4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,96, \freq1,3.5*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,99, \freq1,3.6*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,100, \freq1,3.7*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,108, \freq1,3.8*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,110, \freq1,3.9*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,120, \freq1,4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,121, \freq1,4.1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,132, \freq1,4.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,144, \freq1,4.3*1/2]);
);
			1.wait;});0.yield});

	}
)
);
)

(
Tdef(\pattern_tria1).play;
Pbind(*[\instrument: \tessera1, \dur:1,\decay:4, \azimuth: Pxrand([0.5,-0.5],inf)]).play(quant:1);
)