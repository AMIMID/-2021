(
SynthDef(\1,
	{
		arg  freq1, freqq1, fr1, amp1, p, pa;
		var audio, env;

		env = EnvGen.kr(Env.sine(180,1),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(SinOsc.ar(fr1,pa), SinOsc.kr(freq1), SinOsc.kr(freqq1,p), 0.1);

		audio =   DecodeB2.ar(9, w, x, y, 1);
		Out.ar(0,audio * env * amp1 * 1);
}).add
)
(
(
a = Synth.new(\1, [\gate,1, \fr1,100,\pa,1000, \freq1,1,\freqq1,1,\p,1, \amp1,0.1]);
b = Synth.new(\1, [\gate,1, \fr1,200,\pa,4000,\freq1,2,\freqq1,2,\p,2,\amp1,0.1]);
c = Synth.new(\1, [\gate,1, \fr1,300,\pa,9000,\freq1,3,\freqq1,3,\p,9,\amp1,0.1]);
d = Synth.new(\1, [\gate,1, \fr1,400,\pa,16000, \freq1,4,\freqq1,4,\p,16,\amp1,0.1]);
e = Synth.new(\1, [\gate,1, \fr1,500,\pa,25000,  \freq1,5,\freqq1,5,\p,25,\amp1,0.1]);
f = Synth.new(\1, [\gate,1, \fr1,600,\pa,36000,  \freq1,6,\freqq1,6,\p,36,\amp1,0.1]);
g = Synth.new(\1, [\gate,1, \fr1,700,\pa,49000,  \freq1,7,\freqq1,7,\p,49,\amp1,0.1]);
k = Synth.new(\1, [\gate,1, \fr1,800,\pa,64000,  \freq1,8,\freqq1,8,\p,64,\amp1,0.1]);
l = Synth.new(\1, [\gate,1, \fr1,900,\pa,81000,  \freq1,9,\freqq1,9,\p,81,\amp1,0.1]);

);
(
m = Synth.new(\1, [\gate,1, \fr1,100,\pa,1, \freq1,1,\freqq1,1,\p,1, \amp1,0.1]);
n = Synth.new(\1, [\gate,1, \fr1,200,\pa,1, \freq1,2,\freqq1,2,\p,2,\amp1,0.1]);
o = Synth.new(\1, [\gate,1, \fr1,300,\pa,1, \freq1,3,\freqq1,3,\p,9,\amp1,0.1]);
p = Synth.new(\1, [\gate,1, \fr1,400,\pa,1, \freq1,4,\freqq1,4,\p,16,\amp1,0.1]);
q = Synth.new(\1, [\gate,1, \fr1,500,\pa,1, \freq1,5,\freqq1,5,\p,25,\amp1,0.1]);
r = Synth.new(\1, [\gate,1, \fr1,600,\pa,1, \freq1,6,\freqq1,6,\p,36,\amp1,0.1]);
s = Synth.new(\1, [\gate,1, \fr1,700,\pa,1, \freq1,7,\freqq1,7,\p,49,\amp1,0.1]);
t = Synth.new(\1, [\gate,1, \fr1,800,\pa,1, \freq1,8,\freqq1,8,\p,64,\amp1,0.1]);
u = Synth.new(\1, [\gate,1, \fr1,900,\pa,1, \freq1,9,\freqq1,9,\p,81,\amp1,0.1]);

);
(
m = Synth.new(\1, [\gate,1, \fr1,10,\pa,1, \freq1,1,\freqq1,1,\p,1, \amp1,0.1]);
n = Synth.new(\1, [\gate,1, \fr1,20,\pa,1, \freq1,2,\freqq1,2,\p,2,\amp1,0.1]);
o = Synth.new(\1, [\gate,1, \fr1,30,\pa,1, \freq1,3,\freqq1,3,\p,9,\amp1,0.1]);
p = Synth.new(\1, [\gate,1, \fr1,40,\pa,1, \freq1,4,\freqq1,4,\p,16,\amp1,0.1]);
q = Synth.new(\1, [\gate,1, \fr1,50,\pa,1, \freq1,5,\freqq1,5,\p,25,\amp1,0.1]);
r = Synth.new(\1, [\gate,1, \fr1,60,\pa,1, \freq1,6,\freqq1,6,\p,36,\amp1,0.1]);
s = Synth.new(\1, [\gate,1, \fr1,70,\pa,1, \freq1,7,\freqq1,7,\p,49,\amp1,0.1]);
t = Synth.new(\1, [\gate,1, \fr1,80,\pa,1, \freq1,8,\freqq1,8,\p,64,\amp1,0.1]);
u = Synth.new(\1, [\gate,1, \fr1,90,\pa,1, \freq1,9,\freqq1,9,\p,81,\amp1,0.1]);

);




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
		\fr1,  800,
					\amp1,

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
		\fr1,   720,
					\amp1,

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
		\fr1,   640,
					\amp1,

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
		\fr1,  600,
					\amp1,
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
		\fr1,560,
					\amp1,

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
		\fr1,  480,
					\amp1,
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
		\fr1,  400,
					\amp1,
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
					\fr1,360,
					\amp1,


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
					\fr1,320,
					\amp1,

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
					\fr1,280,
					\amp1,

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
					\fr1,240,
					\amp1,


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
			\fr1,200,
					\amp1,


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
					\fr1,160,
					\amp1,
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
					\fr1,120,
					\amp1,


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
					\fr1,80,
					\amp1,

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
					\fr1,40,
					\amp1,

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