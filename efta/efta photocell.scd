SerialPort.devices;
~port = SerialPort.new("COM3",115200);
~port1 = SerialPort.new("COM4",115200);
~port.close;
~port1.close;

(
(
SynthDef(\c0,
	{   arg azimuth,decay,mul;
		var audio,sig;
		sig = (
			SinOsc.ar(100+SinOsc.ar(100.86,mul:mul),phase:SinOsc.ar(100),mul:1)
	+
			SinOsc.ar(200+SinOsc.ar(200.86,mul:mul),phase:SinOsc.ar(200),mul:1/2)
	+
			SinOsc.ar(300+SinOsc.ar(300.86,mul:mul),phase:SinOsc.ar(300),mul:1/3)
	+
	SinOsc.ar(400+SinOsc.ar(400.86,mul:mul),phase:SinOsc.ar(400),mul:1/4)
	+
	SinOsc.ar(500+SinOsc.ar(500.86,mul:mul),phase:SinOsc.ar(500),mul:1/5)
	+
	SinOsc.ar(600+SinOsc.ar(600.86,mul:mul),phase:SinOsc.ar(600),mul:1/6)
	+
	SinOsc.ar(700+SinOsc.ar(700.86,mul:mul),phase:SinOsc.ar(700),mul:1/7)
	+
	SinOsc.ar(800+SinOsc.ar(800.86,mul:mul),phase:SinOsc.ar(800),mul:1/8)
	+
	SinOsc.ar(900+SinOsc.ar(900.86,mul:mul),phase:SinOsc.ar(900),mul:1/9)
		);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,azimuth);
	Out.ar(0,audio);
}
).add;
);

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
)

~synth = Synth.new(\c0,[\azimuth,0,\mul,~val.linexp(0,1023,20,2000)])

(
~control = Routine.new({
	{
		~synth.set(\mul,~val.linexp(0,1023,20,2000));
		0.01.wait;
	}.loop;
}).play;
);

