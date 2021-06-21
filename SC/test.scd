
(
SynthDef(\d,
	{
		arg harmd, ampd;
		var audio;

		audio =   Blip.ar(400,harmd);


		Out.ar(0,audio * ampd);
}).add
)


	d =  Synth(\d,[\harmd,2, \ampd, 1]);


Pdef(\p1,

 Pbind(*[
    instrument: \1,
        \dur,Pseq([6,6,6,6,6,6,6,6,6,6,6,6,6],inf).trace,
		\freq1, Pseq([0.1,0.2,0.3,0.5,0.8,1.3,2.1,3.4,5.5,8.9,14.4,23.3,37.7],inf).trace,
		\freqq1, Pseq([0.1,0.2,0.3,0.5,0.8,1.3,2.1,3.4,5.5,8.9,14.4,23.3,37.7],inf).trace,
		\fr1, Pseq([40,160,90,250,160,360,250,490,360,640,390,810,640],inf).trace,
	\harm1, Pexprand(8,16,inf).trace,
		\p1, Pseq([0.1,0.2,0.3,0.5,0.8,1.3,2.1,3.4,5.5,8.9,14.4,23.3,37.7],inf).trace
])
).play(quant:1)





		1.do({((
		Pdef(\pa32,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});



			1.do({((
		Pdef(\pa31,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});



			1.do({((
		Pdef(\pa30,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});




			1.do({((
		Pdef(\pa29,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});



		1.do({((
		Pdef(\pa28,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});




			1.do({((
		Pdef(\pa27,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});




		1.do({((
		Pdef(\pa26,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});



		1.do({((
		Pdef(\pa25,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});


		1.do({((
		Pdef(\pa24,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,
	\amp1,  1

				])
				).play(quant:1)
)); 0.yield});



			1.do({((
		Pdef(\pa23,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,
			\amp1,  1

				])
				).play(quant:1)
)); 0.yield});


			1.do({((
		Pdef(\pa22,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});


		1.do({((
		Pdef(\pa21,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});


		1.do({((
		Pdef(\pa20,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});



			1.do({((
		Pdef(\pa19,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,
		\amp1,  1

				])
				).play(quant:1)
)); 0.yield});


		1.do({((
		Pdef(\pa18,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});


		1.do({((
		Pdef(\pa17,

 Pbind(*[
    instrument: \1,
					\dur,Prand([3,6,9],30).trace,
		\freq1, 28.8,
		\freqq1,28.8,
		\fr1,  2880,

					\amp1,  1

				])
				).play(quant:1)
)); 0.yield});