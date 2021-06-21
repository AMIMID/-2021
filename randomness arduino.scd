SerialPort.devices;
~port = SerialPort.new("COM3",115200);
~port1 = SerialPort.new("COM4",115200);
~port.close;
~port1.close;


(
(
SynthDef(\c0,
	{   arg azimuth,freq;
		var audio,sig;
		sig = RLPF.ar(WhiteNoise.ar(),freq);
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

~synth = Synth.new(\c0,[\azimuth,0,\freq,~val.linexp(0,1023,20,2000)])

(
~control = Routine.new({
	{
		~synth.set(\freq,~val.linexp(0,1023,20,2000));
		0.01.wait;
	}.loop;
}).play;
);
