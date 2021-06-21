s.makeWindow
s.scope
(
(
SynthDef(\1,
	{

		var audio,ad;

		audio =  SinOsc.ar(1000);
		ad = Pan2.ar(audio,0);

		Out.ar(0,ad );
}).add
);
(
SynthDef(\2,
	{

		var audio,ad;

		audio =  SinOsc.ar(2000,add:1);
		ad = Pan2.ar(audio,0);
		Out.ar(0,ad );
}).add
)
)

(
a = Synth.new(\1);
b = Synth.new(\2);
)



{SinOsc.ar(100,mul:SinOsc.ar(100),add:SinOsc.ar(10))}.play



(
SynthDef(\1,
	{
		arg  freq1, freqq1, fr1;
		var audio, env;

		env = EnvGen.kr(Env.sine(180,1),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(SinOsc.ar(fr1,mul:SinOsc.ar(fr1),add:SinOsc.ar(freq1)), LFSaw.kr(freq1), SinOsc.kr(SinOsc.ar(freqq1)), 0.1);

		audio =   DecodeB2.ar(2, w, x, y, 1);
		Out.ar(0,audio * env );
}).add
)


(
SynthDef(\1,
	{
		arg  freq1, freqq1, fr1, amp1, p, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(3,4,60,level:0.2,curve:\sine),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar( BLowPass.ar(SinOsc.ar(fr1,mul:SinOsc.ar(fr1),add:SinOsc.ar(freq1)), Line.ar(20, 9000, 180),
                                                                  Line.ar(0.0, 1.0, 180),
                                                                                         0.5),
			LFSaw.kr(freq1,pi), FSinOsc.kr(SinOsc.ar(freqq1),pi), 0.1);

		audio =   DecodeB2.ar(2, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
)



(
c = Synth.new(\1, [ \fr1,240, \freq1,2.4,\freqq1,2.4]);
d = Synth.new(\1, [ \fr1,480, \freq1,4.8,\freqq1,4.8]);
e = Synth.new(\1, [ \fr1,800, \freq1,8,\freqq1,8]);
f = Synth.new(\1, [ \fr1,1200, \freq1,12,\freqq1,12]);
g = Synth.new(\1, [ \fr1,1680, \freq1,16.8,\freqq1,16.8]);
k = Synth.new(\1, [ \fr1,2240, \freq1,22.4,\freqq1,22.4]);
l = Synth.new(\1, [ \fr1,2880, \freq1,28.8,\freqq1,28.8]);
m = Synth.new(\1, [ \fr1,200, \freq1,20,\freqq1,20]);
o = Synth.new(\1, [ \fr1,300, \freq1,30,\freqq1,30]);
p = Synth.new(\1, [ \fr1,400, \freq1,40,\freqq1,40]);
q = Synth.new(\1, [ \fr1,500, \freq1,50,\freqq1,50]);
r = Synth.new(\1, [ \fr1,600, \freq1,60,\freqq1,60]);
s = Synth.new(\1, [ \fr1,700, \freq1,70,\freqq1,70]);
t = Synth.new(\1, [ \fr1,800, \freq1,80,\freqq1,80]);
)












