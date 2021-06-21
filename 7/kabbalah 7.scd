s.options.numOutputBusChannels=4
(
(
SynthDef(\gott_mensch_geist,
	{
		arg pan,verstand1,gericht1,glorie1,
	     	verstand2,gericht2,glorie2,
		    verstand3,gericht3,glorie3,mul,decay1,attack1,
		  weisheit1,gnade1,triumph1,
		  weisheit2,gnade2,triumph2,
		  weisheit3,gnade3,triumph3,
		  krone1,schoenheit1,reich1,
		  krone2,schoenheit2,reich2,
		  krone3,schoenheit3,reich3;
		var geist1,geist2,geist3,
		    d1,d2,d3,
		    mensch1,mensch2,mensch3,
		    d4,d5,d6,
		    gott1,gott2,gott3,
		    d7,d8,d9,
		    audio,sig,env;

		d1=Complex(glorie1,gericht1).abs;
		d2=Complex(glorie2,gericht2).abs;
		d3=Complex(glorie3,gericht3).abs;
		geist1=Complex(d1,verstand1).abs;
		geist2=Complex(d2,verstand2).abs;
		geist3=Complex(d3,verstand3).abs;

		d4=Complex(triumph1,gnade1).abs;
		d5=Complex(triumph2,gnade2).abs;
		d6=Complex(triumph3,gnade3).abs;
		mensch1=Complex(d4,weisheit1).abs;
		mensch2=Complex(d4,weisheit2).abs;
	    mensch3=Complex(d6,weisheit3).abs;

		d7=Complex(reich1,schoenheit1).abs;
		d8=Complex(reich2,schoenheit2).abs;
		d9=Complex(reich3,schoenheit3).abs;
		gott1=Complex(d7,krone1).abs;
		gott2=Complex(d8,krone2).abs;
		gott3=Complex(d9,krone3).abs;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack1,0.3,0.3,decay1]),gate:1, doneAction:2);

		sig=

		 SinOsc.ar(freq:SinOsc.ar(geist1*mul*5,geist2,geist3/5),
			phase:SinOsc.ar(mensch1*mul*5,mensch2,mensch3/5),
			mul:SinOsc.ar(gott1*mul*5,gott2,gott3/5))
		+

		 SinOsc.ar(freq:SinOsc.ar(geist1*mul*3,geist2,geist3/3),
			phase:SinOsc.ar(mensch1*mul*3,mensch2,mensch3/3),
			mul:SinOsc.ar(gott1*mul*3,gott2,gott3/3))
		+

		SinOsc.ar(freq:SinOsc.ar(geist1*mul*2,geist2,geist3/2),
			phase:SinOsc.ar(mensch1*mul*2,mensch2,mensch3/2),
			mul:SinOsc.ar(gott1*mul*2,gott2,gott3/2))
		+
			SinOsc.ar(freq:SinOsc.ar(geist1*mul,geist2,geist3),
			phase:SinOsc.ar(mensch1*mul,mensch2,mensch3),
				mul:SinOsc.ar(gott1*mul,gott2,gott3));

		#w,x,y,z=PanB.ar(sig,pan,0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(0,audio*env);
}).add
);
(
SynthDef(\gott_mensch_geist1,
	{
		arg pan1,verstand4,gericht4,glorie4,
	     	verstand5,gericht5,glorie5,
		    verstand6,gericht6,glorie6,mul1,decay2,attack2,
		  weisheit4,gnade4,triumph4,
		  weisheit5,gnade5,triumph5,
		  weisheit6,gnade6,triumph6,
		  krone4,schoenheit4,reich4,
		  krone5,schoenheit5,reich5,
		  krone6,schoenheit6,reich6;
		var geist1,geist2,geist3,
		    d1,d2,d3,
		    mensch1,mensch2,mensch3,
		    d4,d5,d6,
		    gott1,gott2,gott3,
		    d7,d8,d9,
		    audio,sig,env;

		d1=Complex(glorie4,gericht4).abs;
		d2=Complex(glorie5,gericht5).abs;
		d3=Complex(glorie6,gericht6).abs;
		geist1=Complex(d1,verstand4).abs;
		geist2=Complex(d2,verstand5).abs;
		geist3=Complex(d3,verstand6).abs;

		d4=Complex(triumph4,gnade4).abs;
		d5=Complex(triumph5,gnade5).abs;
		d6=Complex(triumph6,gnade6).abs;
		mensch1=Complex(d4,weisheit4).abs;
		mensch2=Complex(d4,weisheit5).abs;
	    mensch3=Complex(d6,weisheit6).abs;

		d7=Complex(reich4,schoenheit4).abs;
		d8=Complex(reich5,schoenheit5).abs;
		d9=Complex(reich6,schoenheit6).abs;
		gott1=Complex(d7,krone4).abs;
		gott2=Complex(d8,krone5).abs;
		gott3=Complex(d9,krone6).abs;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack2,0.3,0.3,decay2]),gate:1, doneAction:2);

		sig=

		 SinOsc.ar(freq:SinOsc.ar(geist1*mul1*10,geist2,geist3/10),
			phase:SinOsc.ar(mensch1*mul1*10,mensch2,mensch3/10),
			mul:SinOsc.ar(gott1*mul1*10,gott2,gott3/10))
		+

		 SinOsc.ar(freq:SinOsc.ar(geist1*mul1*6,geist2,geist3/6),
			phase:SinOsc.ar(mensch1*mul1*6,mensch2,mensch3/6),
			mul:SinOsc.ar(gott1*mul1*6,gott2,gott3/6))
		+

		SinOsc.ar(freq:SinOsc.ar(geist1*mul1*4,geist2,geist3/4),
			phase:SinOsc.ar(mensch1*mul1*4,mensch2,mensch3/4),
			mul:SinOsc.ar(gott1*mul1*4,gott2,gott3/4))
		+
			SinOsc.ar(freq:SinOsc.ar(geist1*mul1*2,geist2,geist3/2),
			phase:SinOsc.ar(mensch1*mul1*2,mensch2,mensch3/2),
				mul:SinOsc.ar(gott1*mul1*2,gott2,gott3/2));

		#w,x,y,z=PanB.ar(sig,pan1,0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(1,audio*env);
}).add
);
(
SynthDef(\gott_mensch_geist2,
	{
		arg pan2,verstand7,gericht7,glorie7,
	     	verstand8,gericht8,glorie8,
		    verstand9,gericht9,glorie9,mul2,decay3,attack3,
		  weisheit7,gnade7,triumph7,
		  weisheit8,gnade8,triumph8,
		  weisheit9,gnade9,triumph9,
		  krone7,schoenheit9,reich7,
		  krone8,schoenheit8,reich8,
		  krone9,schoenheit7,reich9;
		var geist1,geist2,geist3,
		    d1,d2,d3,
		    mensch1,mensch2,mensch3,
		    d4,d5,d6,
		    gott1,gott2,gott3,
		    d7,d8,d9,
		    audio,sig,env;

		d1=Complex(glorie7,gericht7).abs;
		d2=Complex(glorie8,gericht8).abs;
		d3=Complex(glorie9,gericht9).abs;
		geist1=Complex(d1,verstand7).abs;
		geist2=Complex(d2,verstand8).abs;
		geist3=Complex(d3,verstand9).abs;

		d4=Complex(triumph7,gnade7).abs;
		d5=Complex(triumph8,gnade8).abs;
		d6=Complex(triumph9,gnade9).abs;
		mensch1=Complex(d4,weisheit7).abs;
		mensch2=Complex(d4,weisheit8).abs;
	    mensch3=Complex(d6,weisheit9).abs;

		d7=Complex(reich7,schoenheit7).abs;
		d8=Complex(reich8,schoenheit8).abs;
		d9=Complex(reich9,schoenheit9).abs;
		gott1=Complex(d7,krone7).abs;
		gott2=Complex(d8,krone8).abs;
		gott3=Complex(d9,krone9).abs;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack3,0.3,0.3,decay3]),gate:1, doneAction:2);

		sig=

		 SinOsc.ar(freq:SinOsc.ar(geist1*mul2*15,geist2,geist3/15),
			phase:SinOsc.ar(mensch1*mul2*15,mensch2,mensch3/15),
			mul:SinOsc.ar(gott1*mul2*15,gott2,gott3/15))
		+

		 SinOsc.ar(freq:SinOsc.ar(geist1*mul2*9,geist2,geist3/9),
			phase:SinOsc.ar(mensch1*mul2*9,mensch2,mensch3/9),
			mul:SinOsc.ar(gott1*mul2*9,gott2,gott3/9))
		+

		SinOsc.ar(freq:SinOsc.ar(geist1*mul2*6,geist2,geist3/6),
			phase:SinOsc.ar(mensch1*mul2*6,mensch2,mensch3/6),
			mul:SinOsc.ar(gott1*mul2*6,gott2,gott3/6))
		+
			SinOsc.ar(freq:SinOsc.ar(geist1*mul2*3,geist2,geist3/3),
			phase:SinOsc.ar(mensch1*mul2*3,mensch2,mensch3)/3,
				mul:SinOsc.ar(gott1*mul2*3,gott2,gott3/3));

		#w,x,y,z=PanB.ar(sig,pan2,0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(2,audio*env);
}).add
);
(
SynthDef(\gott_mensch_geist3,
	{
		arg pan3,verstand10,gericht10,glorie10,
	     	verstand11,gericht11,glorie11,
		    verstand12,gericht12,glorie12,mul3,decay4,attack4,
		  weisheit10,gnade10,triumph10,
		  weisheit11,gnade11,triumph11,
		  weisheit12,gnade12,triumph12,
		  krone10,schoenheit10,reich10,
		  krone11,schoenheit11,reich11,
		  krone12,schoenheit12,reich12;
		var geist1,geist2,geist3,
		    d1,d2,d3,
		    mensch1,mensch2,mensch3,
		    d4,d5,d6,
		    gott1,gott2,gott3,
		    d7,d8,d9,
		    audio,sig,env;

		d1=Complex(glorie10,gericht10).abs;
		d2=Complex(glorie11,gericht11).abs;
		d3=Complex(glorie12,gericht12).abs;
		geist1=Complex(d1,verstand10).abs;
		geist2=Complex(d2,verstand11).abs;
		geist3=Complex(d3,verstand12).abs;

		d4=Complex(triumph10,gnade10).abs;
		d5=Complex(triumph11,gnade11).abs;
		d6=Complex(triumph12,gnade12).abs;
		mensch1=Complex(d4,weisheit10).abs;
		mensch2=Complex(d4,weisheit11).abs;
	    mensch3=Complex(d6,weisheit12).abs;

		d7=Complex(reich10,schoenheit10).abs;
		d8=Complex(reich11,schoenheit11).abs;
		d9=Complex(reich12,schoenheit12).abs;
		gott1=Complex(d7,krone10).abs;
		gott2=Complex(d8,krone11).abs;
		gott3=Complex(d9,krone12).abs;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack4,0.3,0.3,decay4]),gate:1, doneAction:2);

		sig=

		 SinOsc.ar(freq:SinOsc.ar(geist1*mul3*20,geist2,geist3/20),
			phase:SinOsc.ar(mensch1*mul3*20,mensch2,mensch3/20),
			mul:SinOsc.ar(gott1*mul3*20,gott2,gott3/20))
		+

		 SinOsc.ar(freq:SinOsc.ar(geist1*mul3*12,geist2,geist3/12),
			phase:SinOsc.ar(mensch1*mul3*12,mensch2,mensch3/12),
			mul:SinOsc.ar(gott1*mul3*12,gott2,gott3/12))
		+

		SinOsc.ar(freq:SinOsc.ar(geist1*mul3*8,geist2,geist3/8),
			phase:SinOsc.ar(mensch1*mul3*8,mensch2,mensch3/8),
			mul:SinOsc.ar(gott1*mul3*8,gott2,gott3/8))
		+
			SinOsc.ar(freq:SinOsc.ar(geist1*mul3*4,geist2,geist3/4),
			phase:SinOsc.ar(mensch1*mul3*4,mensch2,mensch3/4),
				mul:SinOsc.ar(gott1*mul3*4,gott2,gott3/4));

		#w,x,y,z=PanB.ar(sig,pan3,0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(3,audio*env);
}).add
);
)

