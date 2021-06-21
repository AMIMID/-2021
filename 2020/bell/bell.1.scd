(
s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=64;
TempoClock.default.tempo_(120/60);
MIDIClient.init;
MIDIIn.connectAll;
)



(
SynthDef(\bell,
	{
		arg  freq1, fr1,ph1,fund,x,width,amp;
		var audio,a,env;

		fund = 256;
		a=1;

		audio = PanAz.ar( 64, PitchShift.ar(
        SoundIn.ar(0),    // stereo audio input
        0.5,             // grain size
       fr1,    // mouse x controls pitch shift ratio
        0,                 // pitch dispersion
        0.004,            // time dispersion
		mul:amp
    ),
		SinOsc.kr(freq1),1,MouseX.kr(1,64));

		Out.ar(0,audio);
}).add
)
////////////////////////////////////////////////////////////////
(
SynthDef(\bell,
	{
		arg  freq1, fr1,ph1,fund,x,width,amp;
		var audio,a,env;

		fund = 256;
		a=1;

		audio = PanAz.ar(64,SinOsc.ar(fr1*fund,pi,mul: 1),
			SinOsc.kr(freq1),1,16);

		Out.ar(0,audio);
}).add
)

s.makeWindow.
s.scope
///////////////////////////////synths


(
Synth.new(\bell, [\gate,1, \fr1,1, \ph1,2pi, \freq1,1,\amp,1]);
Synth.new(\bell, [\gate,1, \fr1,2, \ph1,pi,  \freq1,2,\amp,1/2]);
Synth.new(\bell, [\gate,1, \fr1,(3/2),\ph1,2pi,  \freq1,(3/2),\amp,(2/3)]);
Synth.new(\bell, [\gate,1, \fr1,(4/3), \ph1,pi, \freq1,(4/3),\amp,(3/4)]);
)

///////////////////////////////////////////patterned
(
Tdef(\t_sbell,
      {

			1.do(
			{
				(
			       a = Pdef(\p_1,
                                  Pbind(
							\instrument, \bell1,
							\dur, 0.5,
							\fr1, Pseq([1,2,3/2,4/3],inf),
							\ph1,Pseq([1,2,3/2,4/3],inf),
							\freq1, Pseq([1,2,3/2,4/3],inf),
							\x,Pseq([1,2,3,2],inf),
								\width,Pexprand(1,2,inf);
						)
                          ).play(quant:1)
	            ); 0.yield  } );

					1.do(
			{
				(
			       b = Pdef(\p_2,
                                  Pbind(
							\instrument, \bell2,
								\dur, 0.5,
							\fr1, Pseq([2,3/2,4/3,1],inf),
							\ph1,Pseq([2,3/2,4/3,1],inf),
							\freq1, Pseq([2,3/2,4/3,1],inf),
							\x,Pseq([1,2,3,2],inf),
							\width,Pexprand(1,2,inf);
						)
                          ).play(quant:1)
	            ); 0.yield  } );

					1.do(
			{
				(
			       c = Pdef(\p_3,
                                  Pbind(
							\instrument, \bell3,
								\dur, 0.5,
							\fr1, Pseq([3/2,4/3,1,2],inf),
							\ph1,Pseq([3/2,4/3,1,2],inf),
							\freq1, Pseq([3/2,4/3,1,2],inf),
							\x,Pseq([1,2,3,2],inf),
								\width,Pexprand(1,2,inf);
						)
                          ).play(quant:1)
	            ); 0.yield  } );

					1.do(
			{
				(
			       d = Pdef(\p_4,
                                  Pbind(
							\instrument, \bell4,
								\dur, 0.5,
							\fr1, Pseq([4/3,1,2,3/2],inf),
							\ph1,Pseq([4/3,1,2,3/2],inf),
							\freq1, Pseq([4/3,1,2,3/2],inf),
							\x,Pseq([1,2,3,2],inf),
							\width,Pexprand(1,2,inf).poll;
						)
                          ).play(quant:1)
	            ); 0.yield  } );
			})
             )


(
Tdef(\t_sbell).play;
//s.record(numChannels:2);

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
