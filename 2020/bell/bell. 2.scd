(
s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=4;
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

)
////////////////////////////////////////////////////////////////
(
(
(
SynthDef(\bmovement,
	{
		arg  xi;
		var in,movement,audio,adsr;

in = Mix.new([ In.ar(2,1), In.ar(3,1)]);
		movement = LFSaw.ar(xi*0.025);
adsr= EnvGen.ar(Env.new([0,1, 0.6, 0.6,0], [3, 2,8, 8],[-4, -4, 1,-2]),doneAction:2);
audio = PanAz.ar(2,in,movement);

	Out.ar(0,audio*adsr)
}).add
);

(
SynthDef(\bell1,
	{
		arg  freq1, fr1,ph1,fund,x,width,x2;
		var audio,a,adsr,freq;

		a=1;
		freq = ((x+a)/x) * fund;
adsr= EnvGen.ar(Env.new([0,1, 0.6, 0.6,0], [3, 2,8, 8],[-4, -4, 1,-2]),doneAction:2);

		audio = PanAz.ar(2,
			SinOsc.ar(freq,
				SinOsc.ar(freq/x2)) * AmpComp.kr(freq,128,1),
			SinOsc.kr(freq/fund),
			0.1,
			width);

		Out.ar(2,audio*adsr);
}).add
);
(
SynthDef(\bell2,
	{
		arg  freq1, fr1,ph1,fund,x,width, x2;
		var audio,a,adsr,freq;

		a=1;
		freq = ((x+a)/x) * fund;
adsr= EnvGen.ar(Env.new([0,1, 0.6, 0.6,0], [3, 2,8, 8],[-4, -4, 1,-2]),doneAction:2);


		audio = PanAz.ar(2,
			SinOsc.ar(freq,
									SinOsc.ar(freq/x2)) * AmpComp.kr(freq,128,1),
			SinOsc.kr(freq/fund),
			0.1,
			width);

		Out.ar(2,audio*adsr);
}).add
);
(
SynthDef(\bell3,
	{
		arg  freq1, fr1,ph1,fund,x,width,x2;
		var audio,a,adsr,freq;

		a=1;
		freq = ((x+a)/x) * fund;
adsr= EnvGen.ar(Env.new([0,1, 0.6, 0.6,0], [3, 2,8, 8],[-4, -4, 1,-2]),doneAction:2);


		audio = PanAz.ar(2,
			SinOsc.ar(freq,
									SinOsc.ar(freq/x2)) * AmpComp.kr(freq,128,1),
			SinOsc.kr(freq/fund),
			0.1,
			width);

		Out.ar(2,audio*adsr);
}).add
);
(
SynthDef(\bell4,
	{
		arg  freq1, fr1,ph1,fund,x,width,x2;
		var audio,a,adsr,freq;

		a=1;
		freq = ((x+a)/x) * fund;
adsr= EnvGen.ar(Env.new([0,1, 0.6, 0.6,0], [3, 2,8, 8],[-4, -4, 1,-2]),doneAction:2);


		audio = PanAz.ar(2,
			SinOsc.ar(freq,
									SinOsc.ar(freq/x2)) * AmpComp.kr(freq,128,1),
			SinOsc.kr(freq/fund),
			0.1,
			width);

		Out.ar(2,audio*adsr);
}).add
);
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
							\dur, 15,
							\xi, Pxrand([1,2,3/2,4/3],inf).poll;
						)
                          ).play(quant:1)
	            ); 0.yield  } );

			1.do(
			{
				(
			       a = Pdef(\p_1,
                                  Pbind(
							\instrument, \bell1,
							\dur, 15,
							\fund,Pseq([128,256,512,1024],inf),
							\x,Pseq([1,2,3/2,4/3],inf),
							\x2,Prand([2,3/2,4/3,1],inf),
							\width,Prand([1,2],inf);
						)
                          ).play(quant:1)
	            ); 0.yield  } );

					1.do(
			{
				(
			       b = Pdef(\p_2,
                                  Pbind(
							\instrument, \bell2,
								\dur, 15,
							\fund,Pseq([128,256,512,1024],inf),
							\x,Pseq([2,3/2,4/3,1],inf),
							\x2,Prand([2,3/2,4/3,1],inf),
							\width,Prand([1,2],inf);
						)
                          ).play(quant:1)
	            ); 0.yield  } );

					1.do(
			{
				(
			       c = Pdef(\p_3,
                                  Pbind(
							\instrument, \bell3,
								\dur, 15,
							\fund,Pseq([128,256,512,1024],inf),
							\x,Pseq([3/2,4/3,1,2],inf),
							\x2,Prand([2,3/2,4/3,1],inf),
						\width,Prand([1,2],inf);
						)
                          ).play(quant:1)
	            ); 0.yield  } );

					1.do(
			{
				(
			       d = Pdef(\p_4,
                                  Pbind(
							\instrument, \bell4,
								\dur, 15,
							\fund,Pseq([128,256,512,1024],inf),
						\x,Pseq([4/3,1,2,3/2],inf),
							\x2,Prand([2,3/2,4/3,1],inf),
							\width,Prand([1,2],inf);
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
