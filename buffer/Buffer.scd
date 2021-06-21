a= Buffer.readChannel(s,channels:0,path:);
b= Buffer.readChannel(s,channels:1,path:);
c= Buffer.readChannel(s,channels:0,path:);
d= Buffer.readChannel(s,channels:0,path:);

(
(
SynthDef(\a,{
var sig,audio;

	sig=PlayBuf.ar(1,0,BufRateScale.kr(0));

	#w,x,y,z=PanB.ar(sig,MouseX.kr(0,1),0,0.3);
	audio=DecodeB2.ar(2,w,x,y,0.5);
	Out.ar(0,audio);
}).add;
);
(
SynthDef(\b,{
var sig,audio;

	sig=PlayBuf.ar(1,1,BufRateScale.kr(1));

	#w,x,y,z=PanB.ar(sig,MouseX.kr(0,1),0,0.3);
	audio=DecodeB2.ar(2,w,x,y,0.5);
	Out.ar(2,audio);
}).add;
);
(
SynthDef(\c,{
var sig,audio;

	sig=PlayBuf.ar(1,2,BufRateScale.kr(2));

	#w,x,y,z=PanB.ar(sig,MouseX.kr(0,1),0,0.3);
	audio=DecodeB2.ar(3,w,x,y,0.5);
	Out.ar(0,audio);
}).add;
);
(
SynthDef(\d,{
var sig,audio;

	sig=PlayBuf.ar(1,3,BufRateScale.kr(3));

	#w,x,y,z=PanB.ar(sig,MouseX.kr(0,1),0,0.3);
	audio=DecodeB2.ar(3,w,x,y,0.5);
	Out.ar(0,audio);
}).add;
);
)

(
Synth.new(\a);
Synth.new(\b);
Synth.new(\c);
Synth.new(\d);
)


(
Tdef(\PATTERN_Buff,
      {
		1.do({(Synth.new(\a)); 0.yield});
		1.do({(Synth.new(\b)); 120.yield});
		1.do({(Synth.new(\c)); 200.yield});
		1.do({(Synth.new(\d)); 300.yield});

	}
)
)

Tdef(\PATTERN_Buff).play
Tdef(\PATTERN_Buff).stop
Tdef(\PATTERN_Buff).pause
Tdef(\PATTERN_Buff).reset