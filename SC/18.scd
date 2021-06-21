 (
(
SynthDef(\1,
	{
		arg harm1, freq1, freqq1, fr1, p1, amp1;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(Blip.ar(fr1,harm1), LFSaw.kr(freq1,pi), FSinOsc.kr(freqq1,SinOsc.ar(p1)), 0.3);

		audio =   DecodeB2.ar(18, w, x, y, 0.5);

		Out.ar(0,audio * env * amp1);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\2,
	{
		arg harm2, freq2, freqq2, fr2, p2 , amp2;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr2,harm2), LFSaw.kr(freq2,pi), FSinOsc.kr(freqq2,SinOsc.ar(p2)), 0.3);

		audio =   DecodeB2.ar(9, w, x, y, 0.5);


		Out.ar(0,audio * env * amp2);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\3,
	{
		arg harm3, freq3, freqq3, fr3, p3, amp3;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr3,harm3), LFSaw.kr(freq3,pi), FSinOsc.kr(freqq3,SinOsc.ar(p3)),0.3);

		audio =   DecodeB2.ar(9, w, x, y, 0.5);


		Out.ar(9,audio * env * amp3);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\4,
	{
		arg harm4, freq4, freqq4, fr4, p4, amp4;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr4,harm4), LFSaw.kr(freq4,pi), FSinOsc.kr(freqq4,SinOsc.ar(p4)), 0.3);

		audio =   DecodeB2.ar(10, w, x, y, 0.5);


		Out.ar(0,audio * env * amp4);
}).add
);
////////////////////////////////////////////////
(
SynthDef(\5,
	{
		arg harm5, freq5, freqq5, fr5, p5, amp5;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr5,harm5), LFSaw.kr(freq5,pi), FSinOsc.kr(freqq5,SinOsc.ar(p5)), 0.3);

		audio =   DecodeB2.ar(10, w, x, y, 0.5);


		Out.ar(8,audio * env * amp5);
}).add
);
////////////////////////////////////////////
(
SynthDef(\6,
	{
		arg harm6, freq6, freqq6, fr6, p6, amp6;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr6,harm6), LFSaw.kr(freq6,pi), FSinOsc.kr(freqq6,SinOsc.ar(p6)), 0.3);

		audio =   DecodeB2.ar(17, w, x, y, 0.5);


		Out.ar(0,audio * env * amp6);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\7,
	{
		arg harm7, freq7, freqq7, fr7, p7, amp7;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr7,harm7), LFSaw.kr(freq7,pi), FSinOsc.kr(freqq7,SinOsc.ar(p7)), 0.3);

		audio =   DecodeB2.ar(17, w, x, y, 0.5);


		Out.ar(1,audio * env * amp7);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\8,
	{
		arg harm8, freq8, freqq8, fr8, p8, amp8;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr8,harm8), LFSaw.kr(freq8,pi), FSinOsc.kr(freqq8,SinOsc.ar(p8)), 0.3);

		audio =   DecodeB2.ar(16, w, x, y, 0.5);


		Out.ar(0,audio * env * amp8);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\9,
	{
		arg harm9, freq9, freqq9, fr9, p9, amp9;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr9,harm9), LFSaw.kr(freq9,pi), FSinOsc.kr(freqq9,SinOsc.ar(p9)), 0.3);

		audio =   DecodeB2.ar(16, w, x, y, 0.5);


		Out.ar(2,audio * env * amp9);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\10,
	{
		arg harm10,freq10,freqq10,fr10,p10,amp10;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr10,harm10), LFSaw.kr(freq10,pi), FSinOsc.kr(freqq10,SinOsc.ar(p10)), 0.3);

		audio =   DecodeB2.ar(12, w, x, y, 0.5);


		Out.ar(0,audio * env * amp10);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\11,
	{
		arg harm11, freq11, freqq11, fr11, p11, amp11;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr11,harm11), LFSaw.kr(freq11,pi), FSinOsc.kr(freqq11,SinOsc.ar(p11)), 0.3);

		audio =   DecodeB2.ar(12, w, x, y, 0.5);


		Out.ar(6,audio * env * amp11);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\12,
	{
		arg harm12, freq12, freqq12, fr12, p12, amp12;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr12,harm12), LFSaw.kr(freq12,pi), FSinOsc.kr(freqq12,SinOsc.ar(p12)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(0,audio * env * amp12);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\13,
	{
		arg harm13, freq13, freqq13, fr13, p13, amp13;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr13,harm13), LFSaw.kr(freq13,pi), FSinOsc.kr(freqq13,SinOsc.ar(p13)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(5,audio * env * amp13);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\14,
	{
		arg harm14, freq14, freqq14, fr14, p14, amp14;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr14,harm14), LFSaw.kr(freq14,pi), FSinOsc.kr(freqq14,SinOsc.ar(p14)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(10,audio * env * amp14);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\15,
	{
		arg harm15, freq15, freqq15, fr15, p15, amp15;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr15,harm15), LFSaw.kr(freq15,pi), FSinOsc.kr(freqq15,SinOsc.ar(p15)), 0.3);

		audio =   DecodeB2.ar(10, w, x, y, 0.5);


		Out.ar(0,audio * env * amp15);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\16,
	{
		arg harm16, freq16, freqq16, fr16, p16, amp16;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr16,harm16), LFSaw.kr(freq16,pi), FSinOsc.kr(freqq16,SinOsc.ar(p16)), 0.3);

		audio =   DecodeB2.ar(10, w, x, y, 0.5);


		Out.ar(4,audio * env * amp16);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\17,
	{
		arg harm17, freq17, freqq17, fr17, p17, amp17;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr17,harm17), LFSaw.kr(freq17,pi), FSinOsc.kr(freqq17,SinOsc.ar(p17)), 0.3);

		audio =   DecodeB2.ar(10, w, x, y, 0.5);


		Out.ar(8,audio * env * amp17);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\18,
	{
		arg harm18, freq18, freqq18, fr18, p18, amp18;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr18,harm18), LFSaw.kr(freq18,pi), FSinOsc.kr(freqq18,SinOsc.ar(p18)), 0.3);

		audio =   DecodeB2.ar(16, w, x, y, 0.5);


		Out.ar(0,audio * env * amp18);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\19,
	{
		arg harm19, freq19, freqq19, fr19, p19, amp19;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr19,harm19), LFSaw.kr(freq19,pi), FSinOsc.kr(freqq19,SinOsc.ar(p19)), 0.3);

		audio =   DecodeB2.ar(16, w, x, y, 0.5);


		Out.ar(1,audio * env * amp19);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\20,
	{
		arg harm20, freq20, freqq20, fr20, p20, amp20;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr20,harm20), LFSaw.kr(freq20,pi), FSinOsc.kr(freqq20,SinOsc.ar(p20)), 0.3);

		audio =   DecodeB2.ar(16, w, x, y, 0.5);


		Out.ar(2,audio * env * amp20);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\21,
	{
		arg harm21, freq21, freqq21, fr21, p21, amp21;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(Blip.ar(fr21,harm21), LFSaw.kr(freq21,pi), FSinOsc.kr(freqq21,SinOsc.ar(p21)), 0.3);

		audio =   DecodeB2.ar(12, w, x, y, 0.5);

		Out.ar(0,audio * env * amp21);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\22,
	{
		arg harm22, freq22, freqq22, fr22, p22 , amp22;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr22,harm22), LFSaw.kr(freq22,pi), FSinOsc.kr(freqq22,SinOsc.ar(p22)), 0.3);

		audio =   DecodeB2.ar(12, w, x, y, 0.5);


		Out.ar(3,audio * env * amp22);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\23,
	{
		arg harm23, freq23, freqq23, fr23, p23, amp23;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr23,harm23), LFSaw.kr(freq23,pi), FSinOsc.kr(freqq23,SinOsc.ar(p23)),0.3);

		audio =   DecodeB2.ar(12, w, x, y, 0.5);


		Out.ar(6,audio * env * amp23);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\24,
	{
		arg harm24, freq24, freqq24, fr24, p24, amp24;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr24,harm24), LFSaw.kr(freq24,pi), FSinOsc.kr(freqq24,SinOsc.ar(p24)), 0.3);

		audio =   DecodeB2.ar(6, w, x, y, 0.5);


		Out.ar(0,audio * env * amp24);
}).add
);
////////////////////////////////////////////////
(
SynthDef(\25,
	{
		arg harm25, freq25, freqq25, fr25, p25, amp25;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr25,harm25), LFSaw.kr(freq25,pi), FSinOsc.kr(freqq25,SinOsc.ar(p25)), 0.3);

		audio =   DecodeB2.ar(6, w, x, y, 0.5);


		Out.ar(6,audio * env * amp25);
}).add
);
////////////////////////////////////////////
(
SynthDef(\26,
	{
		arg harm26, freq26, freqq26, fr26, p26, amp26;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr26,harm26), LFSaw.kr(freq26,pi), FSinOsc.kr(freqq26,SinOsc.ar(p26)), 0.3);

		audio =   DecodeB2.ar(6, w, x, y, 0.5);


		Out.ar(12,audio * env * amp26);
}).add
);
////////////////////////////////////////////////////////
(
(
SynthDef(\27,
	{
		arg harm27, freq27, freqq27, fr27, p27, amp27;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr27,harm27), LFSaw.kr(freq27,pi), FSinOsc.kr(freqq27,SinOsc.ar(p27)), 0.3);

		audio =   DecodeB2.ar(9, w, x, y, 0.5);


		Out.ar(2,audio * env * amp27);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\28,
	{
		arg harm28, freq28, freqq28, fr28, p28, amp28;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr28,harm28), LFSaw.kr(freq28,pi), FSinOsc.kr(freqq28,SinOsc.ar(p28)), 0.3);

		audio =   DecodeB2.ar(9, w, x, y, 0.5);


		Out.ar(4,audio * env * amp28);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\29,
	{
		arg harm29, freq29, freqq29, fr29, p29, amp29;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr29,harm29), LFSaw.kr(freq29,pi), FSinOsc.kr(freqq29,SinOsc.ar(p29)), 0.3);

		audio =   DecodeB2.ar(9, w, x, y, 0.5);


		Out.ar(0,audio * env * amp29);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\30,
	{
		arg harm30,freq30,freqq30,fr30,p30,amp30;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr30,harm30), LFSaw.kr(freq30,pi), FSinOsc.kr(freqq30,SinOsc.ar(p30)), 0.3);

		audio =   DecodeB2.ar(9, w, x, y, 0.5);


		Out.ar(1,audio * env * amp30);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\31,
	{
		arg harm31, freq31, freqq31, fr31, p31, amp31;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr31,harm31), LFSaw.kr(freq31,pi), FSinOsc.kr(freqq31,SinOsc.ar(p31)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(2,audio * env * amp31);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\32,
	{
		arg harm32, freq32, freqq32, fr32, p32, amp32;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr32,harm32), LFSaw.kr(freq32,pi), FSinOsc.kr(freqq32,SinOsc.ar(p32)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(3,audio * env * amp32);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\33,
	{
		arg harm33, freq33, freqq33, fr33, p33, amp33;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr33,harm33), LFSaw.kr(freq33,pi), FSinOsc.kr(freqq33,SinOsc.ar(p33)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(4,audio * env * amp33);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\34,
	{
		arg harm34, freq34, freqq34, fr34, p34, amp34;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr34,harm34), LFSaw.kr(freq34,pi), FSinOsc.kr(freqq34,SinOsc.ar(p34)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(5,audio * env * amp34);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\35,
	{
		arg harm35, freq35, freqq35, fr35, p35, amp35;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr35,harm35), LFSaw.kr(freq35,pi), FSinOsc.kr(freqq35,SinOsc.ar(p35)), 0.3);

		audio =   DecodeB2.ar(15, w, x, y, 0.5);


		Out.ar(0,audio * env * amp35);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\36,
	{
		arg harm36, freq36, freqq36, fr36, p36, amp36;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr36,harm36), LFSaw.kr(freq36,pi), FSinOsc.kr(freqq36,SinOsc.ar(p36)), 0.3);

		audio =   DecodeB2.ar(15, w, x, y, 0.5);


		Out.ar(2,audio * env * amp36);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\37,
	{
		arg harm37, freq37, freqq37, fr37, p37, amp37;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr37,harm37), LFSaw.kr(freq37,pi), FSinOsc.kr(freqq37,SinOsc.ar(p37)), 0.3);

		audio =   DecodeB2.ar(15, w, x, y, 0.5);


		Out.ar(4,audio * env * amp37);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\38,
	{
		arg harm38, freq38, freqq38, fr38, p38, amp38;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr38,harm38), LFSaw.kr(freq38,pi), FSinOsc.kr(freqq38,SinOsc.ar(p38)), 0.3);

		audio =   DecodeB2.ar(15, w, x, y, 0.5);


		Out.ar(6,audio * env * amp38);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\39,
	{
		arg harm39, freq39, freqq39, fr39, p39, amp39;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr39,harm39), LFSaw.kr(freq39,pi), FSinOsc.kr(freqq39,SinOsc.ar(p39)), 0.3);

		audio =   DecodeB2.ar(12, w, x, y, 0.5);


		Out.ar(0,audio * env * amp39);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\40,
	{
		arg harm40, freq40, freqq40, fr40, p40, amp40;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr40,harm40), LFSaw.kr(freq40,pi), FSinOsc.kr(freqq40,SinOsc.ar(p40)), 0.3);

		audio =   DecodeB2.ar(12, w, x, y, 0.5);


		Out.ar(1,audio * env * amp40);
}).add
);
//////////////////////////////////////////////////////////////
(
SynthDef(\41,
	{
		arg harm41, freq41, freqq41, fr41, p41, amp41;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar(Blip.ar(fr41,harm41), LFSaw.kr(freq41,pi), FSinOsc.kr(freqq41,SinOsc.ar(p41)), 0.3);

		audio =   DecodeB2.ar(12, w, x, y, 0.5);

		Out.ar(0,audio * env * amp41);
}).add
);
//////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\42,
	{
		arg harm42, freq42, freqq42, fr42, p42 , amp42;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr42,harm42), LFSaw.kr(freq42,pi), FSinOsc.kr(freqq42,SinOsc.ar(p42)), 0.3);

		audio =   DecodeB2.ar(12, w, x, y, 0.5);


		Out.ar(0,audio * env * amp42);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\43,
	{
		arg harm43, freq43, freqq43, fr43, p43, amp43;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr43,harm43), LFSaw.kr(freq43,pi), FSinOsc.kr(freqq43,SinOsc.ar(p43)),0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(3,audio * env * amp43);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\44,
	{
		arg harm44, freq44, freqq44, fr44, p44, amp44;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr44,harm44), LFSaw.kr(freq44,pi), FSinOsc.kr(freqq44,SinOsc.ar(p44)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(0,audio * env * amp44);
}).add
);
////////////////////////////////////////////////
(
SynthDef(\45,
	{
		arg harm45, freq45, freqq45, fr45, p45, amp45;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr45,harm45), LFSaw.kr(freq45,pi), FSinOsc.kr(freqq45,SinOsc.ar(p45)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(2,audio * env * amp45);
}).add
);
////////////////////////////////////////////
(
SynthDef(\46,
	{
		arg harm46, freq46, freqq46, fr46, p46, amp46;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr46,harm46), LFSaw.kr(freq46,pi), FSinOsc.kr(freqq46,SinOsc.ar(p46)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(0,audio * env * amp46);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\47,
	{
		arg harm47, freq47, freqq47, fr47, p47, amp47;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr47,harm47), LFSaw.kr(freq47,pi), FSinOsc.kr(freqq47,SinOsc.ar(p47)), 0.3);

		audio =   DecodeB2.ar(6, w, x, y, 0.5);


		Out.ar(3,audio * env * amp47);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\48,
	{
		arg harm48, freq48, freqq48, fr48, p48, amp48;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr48,harm48), LFSaw.kr(freq48,pi), FSinOsc.kr(freqq48,SinOsc.ar(p48)), 0.3);

		audio =   DecodeB2.ar(6, w, x, y, 0.5);


		Out.ar(9,audio * env * amp48);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\49,
	{
		arg harm49, freq49, freqq49, fr49, p49, amp49;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr49,harm49), LFSaw.kr(freq49,pi), FSinOsc.kr(freqq49,SinOsc.ar(p49)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(1,audio * env * amp49);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\50,
	{
		arg harm50,freq50,freqq50,fr50,p50,amp50;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr50,harm50), LFSaw.kr(freq50,pi), FSinOsc.kr(freqq50,SinOsc.ar(p50)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(9,audio * env * amp50);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\51,
	{
		arg harm51, freq51, freqq51, fr51, p51, amp51;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr51,harm51), LFSaw.kr(freq51,pi), FSinOsc.kr(freqq51,SinOsc.ar(p51)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(2,audio * env * amp51);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\52,
	{
		arg harm52, freq52, freqq52, fr52, p52, amp52;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr52,harm52), LFSaw.kr(freq52,pi), FSinOsc.kr(freqq52,SinOsc.ar(p52)), 0.3);

		audio =   DecodeB2.ar(8, w, x, y, 0.5);


		Out.ar(8,audio * env * amp52);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\53,
	{
		arg harm53, freq53, freqq53, fr53, p53, amp53;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr53,harm53), LFSaw.kr(freq53,pi), FSinOsc.kr(freqq53,SinOsc.ar(p53)), 0.3);

		audio =   DecodeB2.ar(6, w, x, y, 0.5);


		Out.ar(4,audio * env * amp53);
}).add
);
////////////////////////////////////////////////////////
(
SynthDef(\54,
	{
		arg harm54, freq54, freqq54, fr54, p54, amp54;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr54,harm54), LFSaw.kr(freq54,pi), FSinOsc.kr(freqq54,SinOsc.ar(p54)), 0.3);

		audio =   DecodeB2.ar(6, w, x, y, 0.5);


		Out.ar(8,audio * env * amp54);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\55,
	{
		arg harm55, freq55, freqq55, fr55, p55, amp55;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr55,harm55), LFSaw.kr(freq55,pi), FSinOsc.kr(freqq55,SinOsc.ar(p55)), 0.3);

		audio =   DecodeB2.ar(6, w, x, y, 0.5);


		Out.ar(0,audio * env * amp55);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef(\56,
	{
		arg harm56, freq56, freqq56, fr56, p56, amp56;
		var audio, env;

		env = EnvGen.kr(Env([0,0.6,0.6,0.9,0.9,0.6,0.6,0],[2,1,1,1,1,1,2]),gate:1, doneAction:2);

		#w, x, y, z = PanB.ar(Blip.ar(fr56,harm56), LFSaw.kr(freq56,pi), FSinOsc.kr(freqq56,SinOsc.ar(p56)), 0.3);

		audio =   DecodeB2.ar(6, w, x, y, 0.5);


		Out.ar(12,audio * env * amp56);
}).add
);
/////////////////////////////////////////////////////////////////////////////////////////////////
SynthDef(\G,
	{
	    arg cutoffG , ampG , c;
		var env, audio;

		env = EnvGen.kr(Env.sine(18, 1),gate:1, doneAction:2);

    audio =  PanAz.ar(
        18,                 // numChans
        LPF.ar(GrayNoise.ar(0.333),cutoffG);,     // in
        SinOsc.kr(c), // pos
        0.5,            // level
        3          // width
    );


		Out.ar(0,audio * env * ampG);
}).add
);
)
///////////////////////////////////////////////////

