
s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels= 4;



a= Buffer.readChannel(s,channels:0,path:"C:/Users/user/Music/tessera/reverb/1.wav");
b= Buffer.readChannel(s,channels:0,path:"C:/Users/user/Music/tessera/reverb/2.wav");
c= Buffer.readChannel(s,channels:0,path:"C:/Users/user/Music/tessera/reverb/3.wav");
d= Buffer.readChannel(s,channels:0,path:"C:/Users/user/Music/tessera/reverb/4.wav");


(
(
SynthDef(\a,{
var sig;

	sig=PlayBuf.ar(1,0,BufRateScale.kr(0),loop:inf);
	Out.ar(0,FreeVerb.ar(sig,0.5,1,1));
}).add;
);
(
SynthDef(\b,{
var sig;

	sig=PlayBuf.ar(1,1,BufRateScale.kr(1),loop:inf);
	Out.ar(1,FreeVerb.ar(sig,0.5,1,1));
}).add;
);
(
SynthDef(\c,{
var sig;

	sig=PlayBuf.ar(1,2,BufRateScale.kr(2),loop:inf);
	Out.ar(2,FreeVerb.ar(sig,0.5,1,1));
}).add;
);
(
SynthDef(\d,{
var sig;

	sig=PlayBuf.ar(1,3,BufRateScale.kr(3),loop:inf);
	Out.ar(3,FreeVerb.ar(sig,0.5,1,1));
}).add;
);
)

(
Synth.new(\a);
Synth.new(\b);
Synth.new(\c);
Synth.new(\d);
)