SerialPort.devices;
~port = SerialPort.new("COM3",115200);
~port.close;


(
x = [];
30.do{x=x.add(~port.read)};
x.collect(_.asAscii);
)

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

(
SynthDef.new(\saw,{
	arg cutoff = 1000;
	var sig;
	sig = Saw.ar([50,51]);
	sig = RLPF.ar(sig,cutoff.lag(0.02),0.25,0.2);
	Out.ar(0,sig);
}).add;
)

~synth = Synth.new(\saw,[\cutoff,~val.linexp(0,1,80,4000)])

(
~control = Routine.new({
	{
		~synth.set(\cutoff,~val.linexp(0,1,80,4000));
		0.01.wait;
	}.loop;
}).play;
)

