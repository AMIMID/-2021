s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels=18

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
////////////////////////////////////

(
SynthDef(\sp1,
	{
		arg  freq1, fr1,cutoff;
		var audio;

		#w, x, y, z = PanB.ar(RLPF.ar(Saw.ar(fr1),cutoff.lag(0.02),0.25,0.2),SinOsc.kr(freq1),gain:0.05);

		audio =   DecodeB2.ar(16, w, x, y, 1);

		Out.ar(2,audio);
}).add
);



///////////////////////////////synths



(
(SynthDef(\tria1,
	{   arg decay,mul,mul1;

		var sig1,env;

		env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig1= InFeedback.ar(2)*(Dust2.ar(mul));
		Out.ar(0,sig1*env);
}).add;
);
(SynthDef(\tria2,
	{   arg decay,mul,mul1;
		var sig2,env;

	env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig2=InFeedback.ar(2)*(Dust2.ar(mul));


		Out.ar(1,sig2*env);
}).add;
);

)
//////////////////
///*(SinOsc.ar(mul1,mul:3)* AmpComp.kr(mul1, 20,0.2))
///////////////////////
(
Tdef(\pattern_tria,
      {

		1.do({(
(
~synth1 =  Synth.new(\sp1, [\gate,1, \fr1,40, \freq1,0.01*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth2 =  Synth.new(\sp1, [\gate,1, \fr1,60, \freq1,0.02*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth3 =  Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,0.03*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth4 =  Synth.new(\sp1, [\gate,1, \fr1,90, \freq1,0.04*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth5 =  Synth.new(\sp1, [\gate,1, \fr1,100, \freq1,0.05*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth6 =  Synth.new(\sp1, [\gate,1, \fr1,120, \freq1,0.06*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth7 = Synth.new(\sp1, [\gate,1, \fr1,140, \freq1,0.07*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth8 = Synth.new(\sp1, [\gate,1, \fr1,150, \freq1,0.08*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth9 = Synth.new(\sp1, [\gate,1, \fr1,160, \freq1,0.09*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth10 = Synth.new(\sp1, [\gate,1, \fr1,180, \freq1,0.1*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth11= Synth.new(\sp1, [\gate,1, \fr1,200, \freq1,0.2*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth12 = Synth.new(\sp1, [\gate,1, \fr1,210, \freq1,0.3*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth13 = Synth.new(\sp1, [\gate,1, \fr1,220, \freq1,0.4*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth14 = Synth.new(\sp1, [\gate,1, \fr1,240, \freq1,0.5*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth15 = Synth.new(\sp1, [\gate,1, \fr1,250, \freq1,0.6*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth16 = Synth.new(\sp1, [\gate,1, \fr1,270, \freq1,0.7*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth17 = Synth.new(\sp1, [\gate,1, \fr1,280, \freq1,0.8*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth18 = Synth.new(\sp1, [\gate,1, \fr1,300, \freq1,0.9*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth19 = Synth.new(\sp1, [\gate,1, \fr1,320, \freq1,1*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth20 = Synth.new(\sp1, [\gate,1, \fr1,330, \freq1,1.1*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth21 = Synth.new(\sp1, [\gate,1, \fr1,350, \freq1,1.2*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth22 = Synth.new(\sp1, [\gate,1, \fr1,360, \freq1,1.3*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth23 = Synth.new(\sp1, [\gate,1, \fr1,400, \freq1,1.4*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synt24 = Synth.new(\sp1, [\gate,1, \fr1,420, \freq1,1.5*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synt25 = Synth.new(\sp1, [\gate,1, \fr1,440, \freq1,1.6*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth26 = Synth.new(\sp1, [\gate,1, \fr1,450, \freq1,1.7*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth27 = Synth.new(\sp1, [\gate,1, \fr1,480, \freq1,1.8*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth28 = Synth.new(\sp1, [\gate,1, \fr1,490, \freq1,1.9*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth29 = Synth.new(\sp1, [\gate,1, \fr1,500, \freq1,2*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth30 = Synth.new(\sp1, [\gate,1, \fr1,550, \freq1,2.1*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth31 = Synth.new(\sp1, [\gate,1, \fr1,560, \freq1,2.2*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth32 = Synth.new(\sp1, [\gate,1, \fr1,600, \freq1,2.3*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth33 = Synth.new(\sp1, [\gate,1, \fr1,640, \freq1,2.4*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth34 = Synth.new(\sp1, [\gate,1, \fr1,660, \freq1,2.5*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth35 = Synth.new(\sp1, [\gate,1, \fr1,700, \freq1,2.6*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth36 = Synth.new(\sp1, [\gate,1, \fr1,720, \freq1,2.7*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth37 = Synth.new(\sp1, [\gate,1, \fr1,770, \freq1,2.8*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth38 = Synth.new(\sp1, [\gate,1, \fr1,800, \freq1,2.9*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth39 = Synth.new(\sp1, [\gate,1, \fr1,810, \freq1,3*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth40 = Synth.new(\sp1, [\gate,1, \fr1,840, \freq1,3.2*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth41 = Synth.new(\sp1, [\gate,1, \fr1,880, \freq1,3.3*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth42 = Synth.new(\sp1, [\gate,1, \fr1,900, \freq1,3.4*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth43 = Synth.new(\sp1, [\gate,1, \fr1,960, \freq1,3.5*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth44 = Synth.new(\sp1, [\gate,1, \fr1,990, \freq1,3.6*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth45 = Synth.new(\sp1, [\gate,1, \fr1,1000, \freq1,3.7*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth46 = Synth.new(\sp1, [\gate,1, \fr1,1080, \freq1,3.8*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth47 = Synth.new(\sp1, [\gate,1, \fr1,1100, \freq1,3.9*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth48 = Synth.new(\sp1, [\gate,1, \fr1,1200, \freq1,4*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth49 = Synth.new(\sp1, [\gate,1, \fr1,1210, \freq1,4.1*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth50 = Synth.new(\sp1, [\gate,1, \fr1,1320, \freq1,4.2*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);
~synth51 = Synth.new(\sp1, [\gate,1, \fr1,1440, \freq1,4.3*1/4,\cutoff,~val.linexp(0,1023,80,4000)]);

)


); 0.yield});
		1.do({((

y= Pdef(\p_tria1,
 Pbind(*[
    instrument: \tria1,
					\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([2000, 2000000], inf), Pseq([8, 8],inf), Pseq([\exp, \exp],inf),inf),
					\mul1,Pexprand(20,20000,inf);

])

).play(quant:1)
)); 0.yield});
		1.do({((

y= Pdef(\p_tria2,
 Pbind(*[
    instrument: \tria2,
							\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([2000000, 2000], inf), Pseq([8, 8],inf), Pseq([\exp, \exp],inf),inf),
					\mul1,Pexprand(20,20000,inf);

])

).play(quant:1)
)); 0.yield});

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
////////////////
////////////////
(
~control = Routine.new({
	{
		~synth1.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth2.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth3.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth4.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth5.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth6.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth7.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth8.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth9.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth10.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth11.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth12.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth13.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth14.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth15.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth16.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth17.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth18.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth19.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth20.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth21.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth22.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth23.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth24.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth25.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth26.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth27.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth28.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth29.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth30.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth31.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth32.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth33.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth34.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth35.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth36.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth37.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth38.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth39.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth40.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth41.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth42.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth43.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth44.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth45.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth46.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth47.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth48.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth49.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth50.set(\cutoff,~val.linexp(0,1023,80,4000));
		~synth51.set(\cutoff,~val.linexp(0,1023,80,4000));
		0.01.wait;
	}.loop;
}).play;
)