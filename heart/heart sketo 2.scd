s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels=2;

s.record(numChannels:4);

/////////////////////////////////////////////////
(
(
(
SynthDef(\c1,
	{   arg azimuth,decay,mul;
		var audio,sig,env;
		mul=mul;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = (RLPF.ar(
			SinOsc.ar(1*mul*1,phase:SinOsc.ar(1*mul*1),mul:1)
	+
			SinOsc.ar(2*mul*1,phase:SinOsc.ar(2*mul*1),mul:1/2)
	+
			SinOsc.ar(3*mul*1,phase:SinOsc.ar(3*mul*1),mul:1/3)
	+
	SinOsc.ar(4*mul*1,phase:SinOsc.ar(4*mul*1),mul:1/4)
	+
	SinOsc.ar(5*mul*1,phase:SinOsc.ar(5*mul*1),mul:1/5)
	+
	SinOsc.ar(6*mul*1,phase:SinOsc.ar(6*mul*1),mul:1/6)
	+
	SinOsc.ar(7*mul*1,phase:SinOsc.ar(7,mul*1),mul:1/7)
	+
	SinOsc.ar(8*mul*1,phase:SinOsc.ar(8*mul*1),mul:1/8)
	+
	SinOsc.ar(9*mul*1,phase:SinOsc.ar(9*mul*1),mul:1/9),20000)
		);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,SinOsc.ar(1*mul));
	Out.ar(0,audio*env*1);
}
).add;
);
(
SynthDef(\c2,
	{   arg azimuth,decay,mul;
		var audio,sig,env;
		mul=mul;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = (RLPF.ar(
			SinOsc.ar(1*mul*2,phase:SinOsc.ar(1*mul*2),mul:1)
	+
			SinOsc.ar(2*mul*2,phase:SinOsc.ar(2*mul*2),mul:1/2)
	+
			SinOsc.ar(3*mul*2,phase:SinOsc.ar(3*mul*2),mul:1/3)
	+
	SinOsc.ar(4*mul*2,phase:SinOsc.ar(4*mul*2),mul:1/4)
	+
	SinOsc.ar(5*mul*2,phase:SinOsc.ar(5*mul*2),mul:1/5)
	+
	SinOsc.ar(6*mul*2,phase:SinOsc.ar(6*mul*2),mul:1/6)
	+
	SinOsc.ar(7*mul*2,phase:SinOsc.ar(7*mul*2),mul:1/7)
	+
	SinOsc.ar(8*mul*2,phase:SinOsc.ar(8*mul*2),mul:1/8)
	+
	SinOsc.ar(9*mul*2,phase:SinOsc.ar(9*mul*2),mul:1/9),20000)
		);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,SinOsc.ar(2*mul));
	Out.ar(0,audio*env*1/2);
}
).add;
);
(
SynthDef(\c3,
	{   arg azimuth,decay,mul;
		var audio,sig,env;
mul=mul;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = (RLPF.ar(
			SinOsc.ar(1*mul*3,phase:SinOsc.ar(1*mul*3),mul:1)
	+
			SinOsc.ar(2*mul*3,phase:SinOsc.ar(2*mul*3),mul:1/2)
	+
			SinOsc.ar(3*mul*3,phase:SinOsc.ar(3*mul*3),mul:1/3)
	+
	SinOsc.ar(4*mul*3,phase:SinOsc.ar(4*mul*3),mul:1/4)
	+
	SinOsc.ar(5*mul*3,phase:SinOsc.ar(5*mul*3),mul:1/5)
	+
	SinOsc.ar(6*mul*3,phase:SinOsc.ar(6*mul*3),mul:1/6)
	+
	SinOsc.ar(7*mul*3,phase:SinOsc.ar(7*mul*3),mul:1/7)
	+
	SinOsc.ar(8*mul*3,phase:SinOsc.ar(8*mul*3),mul:1/8)
	+
	SinOsc.ar(9*mul*3,phase:SinOsc.ar(9*mul*3),mul:1/9),20000)
		);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,SinOsc.ar(3*mul));
	Out.ar(0,audio*env*1/3);
}
).add;
);

