s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=4;

s.record(numChannels:4);

////////////////////////////////////////////////////////////////////

(
(
SynthDef(\c1,
	{   arg azimuth,decay,freq;
		var audio,sig,env;
		sig = RLPF.ar(Saw.ar(freq),2000);
	env=EnvGen.kr(Env.perc(0.01,decay+0.5),gate:1, doneAction:2);
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

a= Pdef(\p_c1,
 Pbind(*[
    instrument: \c1,
					\dur,0.125,
					\freq,Pseq([73.42,392.00,98.00,783.99,146.83,392.00,98.00,783.99,116.54,392.00,146.83,783.99,73.42,587.33,146.83,440.00,98.00,523.25,116.54,466.16,146.83,392.00,65.41,349.23,87.31,698.46,130.81,349.23,87.31,698.46,103.83,349.23,130.81,698.46,65.41,523.25,130.81,392.00,87.31,466.16,103.83,415.30,130.81,349.23],inf),
					\decay,0.125,
					\azimuth,Pxrand(#[-0.75,0.75,0.25,-0.25],inf);
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

