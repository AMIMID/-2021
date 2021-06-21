s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels=8

SerialPort.devices;
~port = SerialPort.new("COM3",115200);
~port.close;

////////////////////////////////
//////////////////////////////////////////////////////



(
~charArray = [];
~getValues = Routine.new({
	var ascii;
	{
	ascii = ~port.read.asAscii;
		if(ascii.isDecDigit, {~charArray = ~charArray.add(ascii)});
		if(ascii == $a,{
			~val = ~charArray.collect(_.digit).convertDigits;
			~charArray = [];
		});
	}.loop;
}).play;
)



///////////////////////////////////////////////////////////////



(
(SynthDef(\41,
	{   arg f1a,f2a,f3a,mul,decay,attack,detune,
		     h1a,h2a;
		var sig1,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig1=
		SinOsc.ar(f1a*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2a,h1a),Blip.ar(f3a,h2a))* AmpComp.kr(f1a*mul,100,1.3);

		Out.ar(4,sig1*env);
}).add;
);
(SynthDef(\42,
	{   arg f1b,f2b,f3b,mul,decay,attack,detune,
		     h1b,h2b;
		var sig2,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig2=
			SinOsc.ar(f1b*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2b,h1b),Blip.ar(f3b,h2b))* AmpComp.kr(f1b*mul,100,1.3);

		Out.ar(5,sig2*env);
}).add;
);
(SynthDef(\43,
	{   arg f1c,f2c,f3c,mul,decay,attack,detune,
		     h1c,h2c;
		var sig3,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig3=
		SinOsc.ar(f1c*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2c,h1c),Blip.ar(f3c,h2c))* AmpComp.kr(f1c*mul,100,1.3);

		Out.ar(6,sig3*env);
}).add;
);
(SynthDef(\44,
	{   arg f1d,f2d,f3d,mul,decay,attack,detune,
		     h1d,h2d;
		var sig4,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig4=
	SinOsc.ar(f1d*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2d,h1d),Blip.ar(f3d,h2d))* AmpComp.kr(f1d*mul,100,1.3);

		Out.ar(7,sig4*env);
}).add;
);
)



///////////////////////////////synths



(
(SynthDef(\tria1,
	{   arg mul;
		var sig1;
		sig1= InFeedback.ar(4)*(Dust2.ar(mul));
		Out.ar(0,sig1);
}).add;
);
(SynthDef(\tria2,
	{   arg mul;
		var sig2;
		sig2=InFeedback.ar(5)*(Dust2.ar(mul));
		Out.ar(1,sig2);
}).add;
);
(SynthDef(\tria3,
	{   arg mul;
		var sig3;
		sig3=InFeedback.ar(6)*(Dust2.ar(mul));
		Out.ar(2,sig3);
}).add;
);
(SynthDef(\tria4,
	{   arg mul;
		var sig4;
sig4=InFeedback.ar(7)*(Dust2.ar(mul));
	Out.ar(3,sig4);
}).add;
);
)
//////////////////

///////////////////////
(
Tdef(\pattern_tria,
      {
1.do({((

y= Pdef(\p_41,
 Pbind(*[
    instrument: \41,
					\dur,Pexprand(0.1,1,inf),
					\f1a,Pexprand(1,2,inf),
					\f2a,Pexprand(0.1,20,inf),
					\f3a,Pexprand(0.1,20,inf),
					\h1a,Pexprand(1,100,inf),
					\h2a,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

y= Pdef(\p_42,
 Pbind(*[
    instrument: \42,
					\dur,Pexprand(0.1,1,inf),
					\f1b,Pexprand(1,2,inf),
					\f2b,Pexprand(0.1,20,inf),
					\f3b,Pexprand(0.1,20,inf),
						\h1b,Pexprand(1,100,inf),
					\h2b,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

y= Pdef(\p_43,
 Pbind(*[
    instrument: \43,
					\dur,Pexprand(0.1,1,inf),
					\f1c,Pexprand(1,2,inf),
					\f2c,Pexprand(0.1,20,inf),
					\f3c,Pexprand(0.1,20,inf),
						\h1c,Pexprand(1,100,inf),
					\h2c,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
		1.do({((

y= Pdef(\p_44,
 Pbind(*[
    instrument: \44,
					\dur,Pexprand(0.1,1,inf),
					\f1d,Pexprand(1,2,inf),
					\f2d,Pexprand(0.1,20,inf),
					\f3d,Pexprand(0.1,20,inf),
						\h1d,Pexprand(1,100,inf),
					\h2d,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});

		1.do({(~synth1 = Synth.new(\tria1,[\mul,~val.linexp(423,1023,200,20000000)])); 0.yield});
		1.do({(~synth2 = Synth.new(\tria2,[\mul,~val.linexp(423,1023,200,20000000)])); 0.yield});
			1.do({(~synth3 = Synth.new(\tria3,[\mul,~val.linexp(423,1023,200,20000000)])); 0.yield});
			1.do({(~synth4 = Synth.new(\tria4,[\mul,~val.linexp(423,1023,200,20000000)])); 0.yield});

	}
)
)




Tdef(\pattern_tria).play
Tdef(\pattern_tria).stop
Tdef(\pattern_ena).pause
Tdef(\pattern_ena).reset
y.play
y.stop
z.stop


(
~control = Routine.new({
	{
		~synth1.set(\mul,~val.linexp(423,1023,200,20000000));
		~synth2.set(\mul,~val.linexp(423,1023,200,20000000));
			~synth3.set(\mul,~val.linexp(423,1023,200,20000000));
			~synth4.set(\mul,~val.linexp(423,1023,200,20000000));
		0.01.wait;
	}.loop;
}).play;
);