(
SynthDef(\c4,
	{   arg azimuth,decay,mul;
		var audio,sig,env;
mul=mul;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = (RLPF.ar(
			SinOsc.ar(1*mul*4,phase:SinOsc.ar(1*mul*4),mul:1)
	+
			SinOsc.ar(2*mul*4,phase:SinOsc.ar(2*mul*4),mul:1/2)
	+
			SinOsc.ar(3*mul*4,phase:SinOsc.ar(3*mul*4),mul:1/3)
	+
	SinOsc.ar(4*mul*4,phase:SinOsc.ar(4*mul*4),mul:1/4)
	+
	SinOsc.ar(5*mul*4,phase:SinOsc.ar(5*mul*4),mul:1/5)
	+
	SinOsc.ar(6*mul*1,phase:SinOsc.ar(6*mul*4),mul:1/6)
	+
	SinOsc.ar(7*mul*4,phase:SinOsc.ar(7*mul*4),mul:1/7)
	+
	SinOsc.ar(8*mul*4,phase:SinOsc.ar(8*mul*4),mul:1/8)
	+
	SinOsc.ar(9*mul*4,phase:SinOsc.ar(9*mul*4),mul:1/9),20000)
		);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,SinOsc.ar(4*mul));
	Out.ar(0,audio*env*1/4);
}
).add;
);

(
SynthDef(\c5,
	{   arg azimuth,decay,mul;
		var audio,sig,env;
mul=mul;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = (RLPF.ar(
			SinOsc.ar(1*mul*5,phase:SinOsc.ar(1*mul*5),mul:1)
	+
			SinOsc.ar(2*mul*5,phase:SinOsc.ar(2*mul*5),mul:1/2)
	+
			SinOsc.ar(3*mul*5,phase:SinOsc.ar(3*mul*5),mul:1/3)
	+
	SinOsc.ar(4*mul*5,phase:SinOsc.ar(4*mul*5),mul:1/4)
	+
	SinOsc.ar(5*mul*5,phase:SinOsc.ar(5*mul*5),mul:1/5)
	+
	SinOsc.ar(6*mul*5,phase:SinOsc.ar(6*mul*5),mul:1/6)
	+
	SinOsc.ar(7*mul*5,phase:SinOsc.ar(7*mul*5),mul:1/7)
	+
	SinOsc.ar(8*mul*5,phase:SinOsc.ar(8*mul*5),mul:1/8)
	+
	SinOsc.ar(9*mul*5,phase:SinOsc.ar(9*mul*5),mul:1/9),20000)
		);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,SinOsc.ar(5*mul));
	Out.ar(0,audio*env*1/5);
}
).add;
);

(
SynthDef(\c6,
	{   arg azimuth,decay,mul;
		var audio,sig,env;
mul=mul;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = (RLPF.ar(
			SinOsc.ar(1*mul*6,phase:SinOsc.ar(1*mul*6),mul:1)
	+
			SinOsc.ar(2*mul*6,phase:SinOsc.ar(2*mul*6),mul:1/2)
	+
			SinOsc.ar(3*mul*6,phase:SinOsc.ar(3*mul*6),mul:1/3)
	+
	SinOsc.ar(4*mul*6,phase:SinOsc.ar(4*mul*6),mul:1/4)
	+
	SinOsc.ar(5*mul*6,phase:SinOsc.ar(5*mul*6),mul:1/5)
	+
	SinOsc.ar(6*mul*6,phase:SinOsc.ar(6*mul*6),mul:1/6)
	+
	SinOsc.ar(7*mul*6,phase:SinOsc.ar(7*mul*6),mul:1/7)
	+
	SinOsc.ar(8*mul*6,phase:SinOsc.ar(8*mul*6),mul:1/8)
	+
	SinOsc.ar(9*mul*6,phase:SinOsc.ar(9*mul*6),mul:1/9),20000)
		);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,SinOsc.ar(6*mul));
	Out.ar(0,audio*env*1/6);
}
).add;
);

(
SynthDef(\c7,
	{   arg azimuth,decay,mul;
		var audio,sig,env;
mul=mul;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = (RLPF.ar(
			SinOsc.ar(1*mul*7,phase:SinOsc.ar(1*mul*7),mul:1)
	+
			SinOsc.ar(2*mul*7,phase:SinOsc.ar(2*mul*7),mul:1/2)
	+
			SinOsc.ar(3*mul*7,phase:SinOsc.ar(3*mul*7),mul:1/3)
	+
	SinOsc.ar(4*mul*7,phase:SinOsc.ar(4*mul*7),mul:1/4)
	+
	SinOsc.ar(5*mul*7,phase:SinOsc.ar(5*mul*7),mul:1/5)
	+
	SinOsc.ar(6*mul*7,phase:SinOsc.ar(6*mul*7),mul:1/6)
	+
	SinOsc.ar(7*mul,phase:SinOsc.ar(7*mul*7),mul:1/7)
	+
	SinOsc.ar(8*mul*7,phase:SinOsc.ar(8*mul*7),mul:1/8)
	+
	SinOsc.ar(9*mul*7,phase:SinOsc.ar(9*mul*7),mul:1/9),20000)
		);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,SinOsc.ar(7*mul));
	Out.ar(0,audio*env*1/7);
}
).add;
);

