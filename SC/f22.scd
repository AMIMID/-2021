(
SynthDef(\1,
	{
		arg  freq1, freqq1,in;
		var audio, sig;

        sig = In.ar(in,1);
		#w, x, y, z = PanB.ar(SinOsc.ar(sig), SinOsc.kr(freq1), SinOsc.kr(freqq1,SinOsc(4)), 0.1);

		audio =   DecodeB2.ar(4, w, x, y, 1);
		Out.ar(0,audio);
}).add
)

(
SynthDef(\2,
	{
		arg   fr1,out,amp=0.1;
		var audio, env;

		env = EnvGen.kr(Env.sine(180,1),gate:1, doneAction:2);


		audio =   SinOsc.ar(fr1);
		Out.ar(out,audio * env * amp);
}).add
)
s.quit

//////////////////////////////////////////////////////////////////////////////////////////////////////
n = Synth.new(\1, [\gate,1,\freq1,40,\freqq1,10,\in,0]);


(
(
a = Synth.new(\2, [\gate,1, \fr1,800, \freq1,10,\freqq1,10,\out,0]);
b = Synth.new(\2, [\gate,1, \fr1,1600,\freq1,30,\freqq1,10,\out,0]);
c = Synth.new(\2, [\gate,1, \fr1,2400,\freq1,40,\freqq1,10,\out,0]);
d = Synth.new(\2, [\gate,1, \fr1,4800,\freq1,20,\freqq1,10,\out,0]);


);
(
m = Synth.new(\2, [\gate,1, \fr1,86, \out,0]);
n = Synth.new(\2, [\gate,1, \fr1,392,\out,0]);
o = Synth.new(\2, [\gate,1, \fr1,698,\out,0]);
p = Synth.new(\2, [\gate,1, \fr1,1200,\out,0]);

);

(
a = Synth.new(\1, [\gate,1, \fr1,500,\pa,2500, \freq1,0.4,\freqq1,0.4,\p,0.16, \amp1,0.01]);
b = Synth.new(\1, [\gate,1, \fr1,1000,\pa,100000,\freq1,0.8,\freqq1,0.8,\p,0.64,\amp1,0.01]);
c = Synth.new(\1, [\gate,1, \fr1,1500,\pa,225000,\freq1,1.2,\freqq1,1.2,\p,1.44,\amp1,0.01]);
d = Synth.new(\1, [\gate,1, \fr1,2000,\pa,400000, \freq1,1.6,\freqq1,1.6,\p,2.56,\amp1,0.01]);
e = Synth.new(\1, [\gate,1, \fr1,2500,\pa,625000,   \freq1,2,\freqq1,2,\p,4,\amp1,0.01]);
f = Synth.new(\1, [\gate,1, \fr1,3000,\pa,900000,   \freq1,2.4,\freqq1,2.4,\p,5.76,\amp1,0.01]);
g = Synth.new(\1, [\gate,1, \fr1,3500,\pa,1225000,  \freq1,2.8,\freqq1,2.8,\p,7.84,\amp1,0.01]);
k = Synth.new(\1, [\gate,1, \fr1,4000,\pa,1600000,  \freq1,3.2,\freqq1,3.2,\p,10.24,\amp1,0.01]);

);
(
m = Synth.new(\1, [\gate,1, \fr1,500,\pa,1,  \freq1,0.4,\freqq1,0.4,\p,0.16, \amp1,0.01]);
n = Synth.new(\1, [\gate,1, \fr1,1000,\pa,1,\freq1,0.8,\freqq1,0.8,\p,0.64,\amp1,0.01]);
o = Synth.new(\1, [\gate,1, \fr1,1500,\pa,1,\freq1,1.2,\freqq1,1.2,\p,1.44,\amp1,0.01]);
p = Synth.new(\1, [\gate,1, \fr1,2000,\pa,1, \freq1,1.6,\freqq1,1.6,\p,2.56,\amp1,0.01]);
q = Synth.new(\1, [\gate,1, \fr1,2500,\pa,1,  \freq1,2,\freqq1,2,\p,4,\amp1,0.01]);
r = Synth.new(\1, [\gate,1, \fr1,3000,\pa,1,  \freq1,2.4,\freqq1,2.4,\p,5.76,\amp1,0.01]);
s = Synth.new(\1, [\gate,1, \fr1,3500,\pa,1,  \freq1,2.8,\freqq1,2.8,\p,7.84,\amp1,0.01]);
t = Synth.new(\1, [\gate,1, \fr1,4000,\pa,1,   \freq1,3.2,\freqq1,3.2,\p,10.24,\amp1,0.01]);

);



)





a.set(\fr,300)
a.set(\freq,0)
a.set(\freq1,1)




//////////////////////////////////////////////////////////////////////////////////////////
Tdef(\a16).play;
//////////////////////////////////////////////////////////////////

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
); 120.yield});

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
); 90.yield});
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
); 90.yield});


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
); 120.yield});

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
////////////////////////////////////////////////////////////
(
Tdef(\b16,
      {
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});
		1.do({(Tdef(\a16).play;); 3240.yield});




	}
);
)
///////////////////////////////////////////////////////////
Tdef(\b16).play














//////////////////////////////////////////////////////////////

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