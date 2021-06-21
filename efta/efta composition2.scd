o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels= 1;


s.record(numChannels:2);
(
(
SynthDef(\sp1,
	{
		arg  freq1, fr1,amp,fr2;
		var audio,mul,env;
		//mul =TExpRand.kr(1,5.32,Dust.kr(44100));
		//env = EnvGen.ar(Env.perc(releaseTime:32),doneAction:2);
		//#w, x, y, z = PanB.ar(SinOsc.ar(fr1*196*1/2*mul,mul:amp),LFSaw.kr(freq1*1/1.33),gain:1);

		//audio =   DecodeB2.ar(1, w, x, y, 1);
		audio = PanAz.ar(2,SinOsc.ar(fr1*1*220+SinOsc.ar(fr2*1*220,mul:Stepper.kr(Impulse.kr(250), 0, 1,430, 1,0.05)),mul:amp),SinOsc.kr(freq1*0.86));

		Out.ar(0,audio*1);
}).add
);
(
SynthDef(\sp2,
	{
		arg  freq1, fr1,amp,fr2;
		var audio,mul,env;
		//mul =TExpRand.kr(1,5.32,Dust.kr(44100));
		//env = EnvGen.ar(Env.perc(releaseTime:32),doneAction:2);
		//#w, x, y, z = PanB.ar(SinOsc.ar(fr1*196*1/2*mul,mul:amp),LFSaw.kr(freq1*1/1.33),gain:1);

		//audio =   DecodeB2.ar(1, w, x, y, 1);
		audio = PanAz.ar(2,SinOsc.ar(fr1*2*220+SinOsc.ar(fr2*2*2200,mul:Stepper.kr(Impulse.kr(250), 0, 1, 430, 1,0.05)),mul:amp),SinOsc.kr(freq1*0.86));

		Out.ar(0,audio*1/2);
}).add
);
(
SynthDef(\sp3,
	{
		arg  freq1, fr1,amp,fr2;
		var audio,mul,env;
		//mul =TExpRand.kr(1,5.32,Dust.kr(44100));
		//env = EnvGen.ar(Env.perc(releaseTime:32),doneAction:2);
		//#w, x, y, z = PanB.ar(SinOsc.ar(fr1*196*1/2*mul,mul:amp),LFSaw.kr(freq1*1/1.33),gain:1);

		//audio =   DecodeB2.ar(1, w, x, y, 1);
		audio = PanAz.ar(2,SinOsc.ar(fr1*3*220+SinOsc.ar(fr2*3*220,mul:Stepper.kr(Impulse.kr(250), 0, 1, 430, 1,0.05)),mul:amp),SinOsc.kr(freq1*0.86));

		Out.ar(0,audio*1/3);
}).add
);
(
SynthDef(\sp4,
	{
		arg  freq1, fr1,amp,fr2;
		var audio,mul,env;
		//mul =TExpRand.kr(1,5.32,Dust.kr(44100));
		//env = EnvGen.ar(Env.perc(releaseTime:32),doneAction:2);
		//#w, x, y, z = PanB.ar(SinOsc.ar(fr1*196*1/2*mul,mul:amp),LFSaw.kr(freq1*1/1.33),gain:1);

		//audio =   DecodeB2.ar(1, w, x, y, 1);
		audio = PanAz.ar(2,SinOsc.ar(fr1*4*220+SinOsc.ar(fr2*4*220,mul:Stepper.kr(Impulse.kr(250), 0, 1, 430, 1,0.05)),mul:amp),SinOsc.kr(freq1*0.86));

		Out.ar(0,audio*1/4);
}).add
);
(
SynthDef(\sp5,
	{
		arg  freq1, fr1,amp,fr2;
		var audio,mul,env;
		//mul =TExpRand.kr(1,5.32,Dust.kr(44100));
		//env = EnvGen.ar(Env.perc(releaseTime:32),doneAction:2);
		//#w, x, y, z = PanB.ar(SinOsc.ar(fr1*196*1/2*mul,mul:amp),LFSaw.kr(freq1*1/1.33),gain:1);

		//audio =   DecodeB2.ar(1, w, x, y, 1);
		audio = PanAz.ar(2,SinOsc.ar(fr1*5*220+SinOsc.ar(fr2*5*220,mul:Stepper.kr(Impulse.kr(250), 0, 1, 430, 1,0.05)),mul:amp),SinOsc.kr(freq1*0.86));

		Out.ar(0,audio*1/5);
}).add
);
(
SynthDef(\sp6,
	{
		arg  freq1, fr1,amp,fr2;
		var audio,mul,env;
		//mul =TExpRand.kr(1,5.32,Dust.kr(44100));
		//env = EnvGen.ar(Env.perc(releaseTime:32),doneAction:2);
		//#w, x, y, z = PanB.ar(SinOsc.ar(fr1*196*1/2*mul,mul:amp),LFSaw.kr(freq1*1/1.33),gain:1);

		//audio =   DecodeB2.ar(1, w, x, y, 1);
		audio = PanAz.ar(2,SinOsc.ar(fr1*6*220+SinOsc.ar(fr2*6*220,mul:Stepper.kr(Impulse.kr(250), 0, 1, 430, 1,0.05)),mul:amp),SinOsc.kr(freq1*0.86));

		Out.ar(0,audio*1/6);
}).add
);
(
SynthDef(\sp7,
	{
		arg  freq1, fr1,amp,fr2;
		var audio,mul,env;
		//mul =TExpRand.kr(1,5.32,Dust.kr(44100));
		//env = EnvGen.ar(Env.perc(releaseTime:32),doneAction:2);
		//#w, x, y, z = PanB.ar(SinOsc.ar(fr1*196*1/2*mul,mul:amp),LFSaw.kr(freq1*1/1.33),gain:1);

		//audio =   DecodeB2.ar(1, w, x, y, 1);
		audio = PanAz.ar(2,SinOsc.ar(fr1*7*220+SinOsc.ar(fr2*7*220,mul:Stepper.kr(Impulse.kr(250), 0, 1, 430, 1,0.05)),mul:amp),SinOsc.kr(freq1*0.86));

		Out.ar(0,audio*1/7);
}).add
);
(
SynthDef(\sp8,
	{
		arg  freq1, fr1,amp,fr2;
		var audio,mul,env;
		//mul =TExpRand.kr(1,5.32,Dust.kr(44100));
		//env = EnvGen.ar(Env.perc(releaseTime:32),doneAction:2);
		//#w, x, y, z = PanB.ar(SinOsc.ar(fr1*196*1/2*mul,mul:amp),LFSaw.kr(freq1*1/1.33),gain:1);

		//audio =   DecodeB2.ar(1, w, x, y, 1);
		audio = PanAz.ar(2,SinOsc.ar(fr1*8*220+SinOsc.ar(fr2*8*220,mul:Stepper.kr(Impulse.kr(250), 0, 1, 430, 1,0.05)),mul:amp),SinOsc.kr(freq1*0.86));

		Out.ar(0,audio*1/8);
}).add
);
(
SynthDef(\sp9,
	{
		arg  freq1, fr1,amp,fr2;
		var audio,mul,env;
		//mul =TExpRand.kr(1,5.32,Dust.kr(44100));
		//env = EnvGen.ar(Env.perc(releaseTime:32),doneAction:2);
		//#w, x, y, z = PanB.ar(SinOsc.ar(fr1*196*1/2*mul,mul:amp),LFSaw.kr(freq1*1/1.33),gain:1);

		//audio =   DecodeB2.ar(1, w, x, y, 1);
		audio = PanAz.ar(2,SinOsc.ar(fr1*9*220+SinOsc.ar(fr2*9*220,mul:Stepper.kr(Impulse.kr(250), 0, 1, 430, 1,0.05)),mul:amp),SinOsc.kr(freq1*0.86));

		Out.ar(0,audio*1/9);
}).add
);
//////////////////////////////////////////////////////////////////////////////////
(


Tdef(\pattern_tria1,

      {

			1.do({(
(

 Synth.new(\sp1, [\gate,1,\fr1,1, \freq1,1,\amp,1,\fr2,1.43]);
Synth.new(\sp1, [\gate,1, \fr1,2, \freq1,2,\amp,1/2,\fr2,2.43]);
 Synth.new(\sp1, [\gate,1, \fr1,3, \freq1,3,\amp,1/3,\fr2,3.43]);
Synth.new(\sp1, [\gate,1, \fr1,4, \freq1,4,\amp,1/4,\fr2,4.43]);
 Synth.new(\sp1, [\gate,1, \fr1,5, \freq1,5,\amp,1/5,\fr2,5.43]);
 Synth.new(\sp1, [\gate,1, \fr1,6, \freq1,6,\amp,1/6,\fr2,6.43]);
 Synth.new(\sp1, [\gate,1,\fr1,7, \freq1,7,\amp,1/7,\fr2,7.43]);
Synth.new(\sp1, [\gate,1, \fr1,8, \freq1,8,\amp,1/8,\fr2,8.43]);
Synth.new(\sp1, [\gate,1, \fr1,9, \freq1,9,\amp,1/9,\fr2,9.43]);

);
		);		1.72.yield});
		1.do({(
(

 Synth.new(\sp2, [\gate,1,\fr1,1, \freq1,1,\amp,1,\fr2,1.43]);
Synth.new(\sp2, [\gate,1, \fr1,2, \freq1,2,\amp,1/2,\fr2,2.43]);
 Synth.new(\sp2, [\gate,1, \fr1,3, \freq1,3,\amp,1/3,\fr2,3.43]);
Synth.new(\sp2, [\gate,1, \fr1,4, \freq1,4,\amp,1/4,\fr2,4.43]);
 Synth.new(\sp2, [\gate,1, \fr1,5, \freq1,5,\amp,1/5,\fr2,5.43]);
 Synth.new(\sp2, [\gate,1, \fr1,6, \freq1,6,\amp,1/6,\fr2,6.43]);
 Synth.new(\sp2, [\gate,1,\fr1,7, \freq1,7,\amp,1/7,\fr2,7.43]);
Synth.new(\sp2, [\gate,1, \fr1,8, \freq1,8,\amp,1/8,\fr2,8.43]);
Synth.new(\sp2, [\gate,1, \fr1,9, \freq1,9,\amp,1/9,\fr2,9.43]);

);
		);		1.72.yield});
		1.do({(
(

 Synth.new(\sp3, [\gate,1,\fr1,1, \freq1,1,\amp,1,\fr2,1.43]);
Synth.new(\sp3, [\gate,1, \fr1,2, \freq1,2,\amp,1/2,\fr2,2.43]);
 Synth.new(\sp3, [\gate,1, \fr1,3, \freq1,3,\amp,1/3,\fr2,3.43]);
Synth.new(\sp3, [\gate,1, \fr1,4, \freq1,4,\amp,1/4,\fr2,4.43]);
 Synth.new(\sp3, [\gate,1, \fr1,5, \freq1,5,\amp,1/5,\fr2,5.43]);
 Synth.new(\sp3, [\gate,1, \fr1,6, \freq1,6,\amp,1/6,\fr2,6.43]);
 Synth.new(\sp3, [\gate,1,\fr1,7, \freq1,7,\amp,1/7,\fr2,7.43]);
Synth.new(\sp3, [\gate,1, \fr1,8, \freq1,8,\amp,1/8,\fr2,8.43]);
Synth.new(\sp3, [\gate,1, \fr1,9, \freq1,9,\amp,1/9,\fr2,9.43]);

);
		);		1.72.yield});
		1.do({(
(

 Synth.new(\sp4, [\gate,1,\fr1,1, \freq1,1,\amp,1,\fr2,1.43]);
Synth.new(\sp4, [\gate,1, \fr1,2, \freq1,2,\amp,1/2,\fr2,2.43]);
 Synth.new(\sp4, [\gate,1, \fr1,3, \freq1,3,\amp,1/3,\fr2,3.43]);
Synth.new(\sp4, [\gate,1, \fr1,4, \freq1,4,\amp,1/4,\fr2,4.43]);
 Synth.new(\sp4, [\gate,1, \fr1,5, \freq1,5,\amp,1/5,\fr2,5.43]);
 Synth.new(\sp4, [\gate,1, \fr1,6, \freq1,6,\amp,1/6,\fr2,6.43]);
 Synth.new(\sp4, [\gate,1,\fr1,7, \freq1,7,\amp,1/7,\fr2,7.43]);
Synth.new(\sp4, [\gate,1, \fr1,8, \freq1,8,\amp,1/8,\fr2,8.43]);
Synth.new(\sp4, [\gate,1, \fr1,9, \freq1,9,\amp,1/9,\fr2,9.43]);

);
		);		1.72.yield});

		1.do({(
(

 Synth.new(\sp5, [\gate,1,\fr1,1, \freq1,1,\amp,1,\fr2,1.43]);
Synth.new(\sp5, [\gate,1, \fr1,2, \freq1,2,\amp,1/2,\fr2,2.43]);
 Synth.new(\sp5, [\gate,1, \fr1,3, \freq1,3,\amp,1/3,\fr2,3.43]);
Synth.new(\sp5, [\gate,1, \fr1,4, \freq1,4,\amp,1/4,\fr2,4.43]);
 Synth.new(\sp5, [\gate,1, \fr1,5, \freq1,5,\amp,1/5,\fr2,5.43]);
 Synth.new(\sp5, [\gate,1, \fr1,6, \freq1,6,\amp,1/6,\fr2,6.43]);
 Synth.new(\sp5, [\gate,1,\fr1,7, \freq1,7,\amp,1/7,\fr2,7.43]);
Synth.new(\sp5, [\gate,1, \fr1,8, \freq1,8,\amp,1/8,\fr2,8.43]);
Synth.new(\sp5, [\gate,1, \fr1,9, \freq1,9,\amp,1/9,\fr2,9.43]);

);
		);		1.72.yield});


		1.do({(
(

 Synth.new(\sp6, [\gate,1,\fr1,1, \freq1,1,\amp,1,\fr2,1.43]);
Synth.new(\sp6, [\gate,1, \fr1,2, \freq1,2,\amp,1/2,\fr2,2.43]);
 Synth.new(\sp6, [\gate,1, \fr1,3, \freq1,3,\amp,1/3,\fr2,3.43]);
Synth.new(\sp6, [\gate,1, \fr1,4, \freq1,4,\amp,1/4,\fr2,4.43]);
 Synth.new(\sp6, [\gate,1, \fr1,5, \freq1,5,\amp,1/5,\fr2,5.43]);
 Synth.new(\sp6, [\gate,1, \fr1,6, \freq1,6,\amp,1/6,\fr2,6.43]);
 Synth.new(\sp6, [\gate,1,\fr1,7, \freq1,7,\amp,1/7,\fr2,7.43]);
Synth.new(\sp6, [\gate,1, \fr1,8, \freq1,8,\amp,1/8,\fr2,8.43]);
Synth.new(\sp6, [\gate,1, \fr1,9, \freq1,9,\amp,1/9,\fr2,9.43]);

);
		);		1.72.yield});


		1.do({(
(

 Synth.new(\sp7, [\gate,1,\fr1,1, \freq1,1,\amp,1,\fr2,1.43]);
Synth.new(\sp7, [\gate,1, \fr1,2, \freq1,2,\amp,1/2,\fr2,2.43]);
 Synth.new(\sp7, [\gate,1, \fr1,3, \freq1,3,\amp,1/3,\fr2,3.43]);
Synth.new(\sp7, [\gate,1, \fr1,4, \freq1,4,\amp,1/4,\fr2,4.43]);
 Synth.new(\sp7, [\gate,1, \fr1,5, \freq1,5,\amp,1/5,\fr2,5.43]);
 Synth.new(\sp7, [\gate,1, \fr1,6, \freq1,6,\amp,1/6,\fr2,6.43]);
 Synth.new(\sp7, [\gate,1,\fr1,7, \freq1,7,\amp,1/7,\fr2,7.43]);
Synth.new(\sp7, [\gate,1, \fr1,8, \freq1,8,\amp,1/8,\fr2,8.43]);
Synth.new(\sp7, [\gate,1, \fr1,9, \freq1,9,\amp,1/9,\fr2,9.43]);

);
		);		1.72.yield});


		1.do({(
(

 Synth.new(\sp8, [\gate,1,\fr1,1, \freq1,1,\amp,1,\fr2,1.43]);
Synth.new(\sp8, [\gate,1, \fr1,2, \freq1,2,\amp,1/2,\fr2,2.43]);
 Synth.new(\sp8, [\gate,1, \fr1,3, \freq1,3,\amp,1/3,\fr2,3.43]);
Synth.new(\sp8, [\gate,1, \fr1,4, \freq1,4,\amp,1/4,\fr2,4.43]);
 Synth.new(\sp8, [\gate,1, \fr1,5, \freq1,5,\amp,1/5,\fr2,5.43]);
 Synth.new(\sp8, [\gate,1, \fr1,6, \freq1,6,\amp,1/6,\fr2,6.43]);
 Synth.new(\sp8, [\gate,1,\fr1,7, \freq1,7,\amp,1/7,\fr2,7.43]);
Synth.new(\sp8, [\gate,1, \fr1,8, \freq1,8,\amp,1/8,\fr2,8.43]);
Synth.new(\sp8, [\gate,1, \fr1,9, \freq1,9,\amp,1/9,\fr2,9.43]);

);
		);		1.72.yield});


		1.do({(
(

 Synth.new(\sp9, [\gate,1,\fr1,1, \freq1,1,\amp,1,\fr2,1.43]);
Synth.new(\sp9, [\gate,1, \fr1,2, \freq1,2,\amp,1/2,\fr2,2.43]);
 Synth.new(\sp9, [\gate,1, \fr1,3, \freq1,3,\amp,1/3,\fr2,3.43]);
Synth.new(\sp9, [\gate,1, \fr1,4, \freq1,4,\amp,1/4,\fr2,4.43]);
 Synth.new(\sp9, [\gate,1, \fr1,5, \freq1,5,\amp,1/5,\fr2,5.43]);
 Synth.new(\sp9, [\gate,1, \fr1,6, \freq1,6,\amp,1/6,\fr2,6.43]);
 Synth.new(\sp9, [\gate,1,\fr1,7, \freq1,7,\amp,1/7,\fr2,7.43]);
Synth.new(\sp9, [\gate,1, \fr1,8, \freq1,8,\amp,1/8,\fr2,8.43]);
Synth.new(\sp9, [\gate,1, \fr1,9, \freq1,9,\amp,1/9,\fr2,9.43]);

);
		);		1.72.yield});



	}
);
)
)

(
Tdef(\pattern_tria1).play;
//Synth.new(\tessera1);
//s.record(numChannels:2);
)
TempoClock.default.tempo =1;
