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

		#w, x, y, z = PanB.ar(SinOsc.ar(fr1),SinOsc.kr(freq1),gain:0.05);

		audio =   DecodeB2.ar(16, w, x, y, 1);

		Out.ar(4,audio);
}).add
);


//////////////////////////////////////////////////////////////////////////////

(
(SynthDef(\tria1,
	{   arg decay,mul;

		var sig1;

		sig1= InFeedback.ar(4)*(Dust2.ar(1*mul));
		Out.ar(0,sig1);
}).add;
);

)


~synth1 = Synth.new(\tria1,[\mul,~val.linexp(0,1023,200000000,200)])

(
~control = Routine.new({
	{
		~synth1.set(\mul,~val.linexp(0,1023,200000000,200));
		0.01.wait;
	}.loop;
}).play;
)




(
 Synth.new(\sp1, [\gate,1, \fr1,40, \freq1,0.01*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,60, \freq1,0.02*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,0.03*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,90, \freq1,0.04*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,100, \freq1,0.05*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,120, \freq1,0.06*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,140, \freq1,0.07*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,150, \freq1,0.08*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,160, \freq1,0.09*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,180, \freq1,0.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,200, \freq1,0.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,210, \freq1,0.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,220, \freq1,0.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,240, \freq1,0.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,250, \freq1,0.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,270, \freq1,0.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,280, \freq1,0.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,300, \freq1,0.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,320, \freq1,1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,330, \freq1,1.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,350, \freq1,1.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,360, \freq1,1.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,400, \freq1,1.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,420, \freq1,1.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,440, \freq1,1.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,450, \freq1,1.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,480, \freq1,1.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,490, \freq1,1.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,500, \freq1,2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,550, \freq1,2.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,560, \freq1,2.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,600, \freq1,2.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,640, \freq1,2.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,660, \freq1,2.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,700, \freq1,2.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,720, \freq1,2.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,770, \freq1,2.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,800, \freq1,2.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,810, \freq1,3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,840, \freq1,3.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,880, \freq1,3.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,900, \freq1,3.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,960, \freq1,3.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,990, \freq1,3.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1000, \freq1,3.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1080, \freq1,3.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1100, \freq1,3.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1200, \freq1,4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1210, \freq1,4.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1320, \freq1,4.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1440, \freq1,4.3*1/4]);

)























































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


////////////////
////////////////
 