(
Tdef(\pattern,
      {
		1.do({((

Pdef(\p_gott_mensch_geist,

 Pbind(*[
    instrument: \gott_mensch_geist,
        \dur,Pexprand(1,3.4,150),
		\glorie1,Pexprand(1,4,150),
		\gericht1,Pexprand(1,4,150),
		\verstand1,Pexprand(1,4,150),
		\glorie2,Pexprand(1pi,2pi,150),
		\gericht2,Pexprand(1pi,2pi,150),
		\verstand2,Pexprand(1pi,2pi,150),
		\glorie3,Pexprand(1,2,150),
		\gericht3,Pexprand(1,2,150),
		\verstand3,Pexprand(1,2,150),
		\triumph1,Pexprand(1,4,150),
		\gnade1,Pexprand(1,4,150),
		\weisheit1,Pexprand(1,4,150),
		\triumph2,Pexprand(1pi,2pi,150),
		\gnade2,Pexprand(1pi,2pi,150),
		\weisheit2,Pexprand(1pi,2pi,150),
		\triumph3,Pexprand(1,2,150),
		\gnade3,Pexprand(1,2,150),
		\weisheit3,Pexprand(1,2,150),
		\reich1,Pexprand(1,4,150),
	    \schoenheit1,Pexprand(1,4,150),
		\krone1,Pexprand(1,4,150),
		\reich2,Pexprand(1pi,2pi,150),
		\schoenheit2,Pexprand(1pi,2pi,150),
		\krone2,Pexprand(1pi,2pi,150),
		\reich3,Pexprand(1,2,150),
		\schoenheit3,Pexprand(1,2,150),
		\krone3,Pexprand(1,2,150),
		\pan,Pexprand(0.01,1,150).trace,
					\mul,Pexprand(10,40,150).trace,
					\decay1,Pexprand(1,4,150).trace,
					\attack1,Pexprand(0.01,0.1,150).trace
])

).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_gott_mensch_geist1,

 Pbind(*[
    instrument: \gott_mensch_geist1,
        \dur,Pexprand(1,3.4,150),
		\glorie4,Pexprand(1,4,150),
		\gericht4,Pexprand(1,4,150),
		\verstand4,Pexprand(1,4,150),
		\glorie5,Pexprand(1pi,2pi,150),
		\gericht5,Pexprand(1pi,2pi,150),
		\verstand5,Pexprand(1pi,2pi,150),
		\glorie6,Pexprand(1,2,150),
		\gericht6,Pexprand(1,2,150),
		\verstand6,Pexprand(1,2,150),
		\triumph4,Pexprand(1,4,150),
		\gnade4,Pexprand(1,4,150),
		\weisheit4,Pexprand(1,4,150),
		\triumph5,Pexprand(1pi,2pi,150),
		\gnade5,Pexprand(1pi,2pi,150),
		\weisheit5,Pexprand(1pi,2pi,150),
		\triumph6,Pexprand(1,2,150),
		\gnade6,Pexprand(1,2,150),
		\weisheit6,Pexprand(1,2,150),
		\reich4,Pexprand(1,4,150),
	    \schoenheit4,Pexprand(1,4,150),
		\krone4,Pexprand(1,4,150),
		\reich5,Pexprand(1pi,2pi,150),
		\schoenheit5,Pexprand(1pi,2pi,150),
		\krone5,Pexprand(1pi,2pi,150),
		\reich6,Pexprand(1,2,150),
		\schoenheit6,Pexprand(1,2,150),
		\krone6,Pexprand(1,2,150),
		\pan1,Pexprand(0.01,1,150).trace,
					\mul1,Pexprand(10,40,150).trace,
					\decay2,Pexprand(1,4,150).trace,
					\attack2,Pexprand(0.01,0.1,150).trace
])

).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_gott_mensch_geist2,

 Pbind(*[
    instrument: \gott_mensch_geist2,
        \dur,Pexprand(1,3.4,150),
		\glorie7,Pexprand(1,4,150),
		\gericht7,Pexprand(1,4,150),
		\verstand7,Pexprand(1,4,150),
		\glorie8,Pexprand(1pi,2pi,150),
		\gericht8,Pexprand(1pi,2pi,150),
		\verstand8,Pexprand(1pi,2pi,150),
		\glorie9,Pexprand(1,2,150),
		\gericht9,Pexprand(1,2,150),
		\verstand9,Pexprand(1,2,150),
		\triumph7,Pexprand(1,4,150),
		\gnade7,Pexprand(1,4,150),
		\weisheit7,Pexprand(1,4,150),
		\triumph8,Pexprand(1pi,2pi,150),
		\gnade8,Pexprand(1pi,2pi,150),
		\weisheit8,Pexprand(1pi,2pi,150),
		\triumph9,Pexprand(1,2,150),
		\gnade9,Pexprand(1,2,150),
		\weisheit9,Pexprand(1,2,150),
		\reich7,Pexprand(1,4,150),
	    \schoenheit7,Pexprand(1,4,150),
		\krone7,Pexprand(1,4,150),
		\reich8,Pexprand(1pi,2pi,150),
		\schoenheit8,Pexprand(1pi,2pi,150),
		\krone8,Pexprand(1pi,2pi,150),
		\reich9,Pexprand(1,2,150),
		\schoenheit9,Pexprand(1,2,150),
		\krone9,Pexprand(1,2,150),
		\pan2,Pexprand(0.01,1,150).trace,
					\mul2,Pexprand(10,40,150).trace,
					\decay3,Pexprand(1,4,150).trace,
					\attack3,Pexprand(0.01,0.1,150).trace
])

).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_gott_mensch_geist3,

 Pbind(*[
    instrument: \gott_mensch_geist3,
        \dur,Pexprand(1,3.4,150),
		\glorie10,Pexprand(1,4,150),
		\gericht10,Pexprand(1,4,150),
		\verstand10,Pexprand(1,4,150),
		\glorie11,Pexprand(1pi,2pi,150),
		\gericht11,Pexprand(1pi,2pi,150),
		\verstand11,Pexprand(1pi,2pi,150),
		\glorie12,Pexprand(1,2,150),
		\gericht12,Pexprand(1,2,150),
		\verstand12,Pexprand(1,2,150),
		\triumph10,Pexprand(1,4,150),
		\gnade10,Pexprand(1,4,150),
		\weisheit10,Pexprand(1,4,150),
		\triumph11,Pexprand(1pi,2pi,150),
		\gnade11,Pexprand(1pi,2pi,150),
		\weisheit11,Pexprand(1pi,2pi,150),
		\triumph12,Pexprand(1,2,150),
		\gnade12,Pexprand(1,2,150),
		\weisheit12,Pexprand(1,2,150),
		\reich10,Pexprand(1,4,150),
	    \schoenheit10,Pexprand(1,4,150),
		\krone10,Pexprand(1,4,150),
		\reich11,Pexprand(1pi,2pi,150),
		\schoenheit11,Pexprand(1pi,2pi,150),
		\krone11,Pexprand(1pi,2pi,150),
		\reich12,Pexprand(1,2,150),
		\schoenheit12,Pexprand(1,2,150),
		\krone12,Pexprand(1,2,150),
		\pan3,Pexprand(0.01,1,150).trace,
					\mul3,Pexprand(10,40,150).trace,
					\decay4,Pexprand(1,4,150).trace,
					\attack4,Pexprand(0.01,0.1,150).trace
])

).play(quant:1)
)); 0.yield});
		}
)
)

Tdef(\pattern).play
Tdef(\pattern).stop
Tdef(\pattern).pause
Tdef(\pattern).reset