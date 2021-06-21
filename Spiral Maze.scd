(
SynthDef(\rekord,
	{
		var audio,sig,sig1;
		sig= SoundIn.ar(0);
		sig1=SoundIn.ar(1);
			#w,x,y,z=PanB.ar(sig+sig1,LFNoise1.kr(0.5,pi), 0.3);
     audio=DecodeB2.ar(2, w, x, y, 0.5);
	Out.ar(0,audio);
}
).add;
)

(
SynthDef(\rekord,
	{
		var audio,sig,sig1;
		sig= FreeVerb.ar(AllpassC.ar(SoundIn.ar(0),0.2,0.2,1));
		sig1=FreeVerb.ar(AllpassC.ar(SoundIn.ar(1),0.2,0.2,1));
			#w,x,y,z=PanB.ar(sig+sig1,LFNoise1.kr(0.5,pi), 0.3);
     audio=DecodeB2.ar(2, w, x, y, 0.5);
	Out.ar(0,audio);
}
).add;
)
a=Synth(\rekord)


(
   // display level meters for monitoring
SynthDef(\helpAudioIn, { |out|
    var input = AudioIn.ar(1); // first input
    // delay output to tame feedback in case of microphones are configured:
    Out.ar(out, CombN.ar(input * -25.dbamp, 0.5, 0.5, 0.001))
}).play
)