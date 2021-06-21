Scale.directory
a = Scale.minor;
a.degrees;

s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels= 18;

s.record(numChannels:2);
(
(
(
SynthDef(\c0,
	{   arg azimuth,decay,freq;
		var audio,sig,env,mul;
		mul = 1;
		sig = FreeVerb.ar(RLPF.ar(
	SinOsc.ar(1/4*freq*mul,phase:SinOsc.ar(1/4*freq*mul),mul:1)
	+
    SinOsc.ar(2/4*freq*mul,phase:SinOsc.ar(2/4*freq*mul),mul:1/2)
	+
	SinOsc.ar(3/4*freq*mul,phase:SinOsc.ar(3/4*freq*mul),mul:1/3)
	+
	SinOsc.ar(4/4*freq*mul,phase:SinOsc.ar(4/4*freq*mul),mul:1/4)
	+
	SinOsc.ar(5/4*freq*mul,phase:SinOsc.ar(5/4*freq*mul),mul:1/5)
	+
	SinOsc.ar(6/4*freq*mul,phase:SinOsc.ar(6/4*freq*mul),mul:1/6)
	+
	SinOsc.ar(7/4*freq*mul,phase:SinOsc.ar(7/4*freq*mul),mul:1/7)
	+
	SinOsc.ar(8/4*freq*mul,phase:SinOsc.ar(8/4*freq*mul),mul:1/8)
	+
	SinOsc.ar(9/4*freq*mul,phase:SinOsc.ar(9/4*freq*mul),mul:1/9),1500,1),mix:0.5,room:1);
	env=EnvGen.kr(Env.perc(0.01,decay+0.1),gate:1, doneAction:2);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,azimuth);
	Out.ar(0,audio*env);
}
).add;
);
);
(
(
SynthDef(\c1,
	{   arg azimuth,decay,freq;
		var audio,sig,env,mul;
		mul = 1;
		sig = FreeVerb.ar(RLPF.ar(
	SinOsc.ar(1/4*freq*mul,phase:SinOsc.ar(1/4*freq*mul),mul:1)
	+
    SinOsc.ar(2/4*freq*mul,phase:SinOsc.ar(2/4*freq*mul),mul:1/2)
	+
	SinOsc.ar(3/4*freq*mul,phase:SinOsc.ar(3/4*freq*mul),mul:1/3)
	+
	SinOsc.ar(4/4*freq*mul,phase:SinOsc.ar(4/4*freq*mul),mul:1/4)
	+
	SinOsc.ar(5/4*freq*mul,phase:SinOsc.ar(5/4*freq*mul),mul:1/5)
	+
	SinOsc.ar(6/4*freq*mul,phase:SinOsc.ar(6/4*freq*mul),mul:1/6)
	+
	SinOsc.ar(7/4*freq*mul,phase:SinOsc.ar(7/4*freq*mul),mul:1/7)
	+
	SinOsc.ar(8/4*freq*mul,phase:SinOsc.ar(8/4*freq*mul),mul:1/8)
	+
	SinOsc.ar(9/4*freq*mul,phase:SinOsc.ar(9/4*freq*mul),mul:1/9),1500,1),mix:0.5,room:1);
	env=EnvGen.kr(Env.perc(0.01,decay+0.1),gate:1, doneAction:2);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,azimuth);
	Out.ar(0,audio*env);
}
).add;
);
)
)

(
Tdef(\pattern_c,

      {
1.do({((
a= Pdef(\p_c0,
 Pbind(*[
    instrument: \c0,
					\dur,Pseq([0.25,0.25,0.5,0.25,0.5,0.25,0.25,0.25,0.5,0.25,0.5,0.25,0.25,0.25,0.5,0.25,0.5,0.25,0.25,0.25,0.5,0.25,0.25,0.25,0.25],inf),
					\scale, Scale.minor,
					\degree,Pseq([Rest(0.25),12,14,12,14,16,Rest(0.25),12,14,12,14,16,Rest(0.25),12,14,12,14,16,Rest(0.25),12,14,15,Rest(0.25),Prand([12,13],1),14],inf),
					\decay,Pseq([0.25,0.25,0.5,0.25,0.5,0.25,0.25,0.25,0.5,0.25,0.5,0.25,0.25,0.25,0.5,0.25,0.5,0.25,0.25,0.25,0.5,0.25,0.25,0.25,0.25],inf),
					\azimuth,Prand([0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

a= Pdef(\p_c1,
 Pbind(*[
    instrument: \c1,
					\dur,Pseq([0.75,0.75,0.5,0.75,0.75,0.5,0.75,0.75,0.5,0.75,0.5,0.75],inf),
					\scale, Scale.minor,
					\degree,Pseq([5,7,9,5,7,9,5,7,9,5,7,9],inf),
					\decay,Pseq([0.75,0.75,0.5,0.75,0.75,0.5,0.75,0.75,0.5,0.75,0.5,0.75],inf),
					\azimuth,Prand([0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});


	}
)
)
TempoClock.default.tempo = 1;
Tdef(\pattern_c).play;
//s.record(numChannels:2);
)
Tdef(\pattern_c).stop
Tdef(\pattern_c).pause
Tdef(\pattern_c).reset
y.play
y.stop
z.stop