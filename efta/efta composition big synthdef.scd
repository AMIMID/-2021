
(
(
SynthDef(\c1,
	{   arg azimuth,decay,mul;
		var audio,sig,env;
		mul=mul*2;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = (RLPF.ar(
			SinOsc.ar(1*mul*1+SinOsc.ar(1*mul*1+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(1*mul*1),mul:1*1)
	+
			SinOsc.ar(2*mul*1+SinOsc.ar(2*mul*1+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(2*mul*1),mul:1/2*1)
	+
			SinOsc.ar(3*mul*1+SinOsc.ar(3*mul*1+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(3*mul*1),mul:1/3*1)
	+
	SinOsc.ar(4*mul*1+SinOsc.ar(4*mul*1+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(4*mul*1),mul:1/4*1)
	+
	SinOsc.ar(5*mul*1+SinOsc.ar(5*mul*1+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(5*mul*1),mul:1/5*1)
	+
	SinOsc.ar(6*mul*1+SinOsc.ar(6*mul*1+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(6*mul*1),mul:1/6*1)
	+
	SinOsc.ar(7*mul*1+SinOsc.ar(7*mul*1+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(7,mul*1),mul:1/7*1)
	+
	SinOsc.ar(8*mul*1+SinOsc.ar(8*mul*1+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(8*mul*1),mul:1/8*1)
	+
	SinOsc.ar(9*mul*1+SinOsc.ar(9*mul*1+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(1*mul*1),mul:1/9*1),3000)
		+
		RLPF.ar(
			SinOsc.ar(1*mul*2+SinOsc.ar(1*mul*2+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(1*mul*2),mul:1*1/2)
	+
			SinOsc.ar(2*mul*2+SinOsc.ar(2*mul*2+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(2*mul*2),mul:1/2*1/2)
	+
			SinOsc.ar(3*mul*2+SinOsc.ar(3*mul*2+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(3*mul*2),mul:1/3*1/2)
	+
	SinOsc.ar(4*mul*2+SinOsc.ar(4*mul*2+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(4*mul*2),mul:1/4*1/2)
	+
	SinOsc.ar(5*mul*2+SinOsc.ar(5*mul*2+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(5*mul*2),mul:1/5*1/2)
	+
	SinOsc.ar(6*mul*2+SinOsc.ar(6*mul*2+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(6*mul*2),mul:1/6*1/2)
	+
	SinOsc.ar(7*mul*2+SinOsc.ar(7*mul*2+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(7*mul*2),mul:1/7*1/2)
	+
	SinOsc.ar(8*mul*2+SinOsc.ar(8*mul*2+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(8*mul*2),mul:1/8*1/2)
	+
	SinOsc.ar(9*mul*2+SinOsc.ar(9*mul*2+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(9*mul*2),mul:1/9*1/2),3000)
		+
	RLPF.ar(
			SinOsc.ar(1*mul*3+SinOsc.ar(1*mul*3+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(1*mul*3),mul:1*1/3)
	+
			SinOsc.ar(2*mul*3+SinOsc.ar(2*mul*3+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(2*mul*3),mul:1/2*1/3)
	+
			SinOsc.ar(3*mul*3+SinOsc.ar(3*mul*3+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(3*mul*3),mul:1/3*1/3)
	+
	SinOsc.ar(4*mul*3+SinOsc.ar(4*mul*3+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(4*mul*3),mul:1/4*1/3)
	+
	SinOsc.ar(5*mul*3+SinOsc.ar(5*mul*3+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(5*mul*3),mul:1/5*1/3)
	+
	SinOsc.ar(6*mul*3+SinOsc.ar(6*mul*3+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(6*mul*3),mul:1/6*1/3)
	+
	SinOsc.ar(7*mul*3+SinOsc.ar(7*mul*3+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(7*mul*3),mul:1/7*1/3)
	+
	SinOsc.ar(8*mul*3+SinOsc.ar(8*mul*3+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(8*mul*3),mul:1/8*1/3)
	+
	SinOsc.ar(9*mul*3+SinOsc.ar(9*mul*3+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(9*mul*3),mul:1/9*1/3),3000)
		+
		RLPF.ar(
			SinOsc.ar(1*mul*4+SinOsc.ar(1*mul*4+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(1*mul*4),mul:1*1/4)
	+
			SinOsc.ar(2*mul*4+SinOsc.ar(2*mul*4+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(2*mul*4),mul:1/2*1/4)
	+
			SinOsc.ar(3*mul*4+SinOsc.ar(3*mul*4+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(3*mul*4),mul:1/3*1/4)
	+
	SinOsc.ar(4*mul*4+SinOsc.ar(4*mul*4+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(4*mul*4),mul:1/4*1/4)
	+
	SinOsc.ar(5*mul*4+SinOsc.ar(5*mul*4+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(5*mul*4),mul:1/5*1/4)
	+
	SinOsc.ar(6*mul*1+SinOsc.ar(6*mul*4+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(6*mul*4),mul:1/6*1/4)
	+
	SinOsc.ar(7*mul*4+SinOsc.ar(7*mul*4+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(7*mul*4),mul:1/7*1/4)
	+
	SinOsc.ar(8*mul*4+SinOsc.ar(8*mul*4+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(8*mul*4),mul:1/8*1/4)
	+
	SinOsc.ar(9*mul*4+SinOsc.ar(9*mul*4+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(9*mul*4),mul:1/9*1/4),3000)
		+
		RLPF.ar(
			SinOsc.ar(1*mul*5+SinOsc.ar(1*mul*5+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 0,0.05)),phase:SinOsc.ar(1*mul*5),mul:1*1/5)
	+
			SinOsc.ar(2*mul*5+SinOsc.ar(2*mul*5+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(2*mul*5),mul:1/2*1/5)
	+
			SinOsc.ar(3*mul*5+SinOsc.ar(3*mul*5+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(3*mul*5),mul:1/3*1/5)
	+
	SinOsc.ar(4*mul*5+SinOsc.ar(4*mul*5+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(4*mul*5),mul:1/4*1/5)
	+
	SinOsc.ar(5*mul*5+SinOsc.ar(5*mul*5+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(5*mul*5),mul:1/5*1/5)
	+
	SinOsc.ar(6*mul*5+SinOsc.ar(6*mul*5+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(6*mul*5),mul:1/6*1/5)
	+
	SinOsc.ar(7*mul*5+SinOsc.ar(7*mul*5+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(7*mul*5),mul:1/7*1/5)
	+
	SinOsc.ar(8*mul*5+SinOsc.ar(8*mul*5+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(8*mul*5),mul:1/8*1/5)
	+
	SinOsc.ar(9*mul*5+SinOsc.ar(9*mul*5+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(9*mul*5),mul:1/9*1/5),3000)
		+
		RLPF.ar(
			SinOsc.ar(1*mul*6+SinOsc.ar(1*mul*6+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(1*mul*6),mul:1*1/6)
	+
			SinOsc.ar(2*mul*6+SinOsc.ar(2*mul*6+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(2*mul*6),mul:1/2*1/6)
	+
			SinOsc.ar(3*mul*6+SinOsc.ar(3*mul*6+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(3*mul*6),mul:1/3*1/6)
	+
	SinOsc.ar(4*mul*6+SinOsc.ar(4*mul*6+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(4*mul*6),mul:1/4*1/6)
	+
	SinOsc.ar(5*mul*6+SinOsc.ar(5*mul*6+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(5*mul*6),mul:1/5*1/6)
	+
	SinOsc.ar(6*mul*6+SinOsc.ar(6*mul*6+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(6*mul*6),mul:1/6*1/6)
	+
	SinOsc.ar(7*mul*6+SinOsc.ar(7*mul*6+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(7*mul*6),mul:1/7*1/6)
	+
	SinOsc.ar(8*mul*6+SinOsc.ar(8*mul*6+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(8*mul*6),mul:1/8*1/6)
	+
	SinOsc.ar(9*mul*6+SinOsc.ar(9*mul*6+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(9*mul*6),mul:1/9*1/6),3000)
		+
		RLPF.ar(
			SinOsc.ar(1*mul*7+SinOsc.ar(1*mul*7+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(1*mul*7),mul:1*1/7)
	+
			SinOsc.ar(2*mul*7+SinOsc.ar(2*mul*7+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(2*mul*7),mul:1/2*1/7)
	+
			SinOsc.ar(3*mul*7+SinOsc.ar(3*mul*7+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(3*mul*7),mul:1/3*1/7)
	+
	SinOsc.ar(4*mul*7+SinOsc.ar(4*mul*7+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(4*mul*7),mul:1/4*1/7)
	+
	SinOsc.ar(5*mul*7+SinOsc.ar(5*mul*7+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(5*mul*7),mul:1/5*1/7)
	+
	SinOsc.ar(6*mul*7+SinOsc.ar(6*mul*7+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(6*mul*7),mul:1/6*1/7)
	+
	SinOsc.ar(7*mul+SinOsc.ar(7*mul*7+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(7*mul*7),mul:1/7*1/7)
	+
	SinOsc.ar(8*mul*7+SinOsc.ar(8*mul*7+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(8*mul*7),mul:1/8*1/7)
	+
	SinOsc.ar(9*mul*7+SinOsc.ar(9*mul*7+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(9*mul*7),mul:1/9*1/7),3000)
		+
		RLPF.ar(
			SinOsc.ar(1*mul*8+SinOsc.ar(1*mul*8+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(1*mul*8),mul:1*1/8)
	+
			SinOsc.ar(2*mul*8+SinOsc.ar(2*mul*8+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(2*mul*8),mul:1/2*1/8)
	+
			SinOsc.ar(3*mul*8+SinOsc.ar(3*mul*8+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(3*mul*8),mul:1/3*1/8)
	+
	SinOsc.ar(4*mul*8+SinOsc.ar(4*mul*8+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(4*mul*8),mul:1/4*1/8)
	+
	SinOsc.ar(5*mul*8+SinOsc.ar(5*mul*8+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(5*mul*8),mul:1/5*1/8)
	+
	SinOsc.ar(6*mul*8+SinOsc.ar(6*mul*8+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(6*mul*8),mul:1/6*1/8)
	+
	SinOsc.ar(7*mul*1+SinOsc.ar(7*mul*8+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(7*mul*8),mul:1/7*1/8)
	+
	SinOsc.ar(8*mul*8+SinOsc.ar(8*mul*8+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(8*mul*8),mul:1/8*1/8)
	+
	SinOsc.ar(9*mul*8+SinOsc.ar(9*mul*8+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(9*mul*8),mul:1/9*1/8),3000)
		+
		RLPF.ar(
			SinOsc.ar(1*mul*9+SinOsc.ar(1*mul*9+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(1*mul*9),mul:1*1/9)
	+
			SinOsc.ar(2*mul*9+SinOsc.ar(2*mul*9+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(2*mul*9),mul:1/2*1/9)
	+
			SinOsc.ar(3*mul*9+SinOsc.ar(3*mul*9+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(3*mul*9),mul:1/3*1/9)
	+
	SinOsc.ar(4*mul*9+SinOsc.ar(4*mul*9+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(4*mul*9),mul:1/4*1/9)
	+
	SinOsc.ar(5*mul*9+SinOsc.ar(5*mul*9+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(5*mul*9),mul:1/5*1/9)
	+
	SinOsc.ar(6*mul*9+SinOsc.ar(6*mul*9+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(6*mul*9),mul:1/6*1/9)
	+
	SinOsc.ar(7*mul*9+SinOsc.ar(7*mul*9+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(7*mul*9),mul:1/7*1/9)
	+
	SinOsc.ar(8*mul*9+SinOsc.ar(8*mul*9+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(8*mul*9),mul:1/8*1/9)
	+
																	SinOsc.ar(9*mul*9+SinOsc.ar(9*mul*9+0.86,mul:Stepper.kr(Impulse.kr(250), 0, 1, 1720, 8,0.05)),phase:SinOsc.ar(9*mul*9),mul:1/9*1/9),3000)
		);

		audio= PanAz.ar(2,sig,azimuth);
	Out.ar(0,audio*env);
}
).add;
);
(
Tdef(\pattern_c,
      {
1.do({((

a= Pdef(\p_c1,
 Pbind(*[
    instrument: \c1,
					\dur,1.72,
					\decay,1.72,
					\mul,Pseq([49.00,87.31,155.56,58.27,146.83,130.81,116.54,73.42,98.00,130.81,49.00,116.54,58.27,110.00,116.54,73.42,98.00,49.00,87.31,155.56,58.27,146.83,130.81,116.54,73.42,98.00,130.81,49.00,116.54,58.27,110.00,116.54,73.42,130.81],inf),
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
	)); 0.yield});

	}
)
);
)

TempoClock.default.tempo =8;
(
Tdef(\pattern_c).play;
//s.record(numChannels:2);
)
Tdef(\pattern_c).stop
Tdef(\pattern_c).pause
Tdef(\pattern_c).reset
y.play
y.stop
z.stop
(0.1075*9)
)