(
SynthDef(\c8,
	{   arg azimuth,decay,mul;
		var audio,sig,env;
mul=mul;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = (RLPF.ar(
			SinOsc.ar(1*mul*8,phase:SinOsc.ar(1*mul*8),mul:1)
	+
			SinOsc.ar(2*mul*8,phase:SinOsc.ar(2*mul*8),mul:1/2)
	+
			SinOsc.ar(3*mul*8,phase:SinOsc.ar(3*mul*8),mul:1/3)
	+
	SinOsc.ar(4*mul*8,phase:SinOsc.ar(4*mul*8),mul:1/4)
	+
	SinOsc.ar(5*mul*8,phase:SinOsc.ar(5*mul*8),mul:1/5)
	+
	SinOsc.ar(6*mul*8,phase:SinOsc.ar(6*mul*8),mul:1/6)
	+
	SinOsc.ar(7*mul*1,phase:SinOsc.ar(7*mul*8),mul:1/7)
	+
	SinOsc.ar(8*mul*8,phase:SinOsc.ar(8*mul*8),mul:1/8)
	+
	SinOsc.ar(9*mul*8,phase:SinOsc.ar(9*mul*8),mul:1/9),20000)
		);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,SinOsc.ar(8*mul));
	Out.ar(0,audio*env*1/8);
}
).add;
);

(
SynthDef(\c9,
	{   arg azimuth,decay,mul;
		var audio,sig,env;
		mul=mul;
		env = EnvGen.ar(Env.perc(releaseTime:decay),doneAction:2);
		sig = (RLPF.ar(
			SinOsc.ar(1*mul*9,phase:SinOsc.ar(1*mul*9),mul:1)
	+
			SinOsc.ar(2*mul*9,phase:SinOsc.ar(2*mul*9),mul:1/2)
	+
			SinOsc.ar(3*mul*9,phase:SinOsc.ar(3*mul*9),mul:1/3)
	+
	SinOsc.ar(4*mul*9,phase:SinOsc.ar(4*mul*9),mul:1/4)
	+
	SinOsc.ar(5*mul*9,phase:SinOsc.ar(5*mul*9),mul:1/5)
	+
	SinOsc.ar(6*mul*9,phase:SinOsc.ar(6*mul*9),mul:1/6)
	+
	SinOsc.ar(7*mul*9,phase:SinOsc.ar(7*mul*9),mul:1/7)
	+
	SinOsc.ar(8*mul*9,phase:SinOsc.ar(8*mul*9),mul:1/8)
	+
																	SinOsc.ar(9*mul*9,phase:SinOsc.ar(9*mul*9),mul:1/9),20000)
		);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,SinOsc.ar(9*mul));
	Out.ar(0,audio*env*1/9);
}
).add;
);
);



(
Tdef(\pattern_c,
      {
1.do({((

a= Pdef(\p_c1,
 Pbind(*[
    instrument: \c1,
					\dur,32,
					\decay,32,
					\mul,Pseq([220],inf),
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
	)); 0.yield});
	1.do({((

a= Pdef(\p_c2,
 Pbind(*[
    instrument: \c2,
					\dur,32,
					\decay,32,
					\mul,Pseq([220],inf),
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

a= Pdef(\p_c3,
 Pbind(*[
    instrument: \c3,
					\dur,32,
					\decay,32,
					\mul,Pseq([220],inf),
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

a= Pdef(\p_c4,
 Pbind(*[
    instrument: \c4,
					\dur,32,
					\decay,32,
					\mul,Pseq([220],inf),
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

a= Pdef(\p_c15,
 Pbind(*[
    instrument: \c5,
					\dur,32,
					\decay,32,
					\mul,Pseq([220],inf),
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

a= Pdef(\p_c6,
 Pbind(*[
    instrument: \c6,
					\dur,32,
					\decay,32,
					\mul,Pseq([220],inf),
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

a= Pdef(\p_c7,
 Pbind(*[
    instrument: \c7,
					\dur,32,
					\decay,32,
					\mul,Pseq([220],inf),
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

a= Pdef(\p_c8,
 Pbind(*[
    instrument: \c8,
					\dur,32,
					\decay,32,
					\mul,Pseq([220],inf),
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

a= Pdef(\p_c9,
 Pbind(*[
    instrument: \c9,
					\dur,32,
					\decay,32,
					\mul,Pseq([220],inf),
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});


	}
)
);
)

TempoClock.default.tempo =1;
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
