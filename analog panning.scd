
s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels=4
////////////////////////////////

//////////////////////////////////////////////////
(
(
SynthDef(\rekord,
	{
		var audio,sig;
		sig= SoundIn.ar(1);
		#w,x,y,z=PanB.ar(sig,LFSaw.ar(0.5),0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
	Out.ar(0,audio);
}
).add;
);
(
SynthDef(\rekordb,
	{
		var audio,sig;
		sig= SoundIn.ar(0);

		audio=Pan4.kr(sig);
	Out.ar(0,audio);
}
).add;
)
)

(
a=Synth(\rekord);
b=Synth(\rekordb);
)