(
s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=34;
TempoClock.default.tempo_(120/60);
MIDIClient.init;
MIDIIn.connectAll;
)

///////////////////////////////////////////////////////////////////////////////////////root, or end, and control
(
{Out.ar(0,PanAz.ar(2,Mix.new([ In.ar(2,1), In.ar(3,1)]), LFSaw.ar(0.5)))}.play;
)

(
Tdef(\t_sbell).play;
//s.record(numChannels:2);

)

////////////////////////////////////////////////////////////////
(
(
(
SynthDef(\bmovement,
	{
		arg  xi=1;
		var in,movement,audio,adsr;

		in = Mix.new([ InFeedback.ar(2,1), InFeedback.ar(3,1),In.ar(4,1),InFeedback.ar(5,1),InFeedback.ar(6,1),InFeedback.ar(7,1),
			InFeedback.ar(8,1),InFeedback.ar(9,1),InFeedback.ar(10,1),InFeedback.ar(11,1),InFeedback.ar(12,1),InFeedback.ar(13,1),
			InFeedback.ar(14,1), InFeedback.ar(15,1),In.ar(16,1),InFeedback.ar(17,1),InFeedback.ar(18,1),InFeedback.ar(19,1),
			InFeedback.ar(20,1),InFeedback.ar(21,1),InFeedback.ar(22,1),InFeedback.ar(23,1),InFeedback.ar(24,1),InFeedback.ar(25,1),
				InFeedback.ar(26,1), InFeedback.ar(27,1),In.ar(28,1),InFeedback.ar(29,1),InFeedback.ar(30,1),InFeedback.ar(31,1),
			InFeedback.ar(32,1),InFeedback.ar(33,1)]);
		movement = LFSaw.ar(xi*0.1);
adsr= EnvGen.ar(Env.new([0,1, 0.6, 0.6,0], [0.1, 4,8, 16],[-4, -4, 1,-2]),doneAction:2);
audio = PanAz.ar(2,in,movement);

	Out.ar(0,audio*adsr*0.1)
}).add
);

(
SynthDef(\bell,
	{
		arg  fund,width,phaseshift,speed=1;
		var audio1, audio2, audio3, audio4, a, adsr1, adsr2, adsr3, adsr4,
		freq1, freq2, freq3, freq4,x2,x3,x4,harm1,harm2,harm3,harm4;

		a=1;  x2=1; x3=2; x4=3;
		harm1 = a; harm2 = ((x2+a)/x2); harm3 = ((x3+a)/x3); harm4 = ((x4+a)/x4);
		freq1 = harm1 * fund;  freq2 = harm2 * fund;  freq3 = harm3 * fund;  freq4 = harm4* fund;
		adsr1= EnvGen.ar(Env.new([0,1, 0.6, 0.6,0], [0.1, 4*(1/harm1),8*(1/harm1), 16*(1/harm1)],[-4, -4, 1,-2]),doneAction:2);
		adsr2= EnvGen.ar(Env.new([0,1, 0.6, 0.6,0], [0.1, 4*(1/harm2),8*(1/harm2), 16*(1/harm2)],[-4, -4, 1,-2]),doneAction:0);
		adsr3= EnvGen.ar(Env.new([0,1, 0.6, 0.6,0], [0.1, 4*(1/harm3),8*(1/harm3), 16*(1/harm3)],[-4, -4, 1,-2]),doneAction:0);
		adsr4= EnvGen.ar(Env.new([0,1, 0.6, 0.6,0], [0.1, 4*(1/harm4),8*(1/harm4), 16*(1/harm4)],[-4, -4, 1,-2]),doneAction:0);

		audio1 = PanAz.ar(32,
			RLPF.ar(LFSaw.ar(freq1,
				SinOsc.ar(freq1/phaseshift),1/harm1),fund),
			SinOsc.kr(harm1*speed),
			1, width);
		audio2 = PanAz.ar(32,
			RLPF.ar(LFSaw.ar(freq2,
				SinOsc.ar(freq2/phaseshift),1/harm2),fund),
			SinOsc.kr(harm2*speed),
			1, width);
		audio3 = PanAz.ar(32,
			RLPF.ar(LFSaw.ar(freq3,
				SinOsc.ar(freq3/phaseshift),1/harm3),fund),
			SinOsc.kr(harm3*speed),
			1, width);
		audio4 = PanAz.ar(32,
			RLPF.ar(LFSaw.ar(freq4,
				SinOsc.ar(freq4/phaseshift),1/harm4),fund),
			SinOsc.kr(harm4*speed),
			1, width);

		Out.ar(2,audio1*adsr1);
		Out.ar(2,audio2*adsr2);
		Out.ar(2,audio3*adsr3);
		Out.ar(2,audio4*adsr4);
}).add
)
);


///////////////////////////////////////////patterned
(
Tdef(\t_sbell,
      {

			1.do(
			{
				(
			       a = Pdef(\p_0,
                                  Pbind(
							\instrument, \bmovement,
							\dur, 26,
							\xi, Pxrand([1,2,3/2,4/3],inf);
						)
                          ).play(quant:1)
	            ); 0.yield  } );

			1.do(
			{
				(
			       a = Pdef(\p_1,
                                  Pbind(
							\instrument, \bell,
							\dur, 26,
							\fund,Prand([400,200,300,266.666],inf),
							\phaseshift,Prand([2,3/2,4/3,1],inf),
							\speed,Pxrand([1,2,3/2,4/3],inf).poll,
							\width,Prand([4,8,16,32],inf);
						)
                          ).play(quant:1)
	            ); 0.yield  } );
			})
             )
)

/////////////////////////////////////////////////////////////////////////////////////////////more harmonics

(
Synth.new(\bell, [\gate,1, \fr1,160*1, \freq1,160*1*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*3, \freq1,160*3*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*2, \freq1,160*2*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(5/3), \freq1,160*(5/3)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(6/4), \freq1,160*(6/4)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(7/5), \freq1,160*(7/5)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(8/6), \freq1,160*(8/6)*1/(320*1)]);
)

(
Synth.new(\bell, [\gate,1, \fr1,160*1, \freq1,160*1*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*4, \freq1,160*4*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(5/2), \freq1,160*(5/2)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(6/3), \freq1,160*(6/3)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(7/4), \freq1,160*(7/4)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(8/5), \freq1,160*(8/5)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(9/6), \freq1,160*(9/6)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(10/7), \freq1,160*(10/7)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(11/8), \freq1,160*(11/8)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(12/9), \freq1,160*(12/9)*1/(320*1)]);
)
