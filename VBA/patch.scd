////evaluate to play and pan the WhiteNoise signal in c1/

(
c = Group.new;
~c1 = Synth.head(s,\inputsignal);
~p1 = Synth.head(c,\a);
~p2 = Synth.after(~p1,\b);
~p3 = Synth.after(~p2,\c);
~p4 = Synth.tail(c,\d);
)


c = Group.new



////evaluate to add Pan-position SynthDefs/
(
(
SynthDef(\inputsignal,
	{
		arg az , el;
		var out;
		az = LFSaw.kr(0.1,pi);
		el = 0;
		#w, x, y, z = PanB.ar(SinOsc.ar(432), az, el, 0.3);
        out =   DecodeB2.ar(4, w, x, y,0.5);
		Out.ar(0,out);
}).send(s)
);
(
SynthDef(\a,
	{
		arg az, el;
		var out, input;
		az = LFSaw.kr(0.1,pi);
		el = 1;
		input =	 In.ar(0,1);
		#w, x, y, z = PanB.ar(input, az, el, 0.3);
        out =   DecodeB2.ar(3, w, x, y,0.5);
		Out.ar(4,out);
}).add
);
(
SynthDef(\b,
	{
		arg az, el;
		var out, input;
		az = LFSaw.kr(0.1,pi);
		el = 1;
		input =	 In.ar(1,1);
		#w, x, y, z = PanB.ar(input, az, el, 0.3);
        out =   DecodeB2.ar(3, w, x, y,0.5);
		Out.ar(7,out);
}).add
);
(
SynthDef(\c,
	{
		arg az, el;
		var out, input;
		az = LFSaw.kr(0.1,pi);
		el = 1;
		input =	 In.ar(2,1);
		#w, x, y, z = PanB.ar(input, az, el, 0.3);
        out =   DecodeB2.ar(3, w, x, y,0.5);
		Out.ar(10,out);
}).add
);
(
SynthDef(\d,
	{
		arg az, el;
		var out, input, channel = 3;
		az = LFSaw.kr(0.1,pi);
		el = 1;
		input =	 In.ar(3,1);
		#w, x, y, z = PanB.ar(input, az, el, 0.3);
        out =   DecodeB2.ar(3, w, x, y,0.5);
		Out.ar(13,out);
}).add
);
)

