s.scope
s.makeWindow

Tdef(\b16).play;
(
(
SynthDef(\1,
	{
		arg  freq1, freqq1, fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(30,40,60,level:0.2,curve:\sine),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(SinOsc.ar(fr1,mul:amp1),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(2, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\2,
	{
		arg  freq1, freqq1, fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(3,4,60,level:0.2,curve:\sine),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(SinOsc.ar(fr1,mul:amp1),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(2, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\3,
	{
		arg  freq1, freqq1, fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(3,4,60,level:0.2,curve:\sine),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(SinOsc.ar(fr1,mul:amp1*2),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(2, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\4,
	{
		arg  freq1, freqq1, fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(3,4,60,level:0.2,curve:\sine),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(SinOsc.ar(fr1,mul:amp1*2),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(2, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
)
)

/////////////////////////////
s.makeWindow;

 Pdef(\pa2,

 Pbind(*[
    instrument: \2,
        \dur,Prand([3,6,9],inf).trace,
		\freq2, 0.1333333,
		\freqq2, 0.3,
		\fr2, Prand([133.333,300,533.333],inf).trace,
					\harm2,  Pseq([1,3,2,3,1],inf).trace,
		\p2,  Pexprand(0.1333333,0.5333333,inf).trace,
					\amp2, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
//////////////////////////////
(
c = Synth.new(\1, [ \fr1,200, \freq1,6,\freqq1,6, \amp1,1]);
d = Synth.new(\1, [ \fr1,400, \freq1,26,\freqq1,26,\amp1,1/2]);
e = Synth.new(\1, [ \fr1,800, \freq1,98,\freqq1,98,\amp1,1/3]);
f = Synth.new(\1, [ \fr1,1600, \freq1,354,\freqq1,354,\amp1,1/4]);
)
s.stopRecording
(
c = Synth.new(\1, [ \fr1,300, \freq1,3,\freqq1,1, \amp1,1]);
d = Synth.new(\1, [ \fr1,600, \freq1,6,\freqq1,1,\amp1,1/3]);
e = Synth.new(\1, [ \fr1,900, \freq1,9,\freqq1,1,\amp1,1/9]);
f = Synth.new(\1, [ \fr1,1200, \freq1,12,\freqq1,1,\amp1,1/15]);
g = Synth.new(\1, [ \fr1,1800, \freq1,18,\freqq1,1,\amp1,1/21]);
k = Synth.new(\1, [ \fr1,2700, \freq1,27,\freqq1,1,\amp1,1/27]);
l = Synth.new(\1, [ \fr1,3600, \freq1,36,\freqq1,1,\amp1,1/33]);
c = Synth.new(\1, [ \fr1,300*4/3, \freq1,3*4/3,\freqq1,4/3,\amp1,1/6]);
d = Synth.new(\1, [ \fr1,600*4/3, \freq1,6*4/3,\freqq1,4/3,\amp1,1/12]);
e = Synth.new(\1, [ \fr1,900*4/3, \freq1,9*4/3,\freqq1,4/3,\amp1,1/18]);
f = Synth.new(\1, [ \fr1,1200*4/3, \freq1,12*4/3,\freqq1,4/3,\amp1,1/24]);
g = Synth.new(\1, [ \fr1,1800*4/3, \freq1,18*4/3,\freqq1,4/3,\amp1,1/30]);
k = Synth.new(\1, [ \fr1,2700*4/3, \freq1,27*4/3,\freqq1,4/3,\amp1,1/36]);
l = Synth.new(\1, [ \fr1,3600*4/3, \freq1,36*4/3,\freqq1,4/3,\amp1,1/39]);

)

(
c = Synth.new(\1, [ \fr1,300, \freq1,3,\freqq1,1, \amp1,1]);
d = Synth.new(\1, [ \fr1,600, \freq1,6,\freqq1,1,\amp1,1/3]);
e = Synth.new(\1, [ \fr1,900, \freq1,9,\freqq1,1,\amp1,1/9]);
f = Synth.new(\1, [ \fr1,1200, \freq1,12,\freqq1,1,\amp1,1/15]);
g = Synth.new(\1, [ \fr1,1800, \freq1,18,\freqq1,1,\amp1,1/21]);
k = Synth.new(\1, [ \fr1,2700, \freq1,27,\freqq1,1,\amp1,1/27]);
l = Synth.new(\1, [ \fr1,3600, \freq1,36,\freqq1,1,\amp1,1/33]);
c = Synth.new(\1, [ \fr1,300*4/3, \freq1,3*4/3,\freqq1,4/3,\amp1,1/6]);
d = Synth.new(\1, [ \fr1,600*4/3, \freq1,6*4/3,\freqq1,4/3,\amp1,1/12]);
e = Synth.new(\1, [ \fr1,900*4/3, \freq1,9*4/3,\freqq1,4/3,\amp1,1/18]);
f = Synth.new(\1, [ \fr1,1200*4/3, \freq1,12*4/3,\freqq1,4/3,\amp1,1/24]);
g = Synth.new(\1, [ \fr1,1800*4/3, \freq1,18*4/3,\freqq1,4/3,\amp1,1/30]);
k = Synth.new(\1, [ \fr1,2700*4/3, \freq1,27*4/3,\freqq1,4/3,\amp1,1/36]);
l = Synth.new(\1, [ \fr1,3600*4/3, \freq1,36*4/3,\freqq1,4/3,\amp1,1/39]);

);

(
c = Synth.new(\1, [ \fr1,30, \freq1,3,\freqq1,3, \amp1,1]);
d = Synth.new(\1, [ \fr1,60, \freq1,6,\freqq1,6,\amp1,1/3]);
e = Synth.new(\1, [ \fr1,90, \freq1,9,\freqq1,9,\amp1,1/6]);
f = Synth.new(\1, [ \fr1,120, \freq1,12,\freqq1,12,\amp1,1/9]);
g = Synth.new(\1, [ \fr1,180, \freq1,18,\freqq1,18,\amp1,1/12]);
k = Synth.new(\1, [ \fr1,270, \freq1,27,\freqq1,17,\amp1,1/15]);
l = Synth.new(\1, [ \fr1,360, \freq1,36,\freqq1,36,\amp1,1/18]);
l = Synth.new(\1, [ \fr1,450, \freq1,45,\freqq1,36,\amp1,1/21]);
c = Synth.new(\1, [ \fr1,540, \freq1,54,\freqq1,54,\amp1,1/24]);
d = Synth.new(\1, [ \fr1,720, \freq1,72,\freqq1,72,\amp1,1/27]);
c = Synth.new(\1, [ \fr1,900, \freq1,90,\freqq1,54,\amp1,1/30]);
e = Synth.new(\1, [ \fr1,1080, \freq1,108,\freqq1,108,\amp1,1/33]);
d = Synth.new(\1, [ \fr1,1350, \freq1,135,\freqq1,72,\amp1,1/36]);
f = Synth.new(\1, [ \fr1,1440, \freq1,144,\freqq1,144,\amp1,1/39]);
e = Synth.new(\1, [ \fr1,1800, \freq1,180,\freqq1,108,\amp1,1/41]);
f = Synth.new(\1, [ \fr1,2250, \freq1,225,\freqq1,144,\amp1,1/44]);
)