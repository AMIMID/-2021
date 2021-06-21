s.options.device_("ASIO : ASIO4ALL v2");


s.record(numChannels:1);


(
SynthDef(\voice,
	{
		var audio,sig,sig1;
		sig= SoundIn.ar(0);
		sig1=SoundIn.ar(1);
     audio=sig+sig1;
	Out.ar(1,audio);
}
).add;
)

Synth.new(\voice)