(
(
Tdef(\a56,
      {
		1.do({((
Pdef(\pG,

 Pbind(*[
    instrument: \G,
         \dur,Pseq([5,4,3,2,3,4,42],inf).trace,
		\cutoffG, Pseq([2,20,200,2000,200,20,2],inf).trace,
					\c, Pexprand(0.3,1,inf).trace,
					\ampG, Prand([1,2],inf).trace

])
).play(quant:1)
)); 0.yield});

		1.do({((

Pdef(\pa1,

 Pbind(*[
    instrument: \1,
        \dur,Prand([3,6,9],inf).trace,
		\freq1, 0.0666666,
		\freqq1, 0.2,
		\fr1, Prand([66.666,200,400],inf).trace,
					\harm1, Pseq([2,4,2,4,4],inf).trace,
		\p1, Pexprand(0.0666666,400,inf).trace,
					\amp1, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});


		 1.do({((
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
)); 3.yield});

				 1.do({((
 Pdef(\pa3,

 Pbind(*[
    instrument: \3,
        \dur,Prand([3,6,9],inf).trace,
		\freq3,0.1333333,
		\freqq3, 0.3,
		\fr3, Prand([133.333,300,533.333],inf).trace,
					\harm3,  Pseq([1,3,2,3,1],inf).trace,
		\p3,  Pexprand(0.1333333,0.5333333,inf).trace,
					\amp3, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

			1.do({((
Pdef(\pa12,

 Pbind(*[
    instrument: \12,
        \dur,Prand([3,6,9],inf).trace,
		\freq12, 0.2,
		\freqq12, 0.4,
		\fr12, Prand([200,400,666.666],inf).trace,
					\harm12,  Pseq([1,3,2,3,1],inf).trace,
		\p12,  Pexprand(0.2,0.666666,inf).trace,
					\amp12, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa13,

 Pbind(*[
    instrument: \13,
        \dur,Prand([3,6,9],inf).trace,
		\freq13, 0.2,
		\freqq13, 0.4,
		\fr13, Prand([200,400,666.666],inf).trace,
					\harm13,  Pseq([1,3,2,3,1],inf).trace,
		\p13,  Pexprand(0.2,0.666666,inf).trace,
					\amp13, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa14,

 Pbind(*[
    instrument: \14,
        \dur,Prand([3,6,9],inf).trace,
		\freq14, 0.2,
		\freqq14, 0.4,
		\fr14, Prand([200,400,666.666],inf).trace,
					\harm14,  Pseq([1,3,2,3,1],inf).trace,
		\p14,  Pexprand(0.2,0.666666,inf).trace,
					\amp14, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

1.do({((
		Pdef(\pa27,

 Pbind(*[
    instrument: \27,
        \dur,Prand([3,6,9],inf).trace,
		\freq27, 0.2666666,
		\freqq27, 0.5,
		\fr27, Prand([266.666,500,800],inf).trace,
					\harm27,  Pseq([1,3,2,3,1],inf).trace,
		\p27,  Pexprand(0.2666666,0.8,inf).trace,
					\amp27, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

		1.do({((
Pdef(\pa28,

 Pbind(*[
    instrument: \28,
        \dur,Prand([3,6,9],inf).trace,
		\freq28, 0.2666666,
		\freqq28, 0.5,
		\fr28, Prand([266.666,500,800],inf).trace,
					\harm28,  Pseq([1,3,2,3,1],inf).trace,
		\p28,  Pexprand(0.2666666,0.8,inf).trace,
					\amp28, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa29,

 Pbind(*[
    instrument: \29,
        \dur,Prand([3,6,9],inf).trace,
		\freq29, 0.2666666,
		\freqq29, 0.5,
		\fr29, Prand([266.666,500,800],inf).trace,
					\harm29,  Pseq([1,3,2,3,1],inf).trace,
		\p29,  Pexprand(0.2666666,0.8,inf).trace,
					\amp29, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa30,

 Pbind(*[
    instrument: \30,
        \dur,Prand([3,6,9],inf).trace,
		\freq30, 0.2666666,
		\freqq30, 0.5,
		\fr30, Prand([266.666,500,800],inf).trace,
					\harm30,  Pseq([1,3,2,3,1],inf).trace,
		\p30,  Pexprand(0.2666666,0.8,inf).trace,
					\amp30, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

		1.do({((
		Pdef(\pa47,

 Pbind(*[
    instrument: \47,
        \dur,Prand([3,6,9],inf).trace,
		\freq47, 0.3333333,
		\freqq47, 0.6,
		\fr47, Prand([333.333,600,933.333],inf).trace,
					\harm47, Pseq([1,3,2,3,1],inf).trace,
		\p47,  Pexprand(0.3333333,0.9333333,inf).trace,
					\amp47, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

		1.do({((
Pdef(\pa48,

 Pbind(*[
    instrument: \48,
        \dur,Prand([3,6,9],inf).trace,
		\freq48, 0.3333333,
		\freqq48, 0.6,
		\fr48, Prand([333.333,600,933.333],inf).trace,
					\harm48, Pseq([1,3,2,3,1],inf).trace,
		\p48,  Pexprand(0.0666666,400,inf).trace,
					\amp48, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

	}
)
);
(
Tdef(\b56,
      {




				 1.do({((
 Pdef(\pa4,

 Pbind(*[
    instrument: \4,
        \dur,Prand([3,6,9],inf).trace,
		\freq4, 0.1333333,
		\freqq4, 0.3,
		\fr4, Prand([133.333,300,533.333],inf).trace,
					\harm4,  Pseq([1,3,2,3,1],inf).trace,
		\p4,  Pexprand(0.1333333,0.5333333,inf).trace,
					\amp4, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

				 1.do({((
 Pdef(\pa5,

 Pbind(*[
    instrument: \5,
        \dur,Prand([3,6,9],inf).trace,
		\freq5, 0.1333333,
		\freqq5, 0.3,
		\fr5, Prand([133.333,300,533.333],inf).trace,
					\harm5,  Pseq([1,3,2,3,1],inf).trace,
		\p5,  Pexprand(0.1333333,0.5333333,inf).trace,
					\amp5, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});


			1.do({((
Pdef(\pa15,

 Pbind(*[
    instrument: \15,
        \dur,Prand([3,6,9],inf).trace,
		\freq15, 0.2,
		\freqq15, 0.4,
		\fr15, Prand([200,400,666.666],inf).trace,
					\harm15,  Pseq([1,3,2,3,1],inf).trace,
		\p15,  Pexprand(0.2,0.666666,inf).trace,
					\amp15, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa16,

 Pbind(*[
    instrument: \16,
        \dur,Prand([3,6,9],inf).trace,
		\freq16, 0.2,
		\freqq16, 0.4,
		\fr16, Prand([200,400,666.666],inf).trace,
					\harm16,  Pseq([1,3,2,3,1],inf).trace,
		\p16,  Pexprand(0.2,0.666666,inf).trace,
					\amp16, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa17,

 Pbind(*[
    instrument: \17,
        \dur,Prand([3,6,9],inf).trace,
		\freq17, 0.2,
		\freqq17, 0.4,
		\fr17, Prand([200,400,666.666],inf).trace,
					\harm17,  Pseq([1,3,2,3,1],inf).trace,
		\p17,  Pexprand(0.2,0.666666,inf).trace,
					\amp17, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

			1.do({((
Pdef(\pa31,

 Pbind(*[
    instrument: \31,
        \dur,Prand([3,6,9],inf).trace,
		\freq31, 0.2666666,
		\freqq31, 0.5,
		\fr31, Prand([266.666,500,800],inf).trace,
					\harm31,  Pseq([1,3,2,3,1],inf).trace,
		\p31,  Pexprand(0.2666666,0.8,inf).trace,
					\amp31, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa32,

 Pbind(*[
    instrument: \32,
        \dur,Prand([3,6,9],inf).trace,
		\freq32, 0.2666666,
		\freqq32, 0.5,
		\fr32, Prand([4266.666,500,800],inf).trace,
					\harm32,  Pseq([1,3,2,3,1],inf).trace,
		\p32,  Pexprand(0.2666666,0.8,inf).trace,
					\amp32, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa33,

 Pbind(*[
    instrument: \33,
        \dur,Prand([3,6,9],inf).trace,
		\freq33, 0.2666666,
		\freqq33, 0.5,
		\fr33, Prand([266.666,500,800],inf).trace,
					\harm33,  Pseq([1,3,2,3,1],inf).trace,
		\p33,  Pexprand(0.2666666,0.8,inf).trace,
					\amp33, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa34,

 Pbind(*[
    instrument: \34,
        \dur,Prand([3,6,9],inf).trace,
		\freq34, 0.2666666,
		\freqq34, 0.5,
		\fr34, Prand([266.666,500,800],inf).trace,
					\harm34,  Pseq([1,3,2,3,1],inf).trace,
		\p34,  Pexprand(0.2666666,0.8,inf).trace,
					\amp34, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

			1.do({((
Pdef(\pa49,

 Pbind(*[
    instrument: \49,
        \dur,Prand([3,6,9],inf).trace,
		\freq49, 0.3333333,
		\freqq49, 0.6,
		\fr49, Prand([333.333,600,933.333],inf).trace,
					\harm9,  Pseq([1,3,2,3,1],inf).trace,
		\p49,  Pexprand(0.0666666,400,inf).trace,
					\amp49, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa50,

 Pbind(*[
    instrument: \50,
        \dur,Prand([3,6,9],inf).trace,
		\freq50, 0.3333333,
		\freqq50, 0.6,
		\fr50, Prand([333.333,600,933.333],inf).trace,
					\harm50,  Pseq([1,3,2,3,1],inf).trace,
		\p50,  Pexprand(0.0666666,400,inf).trace,
					\amp50, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

	}
)
);
(
Tdef(\c56,
      {




				 1.do({((
 Pdef(\pa6,

 Pbind(*[
    instrument: \6,
        \dur,Prand([3,6,9],inf).trace,
		\freq6, 0.1333333,
		\freqq6, 0.3,
		\fr6, Prand([133.333,300,533.333],inf).trace,
					\harm6,  Pseq([1,3,2,3,1],inf).trace,
		\p6,  Pexprand(0.1333333,0.5333333,inf).trace,
					\amp6, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

		1.do({((
		Pdef(\pa7,

 Pbind(*[
    instrument: \7,
        \dur,Prand([3,6,9],inf).trace,
		\freq7, 0.1333333,
		\freqq7, 0.3,
		\fr7, Prand([133.333,300,533.333],inf).trace,
					\harm7,  Pseq([1,3,2,3,1],inf).trace,
		\p7,  Pexprand(0.1333333,0.5333333,inf).trace,
					\amp7, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});




		1.do({((

Pdef(\pa21,

 Pbind(*[
    instrument: \21,
        \dur,Prand([3,6,9],inf).trace,
		\freq21, 0.2,
		\freqq21,0.4,
		\fr21, Prand([200,400,666.666],inf).trace,
					\harm21,  Pseq([1,3,2,3,1],inf).trace,
		\p21,  Pexprand(0.2,0.666666,inf).trace,
					\amp21, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});


		 1.do({((
 Pdef(\pa22,

 Pbind(*[
    instrument: \22,
        \dur,Prand([3,6,9],inf).trace,
		\freq22, 0.2,
		\freqq22, 0.4,
		\fr22, Prand([200,400,666.666],inf).trace,
					\harm22,  Pseq([1,3,2,3,1],inf).trace,
		\p22,  Pexprand(0.2,0.666666,inf).trace,
					\amp22, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

				 1.do({((
 Pdef(\pa23,

 Pbind(*[
    instrument: \23,
        \dur,Prand([3,6,9],inf).trace,
		\freq23, 0.2,
		\freqq23, 0.4,
		\fr23, Prand([200,400,666.666],inf).trace,
					\harm23,  Pseq([1,3,2,3,1],inf).trace,
		\p23,  Pexprand(0.2,0.666666,inf).trace,
					\amp23, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});


			1.do({((
Pdef(\pa35,

 Pbind(*[
    instrument: \35,
        \dur,Prand([3,6,9],inf).trace,
		\freq35, 0.2666666,
		\freqq35, 0.5,
		\fr35, Prand([266.666,500,800],inf).trace,
					\harm35,  Pseq([1,3,2,3,1],inf).trace,
		\p35,  Pexprand(0.2666666,0.8,inf).trace,
					\amp35, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa36,

 Pbind(*[
    instrument: \36,
        \dur,Prand([3,6,9],inf).trace,
		\freq36, 0.2666666,
		\freqq36,0.5,
		\fr36, Prand([266.666,500,800],inf).trace,
					\harm36,  Pseq([1,3,2,3,1],inf).trace,
		\p36,  Pexprand(0.2666666,0.8,inf).trace,
					\amp36, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa37,

 Pbind(*[
    instrument: \37,
        \dur,Prand([3,6,9],inf).trace,
		\freq37, 0.2666666,
		\freqq37, 0.5,
		\fr37, Prand([266.666,500,800],inf).trace,
					\harm37, Pseq([1,3,2,3,1],inf).trace,
		\p37,  Pexprand(0.2666666,0.8,inf).trace,
					\amp37, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa38,

 Pbind(*[
    instrument: \38,
        \dur,Prand([3,6,9],inf).trace,
		\freq38, 0.2666666,
		\freqq38, 0.5,
		\fr38, Prand([266.666,500,800],inf).trace,
					\harm38,  Pseq([1,3,2,3,1],inf).trace,
		\p38,  Pexprand(0.2666666,0.8,inf).trace,
					\amp38, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

			1.do({((
Pdef(\pa51,

 Pbind(*[
    instrument: \51,
        \dur,Prand([3,6,9],inf).trace,
		\freq51, 0.3333333,
		\freqq51, 0.6,
		\fr51, Prand([333.333,600,933.333],inf).trace,
					\harm51,  Pseq([1,3,2,3,1],inf).trace,
		\p51,  Pexprand(0.0666666,400,inf).trace,
					\amp51, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa52,

 Pbind(*[
    instrument: \52,
        \dur,Prand([3,6,9],inf).trace,
		\freq52, 0.3333333,
		\freqq52, 0.6,
		\fr52, Prand([333.333,600,933.333],inf).trace,
					\harm52,  Pseq([1,3,2,3,1],inf).trace,
		\p52, Pexprand(0.0666666,400,inf).trace,
					\amp52, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

	}
)
);

(
Tdef(\d56,
      {



		1.do({((
Pdef(\pa8,

 Pbind(*[
    instrument: \8,
        \dur,Prand([3,6,9],inf).trace,
		\freq8, 0.1333333,
		\freqq8, 0.3,
		\fr8, Prand([133.333,300,533.333],inf).trace,
					\harm8,  Pseq([1,3,2,3,1],inf).trace,
		\p8,  Pexprand(0.1333333,0.5333333,inf).trace,
					\amp8, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa9,

 Pbind(*[
    instrument: \9,
        \dur,Prand([3,6,9],inf).trace,
		\freq9, 0.1333333,
		\freqq9, 0.3,
		\fr9, Prand([133.333,300,533.333],inf).trace,
					\harm9,  Pseq([1,3,2,3,1],inf).trace,
		\p9,  Pexprand(0.1333333,0.5333333,inf).trace,
					\amp9, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

			1.do({((
Pdef(\pa18,

 Pbind(*[
    instrument: \18,
        \dur,Prand([3,6,9],inf).trace,
		\freq18, 0.2,
		\freqq18, 0.4,
		\fr18, Prand([200,400,666.666],inf).trace,
					\harm18,  Pseq([1,3,2,3,1],inf).trace,
		\p18,  Pexprand(0.2,0.666666,inf).trace,
					\amp18, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa19,

 Pbind(*[
    instrument: \19,
        \dur,Prand([3,6,9],inf).trace,
		\freq19,0.2,
		\freqq19, 0.4,
		\fr19, Prand([200,400,666.666],inf).trace,
					\harm19,  Pseq([1,3,2,3,1],inf).trace,
		\p19,  Pexprand(0.2,0.666666,inf).trace,
					\amp19, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa20,

 Pbind(*[
    instrument: \20,
        \dur,Prand([3,6,9],inf).trace,
		\freq20, 0.2,
		\freqq20, 0.4,
		\fr20, Prand([200,400,666.666],inf).trace,
					\harm20,  Pseq([1,3,2,3,1],inf).trace,
		\p20,  Pexprand(0.2,0.666666,inf).trace,
					\amp20, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});


			1.do({((
Pdef(\pa39,

 Pbind(*[
    instrument: \39,
        \dur,Prand([3,6,9],inf).trace,
		\freq39, 0.2666666,
		\freqq39, 0.5,
		\fr39, Prand([266.666,500,800],inf).trace,
					\harm39,  Pseq([1,3,2,3,1],inf).trace,
		\p39,  Pexprand(0.2666666,0.8,inf).trace,
					\amp39, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa40,

 Pbind(*[
    instrument: \40,
        \dur,Prand([3,6,9],inf).trace,
		\freq40, 0.2666666,
		\freqq40, 0.5,
		\fr40, Prand([266.666,500,800],inf).trace,
					\harm40,  Pseq([1,3,2,3,1],inf).trace,
		\p40,  Pexprand(0.2666666,0.8,inf).trace,
					\amp40, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

		1.do({((

Pdef(\pa41,

 Pbind(*[
    instrument: \41,
        \dur,Prand([3,6,9],inf).trace,
		\freq41, 0.2666666,
		\freqq41, 0.5,
		\fr41, Prand([266.666,500,800],inf).trace,
					\harm41, Pseq([1,3,2,3,1],inf).trace,
		\p41,  Pexprand(0.2666666,0.8,inf).trace,
					\amp41, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});


		 1.do({((
 Pdef(\pa42,

 Pbind(*[
    instrument: \42,
        \dur,Prand([3,6,9],inf).trace,
		\freq42, 0.2666666,
		\freqq42, 0.5,
		\fr42, Prand([266.666,500,800],inf).trace,
					\harm42,  Pseq([1,3,2,3,1],inf).trace,
		\p42,  Pexprand(0.2666666,0.8,inf).trace,
					\amp42, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});


			1.do({((
Pdef(\pa53,

 Pbind(*[
    instrument: \53,
        \dur,Prand([3,6,9],inf).trace,
		\freq53, 0.3333333,
		\freqq53, 0.6,
		\fr53, Prand([333.333,600,933.333],inf).trace,
					\harm53,  Pseq([1,3,2,3,1],inf).trace,
		\p53,  Pexprand(0.0666666,400,inf).trace,
					\amp53, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa54,

 Pbind(*[
    instrument: \54,
        \dur,Prand([3,6,9],inf).trace,
		\freq54, 0.3333333,
		\freqq54, 0.6,
		\fr54, Prand([333.333,600,933.333],inf).trace,
					\harm54,  Pseq([1,3,2,3,1],inf).trace,
		\p54,  Pexprand(0.0666666,400,inf).trace,
					\amp54, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});


	}
)
);

(
Tdef(\e56,
      {



			1.do({((
Pdef(\pa10,

 Pbind(*[
    instrument: \10,
        \dur,Prand([3,6,9],inf).trace,
		\freq10, 0.1333333,
		\freqq10, 0.3,
		\fr10, Prand([133.333,300,533.333],inf).trace,
					\harm10,  Pseq([1,3,2,3,1],inf).trace,
		\p10,  Pexprand(0.1333333,0.5333333,inf).trace,
					\amp10, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});
			1.do({((
Pdef(\pa11,

 Pbind(*[
    instrument: \11,
        \dur,Prand([3,6,9],inf).trace,
		\freq11, 0.1333333,
		\freqq11, 0.3,
		\fr11, Prand([133.333,300,533.333],inf).trace,
					\harm11,  Pseq([1,3,2,3,1],inf).trace,
		\p11,  Pexprand(0.1333333,0.5333333,inf).trace,
					\amp11, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});


				 1.do({((
 Pdef(\pa24,

 Pbind(*[
    instrument: \24,
        \dur,Prand([3,6,9],inf).trace,
		\freq24, 0.2,
		\freqq24, 0.4,
		\fr24, Prand([200,400,666.666],inf).trace,
					\harm24,  Pseq([1,3,2,3,1],inf).trace,
		\p24,  Pexprand(0.2,0.666666,inf).trace,
					\amp24, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

				 1.do({((
 Pdef(\pa25,

 Pbind(*[
    instrument: \25,
        \dur,Prand([3,6,9],inf).trace,
		\freq25, 0.2,
		\freqq25, 0.4,
		\fr25, Prand([200,400,666.666],inf).trace,
					\harm25,  Pseq([1,3,2,3,1],inf).trace,
		\p25,  Pexprand(0.2,0.666666,inf).trace,
					\amp25, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

				 1.do({((
 Pdef(\pa26,

 Pbind(*[
    instrument: \26,
        \dur,Prand([3,6,9],inf).trace,
		\freq26, 0.2,
		\freqq26, 0.4,
		\fr26, Prand([200,400,666.666],inf).trace,
					\harm26,  Pseq([1,3,2,3,1],inf).trace,
		\p26,  Pexprand(0.2,0.666666,inf).trace,
					\amp26, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});




				 1.do({((
 Pdef(\pa44,

 Pbind(*[
    instrument: \44,
        \dur,Prand([3,6,9],inf).trace,
		\freq44, 0.2666666,
		\freqq44, 0.5,
		\fr44, Prand([266.666,500,800],inf).trace,
					\harm44,  Pseq([1,3,2,3,1],inf).trace,
		\p44, Pexprand(0.2666666,0.8,inf).trace,
					\amp44, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

				 1.do({((
 Pdef(\pa45,

 Pbind(*[
    instrument: \45,
        \dur,Prand([3,6,9],inf).trace,
		\freq45, 0.2666666,
		\freqq45, 0.5,
		\fr45, Prand([266.666,500,800],inf).trace,
					\harm45,  Pseq([1,3,2,3,1],inf).trace,
		\p45,  Pexprand(0.2666666,0.8,inf).trace,
					\amp45, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

				 1.do({((
 Pdef(\pa46,

 Pbind(*[
    instrument: \46,
        \dur,Prand([3,6,9],inf).trace,
		\freq46, 0.2666666,
		\freqq46, 0.5,
		\fr46, Prand([266.666,500,800],inf).trace,
					\harm46,  Pseq([1,3,2,3,1],inf).trace,
		\p46,  Pexprand(0.2666666,0.8,inf).trace,
					\amp46, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});



		1.do({((
Pdef(\pa55,

 Pbind(*[
    instrument: \55,
        \dur,Prand([3,6,9],inf).trace,
		\freq55, 0.3333333,
		\freqq55, 0.6,
		\fr55, Prand([333.333,600,933.333],inf).trace,
					\harm55,  Pseq([1,3,2,3,1],inf).trace,
		\p55,  Pexprand(0.0666666,400,inf).trace,
					\amp55, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});

		1.do({((
Pdef(\pa56,

 Pbind(*[
    instrument: \56,
        \dur,Prand([3,6,9],inf).trace,
		\freq56, 0.3333333,
		\freqq56, 0.6,
		\fr56, Prand([333.333,600,933.333],inf).trace,
					\harm56, Pseq([1,2,3,2,1,4,5,3,4,2,5,1,2,3,42,5,4,3,5,2,1],inf).trace,
		\p56,  Pexprand(0.0666666,400,inf).trace,
					\amp56, Pexprand(0.333333333,1,inf).trace
])
).play(quant:1)
)); 3.yield});


	}
)
);
)
(
Tdef(\master56,
      {

		1.do({(Tdef(\a56).play); 100.yield});


		 1.do({(Tdef(\b56).play); 200.yield});

				 1.do({(Tdef(\c56).play); 300.yield});

				 1.do({(Tdef(\d56).play); 400.yield});

				 1.do({(Tdef(\d56).play); 500.yield});



	}
)
)
Tdef(\master56).play


Tdef(\master56).play
Tdef(\master56).stop
Tdef(\master56).pause
Tdef(\master56).reset


