s.scope
s.boot

Tdef(\b16).play;
(
(
SynthDef(\1,
	{
		arg  freq1, freqq1, fr1, amp1, p, out=0, add;
		var audio, env;

		env = EnvGen.kr(Env.linen(3,4,60,level:0.2,curve:\sine),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar( BLowPass.ar(SinOsc.ar(fr1,SinOsc.ar(LFSaw.kr(1,1000)),add: add), MouseX.kr(25, 20000),
                                                                 Line.ar(0.0, 1.0, 180),
                                                                                         0.5),
			 SinOsc.kr(freq1), SinOsc.kr(freqq1,p *1pi), 0.1);

		audio =   DecodeB2.ar(2, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\2,
	{
		arg  freq1, freqq1, fr1, amp1, p, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(3,4,60,level:0.2,curve:\sine),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar( BLowPass.ar(SinOsc.ar(fr1,add:0.5), MouseY.kr(20, 6000),
                                                                  Line.ar(0.0, 1.0, 180),
                                                                                         0.5),
			 SinOsc.kr(freq1), SinOsc.kr(freqq1,p *1pi), 0.1);

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
);
s.scope
(
a = Synth.new(\2, [\gate,1, \fr1,2880, \freq1,1.6,\freqq1,1.6,\p,0.01]);
b = Synth.new(\2, [\gate,1, \fr1,2560, \freq1,1.5,\freqq1,1.5,\p,0.04]);
c = Synth.new(\2, [\gate,1, \fr1,2240, \freq1,1.4,\freqq1,1.4,\p,0.09]);
d = Synth.new(\2, [\gate,1, \fr1,1960, \freq1,1.3,\freqq1,1.3,\p,0.16]);
e = Synth.new(\2, [\gate,1, \fr1,1920, \freq1,1.2,\freqq1,1.2,\p,0.25]);
f = Synth.new(\2, [\gate,1, \fr1,1680, \freq1,1.1,\freqq1,1.1,\p,0.36]);
g = Synth.new(\2, [\gate,1, \fr1,1600, \freq1,1,\freqq1,1,\p,0.49]);
k = Synth.new(\2, [\gate,1, \fr1,1440, \freq1,0.9,\freqq1,0.9,\p,0.64]);
l = Synth.new(\2, [\gate,1, \fr1,1400, \freq1,0.8,\freqq1,0.8,\p,0.81]);
m = Synth.new(\2, [\gate,1, \fr1,1280, \freq1,0.7,\freqq1,0.7,\p,1]);
m = Synth.new(\2, [\gate,1, \fr1,1200, \freq1,0.6,\freqq1,0.6,\p,1.21]);
o = Synth.new(\2, [\gate,1, \fr1,1120, \freq1,0.5,\freqq1,0.5,\p,1.44]);
p = Synth.new(\2, [\gate,1, \fr1,1000, \freq1,0.4,\freqq1,0.4,\p,1.69]);
q = Synth.new(\2, [\gate,1, \fr1,960, \freq1,0.3,\freqq1,0.3,\p,1.96]);
r = Synth.new(\2, [\gate,1, \fr1,840, \freq1,0.2,\freqq1,\p,2.56]);
s = Synth.new(\2, [\gate,1, \fr1,640, \freq1,0.1,\freqq1,\p,2.56]);
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
		1.do({(
a = Synth.new(\1, [ \fr1,40, \freq1,0.4,\freqq1,0.4]);
b = Synth.new(\1, [ \fr1,80, \freq1,0.8,\freqq1,0.8]);
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
); 1800.yield});


			1.do({(
a = Synth.new(\1, [ \fr1,40, \freq1,0.4,\freqq1,0.4]);
b = Synth.new(\1, [ \fr1,80, \freq1,0.8,\freqq1,0.8]);
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
); 1800.yield});

		1.do({(
(
a = Synth.new(\1, [ \fr1,40, \freq1,0.4,\freqq1,0.4]);
b = Synth.new(\1, [ \fr1,80, \freq1,0.8,\freqq1,0.8]);
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
);

(
a = Synth.new(\1, [\gate,1, \fr1,2880, \freq1,1.6,\freqq1,1.6,\p,0.01]);
b = Synth.new(\1, [\gate,1, \fr1,2560, \freq1,1.5,\freqq1,1.5,\p,0.04]);
c = Synth.new(\1, [\gate,1, \fr1,2240, \freq1,1.4,\freqq1,1.4,\p,0.09]);
d = Synth.new(\1, [\gate,1, \fr1,1960, \freq1,1.3,\freqq1,1.3,\p,0.16]);
e = Synth.new(\1, [\gate,1, \fr1,1920, \freq1,1.2,\freqq1,1.2,\p,0.25]);
f = Synth.new(\1, [\gate,1, \fr1,1680, \freq1,1.1,\freqq1,1.1,\p,0.36]);
g = Synth.new(\1, [\gate,1, \fr1,1600, \freq1,1,\freqq1,1,\p,0.49]);
k = Synth.new(\1, [\gate,1, \fr1,1440, \freq1,0.9,\freqq1,0.9,\p,0.64]);
l = Synth.new(\1, [\gate,1, \fr1,1400, \freq1,0.8,\freqq1,0.8,\p,0.81]);
m = Synth.new(\1, [\gate,1, \fr1,1280, \freq1,0.7,\freqq1,0.7,\p,1]);
m = Synth.new(\1, [\gate,1, \fr1,1200, \freq1,0.6,\freqq1,0.6,\p,1.21]);
o = Synth.new(\1, [\gate,1, \fr1,1120, \freq1,0.5,\freqq1,0.5,\p,1.44]);
p = Synth.new(\1, [\gate,1, \fr1,1000, \freq1,0.4,\freqq1,0.4,\p,1.69]);
q = Synth.new(\1, [\gate,1, \fr1,960, \freq1,0.3,\freqq1,0.3,\p,1.96]);
r = Synth.new(\1, [\gate,1, \fr1,840, \freq1,0.2,\freqq1,\p,2.56]);
s = Synth.new(\1, [\gate,1, \fr1,640, \freq1,0.1,\freqq1,\p,2.56]);
)
); 1800.yield});
			1.do({(
a = Synth.new(\1, [ \fr1,40, \freq1,0.4,\freqq1,0.4]);
b = Synth.new(\1, [ \fr1,80, \freq1,0.8,\freqq1,0.8]);
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
); 1800.yield});

	}
);
)

Tdef(\b16).play;


(
Tdef(\b16,
      {
		1.do({(Tdef(\a16).play;); 180.yield});
		1.do({(Tdef(\a16).play;); 180.yield});
		1.do({(Tdef(\a16).play;); 180.yield});



	}
);
)

(
a = Synth.new(\1, [ \fr1,40, \freq1,0.4,\freqq1,0.4]);
b = Synth.new(\1, [ \fr1,80, \freq1,0.8,\freqq1,0.8]);
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