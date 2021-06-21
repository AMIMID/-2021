s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels=20

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

///////////////////////////////////////

(
SynthDef(\sp1,
	{
		arg  freq1, fr1,mul;
		var audio;

		#w, x, y, z = PanB.ar(SinOsc.ar(fr1*mul)* AmpComp.kr(fr1, fr1,0.1),SinOsc.kr(freq1),gain:0.05);

		audio =   DecodeB2.ar(16, w, x, y, 1);

		Out.ar(4,audio);
}).add
);


//////////////////////////////////////////////////////////////////////////////

(
(SynthDef(\tria1,
	{   arg decay,mul,mul1;

		var sig1,env;

		env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig1= InFeedback.ar(4)*(Dust2.ar(mul));
		Out.ar(0,sig1*env);
}).add;
);
(SynthDef(\tria2,
	{   arg decay,mul,mul1;
		var sig2,env;

	env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig2=InFeedback.ar(4)*(Dust2.ar(mul));


		Out.ar(1,sig2*env);
}).add;
);
(SynthDef(\tria3,
	{   arg decay,mul,mul1;
		var sig3,env;

		env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig3=InFeedback.ar(4)*(Dust2.ar(mul));


		Out.ar(2,sig3*env);
}).add;
);
(SynthDef(\tria4,
	{   arg decay,mul,mul1;
		var sig4,env;

		env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig4=InFeedback.ar(4)*(Dust2.ar(mul));


		Out.ar(3,sig4*env);
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
~synth1 =  Synth.new(\sp1, [\gate,1, \fr1,40, \freq1,4*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth2 =  Synth.new(\sp1, [\gate,1, \fr1,60, \freq1,6*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth3 =  Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,8*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth4 =  Synth.new(\sp1, [\gate,1, \fr1,90, \freq1,9*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth5 =  Synth.new(\sp1, [\gate,1, \fr1,100, \freq1,10*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth6 =  Synth.new(\sp1, [\gate,1, \fr1,120, \freq1,12*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth7 = Synth.new(\sp1, [\gate,1, \fr1,140, \freq1,14*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth8 = Synth.new(\sp1, [\gate,1, \fr1,150, \freq1,15*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth9 = Synth.new(\sp1, [\gate,1, \fr1,160, \freq1,16*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth10 = Synth.new(\sp1, [\gate,1, \fr1,180, \freq1,18*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth11= Synth.new(\sp1, [\gate,1, \fr1,200, \freq1,20*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth12 = Synth.new(\sp1, [\gate,1, \fr1,210, \freq1,21*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth13 = Synth.new(\sp1, [\gate,1, \fr1,220, \freq1,22*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth14 = Synth.new(\sp1, [\gate,1, \fr1,240, \freq1,24*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth15 = Synth.new(\sp1, [\gate,1, \fr1,250, \freq1,25*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth16 = Synth.new(\sp1, [\gate,1, \fr1,270, \freq1,27*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth17 = Synth.new(\sp1, [\gate,1, \fr1,280, \freq1,28*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth18 = Synth.new(\sp1, [\gate,1, \fr1,300, \freq1,30*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth19 = Synth.new(\sp1, [\gate,1, \fr1,320, \freq1,32/100,\mul,~val.linexp(0,1023,1,10)]);
~synth20 = Synth.new(\sp1, [\gate,1, \fr1,330, \freq1,33*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth21 = Synth.new(\sp1, [\gate,1, \fr1,350, \freq1,35*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth22 = Synth.new(\sp1, [\gate,1, \fr1,360, \freq1,36*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth23 = Synth.new(\sp1, [\gate,1, \fr1,400, \freq1,40*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synt24 = Synth.new(\sp1, [\gate,1, \fr1,420, \freq1,42*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synt25 = Synth.new(\sp1, [\gate,1, \fr1,440, \freq1,44*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth26 = Synth.new(\sp1, [\gate,1, \fr1,450, \freq1,45*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth27 = Synth.new(\sp1, [\gate,1, \fr1,480, \freq1,48*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth28 = Synth.new(\sp1, [\gate,1, \fr1,490, \freq1,49*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth29 = Synth.new(\sp1, [\gate,1, \fr1,500, \freq1,50*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth30 = Synth.new(\sp1, [\gate,1, \fr1,550, \freq1,55*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth31 = Synth.new(\sp1, [\gate,1, \fr1,560, \freq1,56*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth32 = Synth.new(\sp1, [\gate,1, \fr1,600, \freq1,60*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth33 = Synth.new(\sp1, [\gate,1, \fr1,640, \freq1,64*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth34 = Synth.new(\sp1, [\gate,1, \fr1,660, \freq1,66*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth35 = Synth.new(\sp1, [\gate,1, \fr1,700, \freq1,70*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth36 = Synth.new(\sp1, [\gate,1, \fr1,720, \freq1,72*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth37 = Synth.new(\sp1, [\gate,1, \fr1,770, \freq1,77*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth38 = Synth.new(\sp1, [\gate,1, \fr1,800, \freq1,80*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth39 = Synth.new(\sp1, [\gate,1, \fr1,810, \freq1,81*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth40 = Synth.new(\sp1, [\gate,1, \fr1,840, \freq1,84*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth41 = Synth.new(\sp1, [\gate,1, \fr1,880, \freq1,88*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth42 = Synth.new(\sp1, [\gate,1, \fr1,900, \freq1,90*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth43 = Synth.new(\sp1, [\gate,1, \fr1,960, \freq1,96*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth44 = Synth.new(\sp1, [\gate,1, \fr1,990, \freq1,99*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth45 = Synth.new(\sp1, [\gate,1, \fr1,1000, \freq1,100*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth46 = Synth.new(\sp1, [\gate,1, \fr1,1080, \freq1,108*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth47 = Synth.new(\sp1, [\gate,1, \fr1,1100, \freq1,110*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth48 = Synth.new(\sp1, [\gate,1, \fr1,1200, \freq1,120*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth49 = Synth.new(\sp1, [\gate,1, \fr1,1210, \freq1,121*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth50 = Synth.new(\sp1, [\gate,1, \fr1,1320, \freq1,132*1/100,\mul,~val.linexp(0,1023,1,10)]);
~synth51 = Synth.new(\sp1, [\gate,1, \fr1,1440, \freq1,144*1/100,\mul,~val.linexp(0,1023,1,10)]);

)


); 0.yield});
		1.do({((

y= Pdef(\p_tria1,
 Pbind(*[
    instrument: \tria1,
					\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([2000, 2000000], inf), Pseq([2, 2],inf), Pseq([\exp, \exp],inf));
					//\mul1,Pexprand(20,20000,inf)

])

).play(quant:1)
)); 1.yield});
		1.do({((

y= Pdef(\p_tria2,
 Pbind(*[
    instrument: \tria2,
							\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([ 2000000, 2000], inf), Pseq([2, 2],inf), Pseq([\exp, \exp],inf));
					//\mul1,Pexprand(20,20000,inf);

])

).play(quant:1)
)); 1.yield});
		1.do({((

y= Pdef(\p_tria3,
 Pbind(*[
    instrument: \tria3,
							\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([2000,  2000000], inf), Pseq([2, 2],inf), Pseq([\exp, \exp],inf));
					//\mul1,Pexprand(20,20000,inf);

])

).play(quant:1)
)); 1.yield});
		1.do({((

y= Pdef(\p_tria4,
 Pbind(*[
    instrument: \tria4,
						\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([ 2000000, 2000], inf), Pseq([2,2],inf), Pseq([\exp, \exp],inf));
					//\mul1,Pexprand(20,20000,inf);
])

).play(quant:1)
));  1.yield});



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
 