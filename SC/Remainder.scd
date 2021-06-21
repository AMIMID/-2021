(
SynthDef(\1,
	{
		arg  freq1, freqq1, fr1, amp1, p, pa;
		var audio, env;

		env = EnvGen.kr(Env.sine(60,1),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(SinOsc.ar(fr1,MouseX.kr(1,1200)), SinOsc.kr(freq1), SinOsc.kr(freqq1,MouseY.kr(1,1200)), 0.1);

		audio =   DecodeB2.ar(18, w, x, y, 1);
		Out.ar(0,audio * env * amp1 * 1.5);
}).add
)



(
Tdef(\a16,
      {
		1.do({((

b = Synth.new(\1, [\gate,1, \fr1,100,\pa,10000,\freq1,8,\freqq1,04,\p,0.64,\amp1,0.1]);
c = Synth.new(\1, [\gate,1, \fr1,150,\pa,22500,\freq1,12,\freqq1,08,\p,1.44,\amp1,0.1]);
d = Synth.new(\1, [\gate,1, \fr1,200,\pa,40000, \freq1,16,\freqq1,12,\p,2.56,\amp1,0.1]);
e = Synth.new(\1, [\gate,1, \fr1,250,\pa,62500,  \freq1,2,\freqq1,2,\p,1.6,\amp1,0.1]);
f = Synth.new(\1, [\gate,1, \fr1,300,\pa,90000,  \freq1,24,\freqq1,4,\p,5.76,\amp1,0.1]);
g = Synth.new(\1, [\gate,1, \fr1,350,\pa,122500,  \freq1,28,\freqq1,24,\p,7.84,\amp1,0.1]);
k = Synth.new(\1, [\gate,1, \fr1,400,\pa,160000,  \freq1,32,\freqq1,28,\p,10.24,\amp1,0.1]);
l = Synth.new(\1, [\gate,1, \fr1,450,\pa,160000,  \freq1,36,\freqq1,32,\p,10.24,\amp1,0.1]);

);
); 30.yield});

1.do({((

b = Synth.new(\1, [\gate,1, \fr1,550,\pa,100000,\freq1,8,\freqq1,4,\p,0.64,\amp1,0.01]);
c = Synth.new(\1, [\gate,1, \fr1,600,\pa,225000,\freq1,12,\freqq1,8,\p,1.44,\amp1,0.01]);
d = Synth.new(\1, [\gate,1, \fr1,650,\pa,400000, \freq1,16,\freqq1,12,\p,2.56,\amp1,0.01]);
e = Synth.new(\1, [\gate,1, \fr1,700,\pa,625000,   \freq1,2,\freqq1,2,\p,4,\amp1,0.01]);
f = Synth.new(\1, [\gate,1, \fr1,750,\pa,900000,   \freq1,24,\freqq1,4,\p,5.76,\amp1,0.01]);
g = Synth.new(\1, [\gate,1, \fr1,800,\pa,1225000,  \freq1,28,\freqq1,24,\p,7.84,\amp1,0.01]);
k = Synth.new(\1, [\gate,1, \fr1,850,\pa,1600000,  \freq1,32,\freqq1,28,\p,10.24,\amp1,0.01]);
l = Synth.new(\1, [\gate,1, \fr1,900,\pa,160000,  \freq1,36,\freqq1,32,\p,10.24,\amp1,0.1]);


);
); 30.yield});
		1.do({((

b = Synth.new(\1, [\gate,1, \fr1,100,\pa,10000,\freq1,8,\freqq1,04,\p,0.64,\amp1,0.1]);
c = Synth.new(\1, [\gate,1, \fr1,150,\pa,22500,\freq1,12,\freqq1,08,\p,1.44,\amp1,0.1]);
d = Synth.new(\1, [\gate,1, \fr1,200,\pa,40000, \freq1,16,\freqq1,12,\p,2.56,\amp1,0.1]);
e = Synth.new(\1, [\gate,1, \fr1,250,\pa,62500,  \freq1,2,\freqq1,2,\p,1.6,\amp1,0.1]);
f = Synth.new(\1, [\gate,1, \fr1,300,\pa,90000,  \freq1,24,\freqq1,4,\p,5.76,\amp1,0.1]);
g = Synth.new(\1, [\gate,1, \fr1,350,\pa,122500,  \freq1,28,\freqq1,24,\p,7.84,\amp1,0.1]);
k = Synth.new(\1, [\gate,1, \fr1,400,\pa,160000,  \freq1,32,\freqq1,28,\p,10.24,\amp1,0.1]);
l = Synth.new(\1, [\gate,1, \fr1,450,\pa,160000,  \freq1,36,\freqq1,32,\p,10.24,\amp1,0.1]);

);
); 30.yield});


		1.do({((

b = Synth.new(\1, [\gate,1, \fr1,1000,\pa,1,\freq1,8,\freqq1,4,\p,0.64,\amp1,0.01]);
c = Synth.new(\1, [\gate,1, \fr1,1050,\pa,1,\freq1,12,\freqq1,8,\p,1.44,\amp1,0.01]);
d = Synth.new(\1, [\gate,1, \fr1,1100,\pa,1, \freq1,16,\freqq1,12,\p,2.56,\amp1,0.01]);
e = Synth.new(\1, [\gate,1, \fr1,1150,\pa,1,   \freq1,2,\freqq1,2,\p,4,\amp1,0.01]);
f = Synth.new(\1, [\gate,1, \fr1,1200,\pa,1,   \freq1,24,\freqq1,4,\p,5.76,\amp1,0.01]);
g = Synth.new(\1, [\gate,1, \fr1,1250,\pa,1,  \freq1,28,\freqq1,24,\p,7.84,\amp1,0.01]);
k = Synth.new(\1, [\gate,1, \fr1,1300,\pa,1,  \freq1,32,\freqq1,28,\p,10.24,\amp1,0.01]);
l = Synth.new(\1, [\gate,1, \fr1,1400,\pa,1,  \freq1,36,\freqq1,32,\p,10.24,\amp1,0.1]);


);
); 30.yield});

		1.do({((
m = Synth.new(\1, [\gate,1, \fr1,86,\pa,1, \freq1,0.4,\freqq1,0.4,\p,0.16, \amp1,0.1]);
n = Synth.new(\1, [\gate,1, \fr1,392,\pa,1, \freq1,0.5333333332,\freqq1,0.5333333332,\p,0.2844444443,\amp1,0.1]);
o = Synth.new(\1, [\gate,1, \fr1,698,\pa,1,\freq1,0.8,\freqq1,0.8,\p,0.64,\amp1,0.1]);
p = Synth.new(\1, [\gate,1, \fr1,1200,\pa,1,\freq1,1.66666664,\freqq1,1.66666664,\p,1.137777772,\amp1,0.1]);

);
		);180.yield});

	}
);
)


s.record
s.stopRecording

Tdef(\a16).play