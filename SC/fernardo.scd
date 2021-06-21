play({
	    #w, x, y, z = PanB.ar(WhiteNoise.ar(0.05), LFSaw.kr(0.5,pi), FSinOsc.kr(0.31, 0.5pi), 0.3);
    //decode for 4 channels
    DecodeB2.ar(4, w, x, y, 0.5);
});

(
SynthDef(\1,
	{
		arg  freq1, freqq1, fr1, amp1, p;
		var audio, env;

		env = EnvGen.kr(Env.sine(90,1),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(SinOsc.ar(400), SinOsc.kr(0.1), SinOsc.kr(0.1,0.001 *1pi), 0.1);

		audio =   DecodeB2.ar(2, w, x, y, 1);

		Out.ar(0,audio * env  * 1);
}).add
)

Synth.new(\1);

{
	#w, x, y, z = PanB.ar(SinOsc.ar(400), SinOsc.kr(0.01), SinOsc.kr(0.01,0.1 *1pi), 0.1);
DecodeB2.ar(18, w,x,y, 1)* EnvGen.kr(Env.sine(180,1),gate:1, doneAction:2);
}.play