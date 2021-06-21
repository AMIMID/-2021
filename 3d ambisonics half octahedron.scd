(
{
    var  p, a, b, c, d;

	p = Dust.ar(2000); // source

    // B-format encode

	#w, x, y, z = PanB.ar(p,LFSaw.ar(0.5),LFSaw.ar(0.2), 0.3);

    // B-format decode to cube / quad ([lfh, rfh, rrh, lrh, lfl, rfl, rrl, lrl])
    // lfl = left fron high, lfl = left front low etc...
    BFDecode1.ar(w, x, y, z,
        [-0.25pi, 0.25pi,0.75pi, 1.25pi,0pi],
        [0pi,0pi,0pi,0pi,-0.5pi]);

}.scope(5);
)

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
	arg cutoff = 1000,el;
	var sig,audio;
	sig = Saw.ar(50);
	sig = RLPF.ar(sig,cutoff.lag(0.02),0.25,0.2);

	#w, x, y, z = PanB.ar(sig,0,SinOsc.ar(el),0.3);

    // B-format decode to cube / quad ([lfh, rfh, rrh, lrh, lfl, rfl, rrl, lrl])
    // lfl = left fron high, lfl = left front low etc...
   audio =  BFDecode1.ar(w, x, y, z,
        [-0.25pi, 0.25pi,0.75pi, 1.25pi,0pi],
        [0pi,0pi,0pi,0pi,-0.5pi]);



	Out.ar(0,audio);
}).add;
)

(
SynthDef.new(\saw2,{
	arg cutoff = 1000,el;
	var sig,audio;
	sig = Saw.ar(51);
	sig = RLPF.ar(sig,cutoff.lag(0.02),0.25,0.2);

	#w, x, y, z = PanB.ar(sig,1,SinOsc.ar(el),0.3);

    // B-format decode to cube / quad ([lfh, rfh, rrh, lrh, lfl, rfl, rrl, lrl])
    // lfl = left fron high, lfl = left front low etc...
   audio =  BFDecode1.ar(w, x, y, z,
        [-0.25pi, 0.25pi,0.75pi, 1.25pi,0pi],
        [0pi,0pi,0pi,0pi,-0.5pi]);



	Out.ar(0,audio);
}).add;
)

(
~synth = Synth.new(\saw,[\el,~val.linexp(0,1023,0.1,10)]);
~synth1 = Synth.new(\saw2,[\el,~val.linexp(0,1023,0.1,10)]);
)

(
~control = Routine.new({
	{
		~synth.set(\el,~val.linexp(0,1023,0.1,10));
		~synth1.set(\el,~val.linexp(0,1023,0.25,5));
		0.01.wait;
	}.loop;
}).play;
)


