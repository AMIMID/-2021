

(
SynthDef(\rekord,
	{
		var audio,sig;
		sig= SoundIn.ar(0);
			#w,x,y,z=PanB.ar(sig,LFNoise1.kr(0.1,pi),0, 0.3);
     audio=DecodeB2.ar(2, w, x, y, 0.5);
	Out.ar(0,audio);
}
).add;
)

(
SynthDef(\rekord,
	{
		var audio,sig,sig1;
		sig= SoundIn.ar(0);
		sig1=SoundIn.ar(1);
			#w,x,y,z=PanB.ar(sig+sig1,0, 0.3);
     audio=DecodeB2.ar(2, w, x, y, 0.5);
	Out.ar(0,audio);
}
).add;
)

a=Synth(\rekord)

(
SynthDef(\rekord,
	{
		var audio,sig,sig1;
		sig= SoundIn.ar(0);
		sig1=SoundIn.ar(1);
			#w,x,y,z=PanB.ar(sig+sig1,LFNoise1.kr(0.1,pi), 0.3);
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
/////////////////////////////////////////////////////////delay
(
SynthDef(\rekord,
	{
		var audio,sig;
		sig= FreeVerb.ar(AllpassC.ar(SoundIn.ar(0),0.2,0.2,MouseX.kr(1,5)));
			#w,x,y,z=PanB.ar(sig,LFNoise1.kr(0.5,pi),0, 0.3);
     audio=DecodeB2.ar(2, w, x, y, 0.5);
	Out.ar(0,audio);
}
).add;
)

(
SynthDef(\rekord,
	{
		var audio,sig,sig1;
		sig= FreeVerb.ar(AllpassC.ar(SoundIn.ar(0),0.2,0.2,MouseX.kr(1,5)));
			#w,x,y,z=PanB.ar(sig,0, 0.3);
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
			#w,x,y,z=PanB.ar(sig,0, 0.3);
     audio=DecodeB2.ar(2, w, x, y, 0.5);
	Out.ar(0,audio);
}
).add;
)

(
SynthDef(\rekord,
	{
		var audio,sig;
		sig= FreeVerb.ar(AllpassC.ar(SoundIn.ar(0),0.2,0.2,1));
			#w,x,y,z=PanB.ar(sig,LFNoise1.kr(0.5,pi),0, 0.3);
     audio=DecodeB2.ar(2, w, x, y, 0.5);
	Out.ar(0,audio);
}
).add;
)


///////////////////////////////////////////////////////////4
a=Synth(\rekord)

(
SynthDef(\rekord,
	{
		var audio,sig;
		sig= FreeVerb.ar(AllpassC.ar(SoundIn.ar(0),0.2,0.2,MouseX.kr(1,5)));
			#w,x,y,z=PanB.ar(sig,LFNoise1.kr(0.5,pi),0, 0.3);
     audio=DecodeB2.ar(2, w, x, y, 0.5);
	Out.ar(2,audio);
}
).add;
)

(
SynthDef(\rekord,
	{
		var audio,sig,sig1;
		sig= FreeVerb.ar(AllpassC.ar(SoundIn.ar(0),0.2,0.2,0.2));
			#w,x,y,z=PanB.ar(sig,0, 0.3);
     audio=DecodeB2.ar(2, w, x, y, 0.5);
	Out.ar(2,audio);
}
).add;
)