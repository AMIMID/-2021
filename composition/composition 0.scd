s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=4;

s.record(numChannels:4);

////////////////////////////////////////////////////////////////////

(
(
SynthDef(\c0,
	{   arg azimuth,decay,freq;
		var audio,sig,env;
		sig = FreeVerb.ar(RLPF.ar(Saw.ar(freq/2),1500,1),mix:0.5,room:1);
	env=EnvGen.kr(Env.perc(0.01,decay+1),gate:1, doneAction:2);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,azimuth);
	Out.ar(0,audio*env);
}
).add;
);
)

(
(
SynthDef(\c0,
	{   arg azimuth,decay,freq;
		var audio,sig,env;
		sig = FreeVerb.ar(RLPF.ar(SinOscFB.ar(freq/2,Line.kr(0,2,decay)),3000,1),mix:0.5,room:1);
env=EnvGen.kr(Env.perc(0.01,decay+1),gate:1, doneAction:2);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,azimuth);
	Out.ar(0,audio*env);
}
).add;
);
)

/////////////////////////////////////////

(
Tdef(\pattern_c,
      {
1.do({((

a= Pdef(\p_c0,
 Pbind(*[
    instrument: \c0,
					\dur,0.25,
					\freq,Pseq([196.00,392.00,466.16,233.08,392.00,466.16,293.66,587.33,196.00,392.00,466.16,233.08,392.00,466.16,293.66,523.25,196.00,392.00,466.16,233.08,523.25,293.66,440.00,466.16,196.00,392.00,466.16,233.08,392.00,466.16,293.66,587.33,196.00,392.00,466.16,233.08,392.00,466.16,293.66,523.25,196.00,392.00,466.16,233.08,523.25,293.66,440.00,466.16,174.61,349.23,440.00,220.00,349.23,440.00,261.63,523.25,174.61,349.23,440.00,220.00,349.23,440.00,261.63,466.16,174.61,392.00,440.00,220.00,392.00,440.00,261.63,392.00,174.61,349.23,440.00,220.00,349.23,440.00,261.63,523.25,174.61,349.23,440.00,220.00,349.23,440.00,261.63,466.16,174.61,392.00,440.00,220.00,392.00,440.00,261.63,466.16],inf),
					\decay,0.25,
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});


	}
)
)
Tdef(\pattern_c).play
Tdef(\pattern_c).stop
Tdef(\pattern_c).pause
Tdef(\pattern_c).reset
y.play
y.stop
z.stop

