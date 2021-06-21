s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels= 4;


s.record(numChannels:2);
(
(
SynthDef(\sp1,
	{
		arg  freq1, fr1,amp,fr2,mul,decay;
		var audio,env;
		env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		//#w, x, y, z = PanB.ar(SinOsc.ar(fr1*196*1/2*mul,mul:amp),LFSaw.kr(freq1*1/1.33),gain:1);

		//audio =   DecodeB2.ar(1, w, x, y, 1);
		audio = PanAz.ar(2,SinOsc.ar(fr1*220+SinOsc.ar(fr2*220,mul:mul),mul:amp),SinOsc.kr(freq1*0.86));

		Out.ar(0,audio*env);
}).add
);
//////////////////////////////////////////////////////////////////////////////////
(


Tdef(\pattern_tria1,

      {

				1.do({((

a= Pdef(\p_efta1,
 Pbind(*[
    instrument: \sp1,
					\dur,Pexprand(0.086,0.1,inf),
					\decay,0.1,
							\fr1,1,
							\freq1,1,
							\fr2,1.43,
							\amp,1,
					\mul, Pseg( Pseq([1, 20000], inf), Pseq([16*0.86, 16*0.86],inf), Pseq([\exp, \exp],inf));

])

).play(quant:1)
)); 0.yield});
		1.do({((

				b= Pdef(\p_efta1,
 Pbind(*[
    instrument: \sp2,
					\dur,Pexprand(0.086,0.1,inf),
					\decay,0.1,
							\fr1,2,
							\freq1,2,
							\fr2,2.43,
							\amp,1/2,
					\mul, Pseg( Pseq([1, 20000], inf), Pseq([16*0.86, 16*0.86],inf), Pseq([\exp, \exp],inf));

])

).play(quant:1)
)); 0.yield});
		1.do({((
		c= Pdef(\p_efta3,
 Pbind(*[
    instrument: \sp1,
					\dur,Pexprand(0.086,0.1,inf),
					\decay,0.1,
							\fr1,3,
							\freq1,3,
							\fr2,3.43,
							\amp,1/3,
					\mul, Pseg( Pseq([1, 20000], inf), Pseq([16*0.86, 16*0.86],inf), Pseq([\exp, \exp],inf));

])

).play(quant:1)
)); 0.yield});
		1.do({((
d= Pdef(\p_efta4,
 Pbind(*[
    instrument: \sp1,
					\dur,Pexprand(0.086,0.1,inf),
					\decay,0.1,
							\fr1,4,
							\freq1,4,
							\fr2,4.43,
							\amp,1/4,
					\mul, Pseg( Pseq([1, 20000], inf), Pseq([16*0.86, 16*0.86],inf), Pseq([\exp, \exp],inf));

])

).play(quant:1)
)); 0.yield});
		1.do({((
e= Pdef(\p_efta5,
 Pbind(*[
    instrument: \sp1,
					\dur,Pexprand(0.086,0.1,inf),
					\decay,0.1,
							\fr1,5,
							\freq1,5,
							\fr2,5.43,
							\amp,1/5,
					\mul, Pseg( Pseq([1, 20000], inf), Pseq([16*0.86, 16*0.86],inf), Pseq([\exp, \exp],inf));
])

).play(quant:1)
)); 0.yield});
		1.do({((
f= Pdef(\p_efta6,
 Pbind(*[
    instrument: \sp1,
					\dur,Pexprand(0.086,0.1,inf),
					\decay,0.1,
							\fr1,6,
							\freq1,6,
							\fr2,6.43,
							\amp,1/6,
					\mul, Pseg( Pseq([1, 20000], inf), Pseq([16*0.86, 16*0.86],inf), Pseq([\exp, \exp],inf));

])

).play(quant:1)
)); 0.yield});
		1.do({((
g= Pdef(\p_efta7,
 Pbind(*[
    instrument: \sp1,
					\dur,Pexprand(0.086,0.1,inf),
					\decay,0.1,
							\fr1,7,
							\freq1,7,
							\fr2,7.43,
							\amp,1/8,
					\mul, Pseg( Pseq([1, 20000], inf), Pseq([16*0.86, 16*0.86],inf), Pseq([\exp, \exp],inf));

])

).play(quant:1)
)); 0.yield});
		1.do({((
k= Pdef(\p_efta8,
 Pbind(*[
    instrument: \sp1,
					\dur,Pexprand(0.086,0.1,inf),
					\decay,0.1,
							\fr1,8,
							\freq1,8,
							\fr2,8.43,
							\amp,1/8,
					\mul, Pseg( Pseq([1, 20000], inf), Pseq([16*0.86, 16*0.86],inf), Pseq([\exp, \exp],inf));

])

).play(quant:1)
)); 0.yield});
		1.do({((

i= Pdef(\p_efta9,
 Pbind(*[
    instrument: \sp1,
					\dur,Pexprand(0.086,0.1,inf),
					\decay,0.1,
							\fr1,8,
							\freq1,8,
							\fr2,9.43,
							\amp,1/9,
					\mul, Pseg( Pseq([1, 20000], inf), Pseq([16*0.86, 16*0.86],inf), Pseq([\exp, \exp],inf));

])

).play(quant:1)
)); 0.yield});


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
