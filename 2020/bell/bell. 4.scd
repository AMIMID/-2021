(
s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=36;
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
s.record(numChannels:2);

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
		movement = LFSaw.ar(xi*0.01);
adsr= EnvGen.ar(Env.new([0,0.1, 1, 0.5,0], [0.1, 15,15, 32],[-4, -4, 1,-2]),doneAction:2);
		audio =LeakDC.ar(PanAz.ar(2,in,movement));

	Out.ar(0,audio*adsr*0.5)
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
		adsr1= EnvGen.ar(Env.new([0,1, 0], [62*(1/harm1),0.5],[-6, -1]),doneAction:2);
		adsr2= EnvGen.ar(Env.new([0,1, 0], [62*(1/harm2),0.5],[-6, -1]),doneAction:0);
		adsr3= EnvGen.ar(Env.new([0,1,0], [ 62*(1/harm3),0.5],[-6, -1]),doneAction:0);
		adsr4= EnvGen.ar(Env.new([0,1, 0], [62*(1/harm4),0.5],[-6, -1]),doneAction:0);

		audio1 = PanAz.ar(32,
			PitchShift.ar(
        SoundIn.ar(0),    // stereo audio input
        0.5,             // grain size
       freq1,    // mouse x controls pitch shift ratio
        0,                 // pitch dispersion
        0.004,            // time dispersion
		mul:harm1
    ),SinOsc.kr(harm1*speed),1.5, width);

		audio2 =PanAz.ar(32,
			PitchShift.ar(
        SoundIn.ar(0),    // stereo audio input
        0.5,             // grain size
       freq2,    // mouse x controls pitch shift ratio
        0,                 // pitch dispersion
        0.004,            // time dispersion
		mul:harm2
    ),SinOsc.kr(harm2*speed),1.5, width);

		audio3 = PanAz.ar(32,
			PitchShift.ar(
        SoundIn.ar(0),    // stereo audio input
        0.5,             // grain size
       freq3,    // mouse x controls pitch shift ratio
        0,                 // pitch dispersion
        0.004,            // time dispersion
		mul:harm3
    ),SinOsc.kr(harm3*speed),1.5, width);

		audio4 =PanAz.ar(32,
			PitchShift.ar(
        SoundIn.ar(0),    // stereo audio input
        0.5,             // grain size
       freq4,    // mouse x controls pitch shift ratio
        0,                 // pitch dispersion
        0.004,            // time dispersion
		mul:harm4
    ),SinOsc.kr(harm4*speed),1.5, width);

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
							\dur, 120,
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
							\dur, 120,
							\fund,Prand([2,3/2,4/3],inf).poll,
							\phaseshift,Prand([2,3/2,4/3,1],inf),
							\speed,Pxrand([1,2,3/2,4/3],inf),
							\width,Pxrand([16,32,8],inf).poll;
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
