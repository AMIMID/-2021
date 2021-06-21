s.boot
s.scope
(
SynthDef(\1,
	{
		arg  freq1, freqq1, fr1;
		var audio, env;

		env = EnvGen.kr(Env.sine(60,1),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(SinOsc.ar(fr1), SinOsc.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(18, w, x, y, 1);

		Out.ar(0,audio * env );
}).add
)



(
z = {
    BHiPass.ar(
        SoundIn.ar([0,1]),
        MouseX.kr(10, 20000, \exponential), // cutoff freq.
        MouseY.kr(0.0, 1.0, \linear), // rq
        0.5); // mul
}.play
)


(
(
a = Synth.new(\1, [\gate,1, \fr1,40, \freq1,0.1,\freqq1,0.1]);
b = Synth.new(\1, [\gate,1, \fr1,80, \freq1,0.2,\freqq1,0.2]);
c = Synth.new(\1, [\gate,1, \fr1,120, \freq1,0.3,\freqq1,0.3]);
d = Synth.new(\1, [\gate,1, \fr1,160, \freq1,0.4,\freqq1,0.4]);
e = Synth.new(\1, [\gate,1, \fr1,200, \freq1,0.5,\freqq1,0.5]);
f = Synth.new(\1, [\gate,1, \fr1,240, \freq1,0.6,\freqq1,0.6]);
g = Synth.new(\1, [\gate,1, \fr1,280, \freq1,0.7,\freqq1,0.7]);
k = Synth.new(\1, [\gate,1, \fr1,320, \freq1,0.8,\freqq1,0.8]);
l = Synth.new(\1, [\gate,1, \fr1,360, \freq1,0.9,\freqq1,0.9]);
m = Synth.new(\1, [\gate,1, \fr1,400, \freq1,1,\freqq1,1]);
m = Synth.new(\1, [\gate,1, \fr1,480, \freq1,1.1,\freqq1,1.1]);
o = Synth.new(\1, [\gate,1, \fr1,560, \freq1,1.2,\freqq1,1.2]);
p = Synth.new(\1, [\gate,1, \fr1,600, \freq1,1.3,\freqq1,1.3]);
q = Synth.new(\1, [\gate,1, \fr1,640, \freq1,1.4,\freqq1,1.4]);
r = Synth.new(\1, [\gate,1, \fr1,720, \freq1,1.5,\freqq1,1.5]);
s = Synth.new(\1, [\gate,1, \fr1,800, \freq1,1.6,\freqq1,1.6]);
);

(
a = Synth.new(\1, [\gate,1, \fr1,2880, \freq1,1.6,\freqq1,1.6]);
b = Synth.new(\1, [\gate,1, \fr1,2560, \freq1,1.5,\freqq1,1.5]);
c = Synth.new(\1, [\gate,1, \fr1,2240, \freq1,1.4,\freqq1,1.4]);
d = Synth.new(\1, [\gate,1, \fr1,1960, \freq1,1.3,\freqq1,1.3]);
e = Synth.new(\1, [\gate,1, \fr1,1920, \freq1,1.2,\freqq1,1.2]);
f = Synth.new(\1, [\gate,1, \fr1,1680, \freq1,1.1,\freqq1,1.1]);
g = Synth.new(\1, [\gate,1, \fr1,1600, \freq1,1,\freqq1,1]);
k = Synth.new(\1, [\gate,1, \fr1,1440, \freq1,0.9,\freqq1,0.9]);
l = Synth.new(\1, [\gate,1, \fr1,1400, \freq1,0.8,\freqq1,0.8]);
m = Synth.new(\1, [\gate,1, \fr1,1280, \freq1,0.7,\freqq1,0.7]);
m = Synth.new(\1, [\gate,1, \fr1,1200, \freq1,0.6,\freqq1,0.6]);
o = Synth.new(\1, [\gate,1, \fr1,1120, \freq1,0.5,\freqq1,0.5]);
p = Synth.new(\1, [\gate,1, \fr1,1000, \freq1,0.4,\freqq1,0.4]);
q = Synth.new(\1, [\gate,1, \fr1,960, \freq1,0.3,\freqq1,0.3]);
r = Synth.new(\1, [\gate,1, \fr1,840, \freq1,0.2,\freqq1,0.2]);
s = Synth.new(\1, [\gate,1, \fr1,640, \freq1,0.1,\freqq1,0.1]);
)
)
a.set(\fr,300)
a.set(\freq,0)
a.set(\freq1,1)




(
Tdef(\b16,
      {





		1.do({((
Pdef(\pa16,

 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 0.1,
		\freqq1,0.1,
		\fr1,  800

])
					).play(quant:1)
)); 0.yield});

		1.do({((
Pdef(\pa15,

 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 0.2,
		\freqq1, 0.2,
		\fr1,   720

					])
).play(quant:1)
)); 0.yield});

		1.do({((
Pdef(\pa14,

 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1,0.3,
		\freqq1,0.3,
		\fr1,   640

])
).play(quant:1)
)); 0.yield});


			1.do({((
Pdef(\pa13,

 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 0.4,
		\freqq1, 0.4,
		\fr1,  600
])
).play(quant:1)
)); 0.yield});

		 1.do({((
 Pdef(\pa12,

 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1,0.5,
		\freqq1,0.5,
		\fr1,560

])
).play(quant:1)
)); 0.yield});


		 1.do({((
 Pdef(\pa11,

 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 0.6,
		\freqq1, 0.6,
		\fr1,  480
])
).play(quant:1)
)); 0.yield});

		1.do({((
Pdef(\pa10,

 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 0.7,
		\freqq1,0.7,
		\fr1,  400
])
			).play(quant:1)
)); 0.yield});




			1.do({((

Pdef(\pa9,
 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 0.8,
		\freqq1,0.8,
					\fr1,360


])
).play(quant:1)
)); 0.yield});



			1.do({((

Pdef(\pa8,
 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 0.9,
		\freqq1,0.9,
					\fr1,320

])
).play(quant:1)
)); 0.yield});



			1.do({((

Pdef(\pa7,
 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 1,
		\freqq1,1,
					\fr1,280

])
).play(quant:1)
)); 0.yield});



			1.do({((

Pdef(\pa6,
 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 1.1,
		\freqq1,1.1,
					\fr1,240


])
).play(quant:1)
)); 0.yield});



			1.do({((

Pdef(\pa5,
 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 1.2,
		\freqq1,1.2,
			\fr1,200


])
).play(quant:1)
)); 0.yield});



			1.do({((

Pdef(\pa4,
 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 1.3,
		\freqq1,1.3,
					\fr1,160
])
).play(quant:1)
)); 0.yield});



			1.do({((

Pdef(\pa3,
 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 1.4,
		\freqq1,1.4,
					\fr1,120


])
).play(quant:1)
)); 0.yield});



			1.do({((

Pdef(\pa2,
 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 1.5,
		\freqq1,1.5,
					\fr1,80

])
).play(quant:1)
)); 0.yield});



			1.do({((

Pdef(\pa1,
 Pbind(*[
    instrument: \1,
					\dur,180,
		\freq1, 1.6,
		\freqq1,1.6,
					\fr1,40

])
).play(quant:1)
)); 0.yield});






	}
);
)




Tdef(\b16).play;
Prand([3,6,9],10).trace

(
Tdef(\a16,
      {
		1.do({(Tdef(\b16).play;); 300.yield});
		1.do({(Tdef(\b16).play;); 300.yield});
1.do({(Tdef(\b16).play;); 300.yield});
1.do({(Tdef(\b16).play;); 300.yield});
1.do({(Tdef(\b16).play;); 300.yield});
1.do({(Tdef(\b16).play;); 300.yield});


	}
);
)

Tdef(\a16).play;


(
Tdef(\a16,
      {
		1.do({(); 0.yield});
		1.do({(); 0.yield});
1.do({().play;); 0.yield});
1.do({().play;); 0.yield});
1.do({().play;); 0.yield});
1.do({().play;); 0.yield});


	}
);
)