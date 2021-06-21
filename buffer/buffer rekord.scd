a= Buffer.readChannel(s,channels:1,path:"C:/Users/user/Music/stereo/aieou.wav");

s.options.device_("ASIO : ASIO4ALL v2");

s.options.numOutputBusChannels= 4;
(
SynthDef(\a,{
var sig,audio;

	sig=AllpassC.ar(PlayBuf.ar(1,0,BufRateScale.kr(0),loop:inf),decaytime:MouseX.kr(1,5));

	#w,x,y,z=PanB.ar(sig,LFNoise1.ar(0.5),0,0.3);
	audio=DecodeB2.ar(2,w,x,y,0.5);
	Out.ar(0,audio);
}).add;
)


Synth.new(\a);


(
SynthDef(\a,{
var sig,audio;

	sig=PlayBuf.ar(1,0,BufRateScale.kr(0),loop:inf);

	#w,x,y,z=PanB.ar(sig,LFNoise1.ar(0.5),0,0.3);
	audio=DecodeB2.ar(2,w,x,y,0.5);
	Out.ar(0,audio);
}).add;
)

(
SynthDef(\a,{
var sig,audio;

	sig=PlayBuf.ar(1,0,BufRateScale.kr(0),loop:inf);

	#w,x,y,z=PanB.ar(sig,0,0,0.3);
	audio=DecodeB2.ar(2,w,x,y,0.5);
	Out.ar(2,audio*2);
}).add;
)
(
b=Synth.new(\a);
a=Synth(\rekord);
s.record(numChannels:2);
)