s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels= 18;

s.record(numChannels:2);
////////////////////////////////
//////////////////////////////////////////////////////
(
({
	SinOsc.ar(100,phase:SinOsc.ar(100),mul:1)
	+
	SinOsc.ar(200,phase:SinOsc.ar(200),mul:1/2)
	+
	SinOsc.ar(300,phase:SinOsc.ar(300),mul:1/3)
	+
	SinOsc.ar(400,phase:SinOsc.ar(400),mul:1/4)
	+
	SinOsc.ar(500,phase:SinOsc.ar(500),mul:1/5)
	+
	SinOsc.ar(600,phase:SinOsc.ar(600),mul:1/6)
	+
	SinOsc.ar(700,phase:SinOsc.ar(700),mul:1/7)
	+
	SinOsc.ar(800,phase:SinOsc.ar(800),mul:1/8)
	+
	SinOsc.ar(900,phase:SinOsc.ar(900),mul:1/9)
}).play;
)
(
(
SynthDef(\c0,
	{   arg azimuth,decay,freq;
		var audio,sig,env,mul;
		mul = TExpRand.kr(1,100000,Dust.kr(44100));
		sig = FreeVerb.ar(RLPF.ar(
			SinOsc.ar(1*freq*mul,phase:SinOsc.ar(100),mul:1)
	+
			SinOsc.ar(2*freq*mul,phase:SinOsc.ar(200),mul:1/2)
	+
			SinOsc.ar(3*freq*mul,phase:SinOsc.ar(300),mul:1/3)
	+
	SinOsc.ar(4*freq*mul,phase:SinOsc.ar(400),mul:1/4)
	+
	SinOsc.ar(5*freq*mul,phase:SinOsc.ar(500),mul:1/5)
	+
	SinOsc.ar(6*freq*mul,phase:SinOsc.ar(600),mul:1/6)
	+
	SinOsc.ar(7*freq*mul,phase:SinOsc.ar(700),mul:1/7)
	+
	SinOsc.ar(8*freq*mul,phase:SinOsc.ar(800),mul:1/8)
	+
	SinOsc.ar(9*freq*mul,phase:SinOsc.ar(900),mul:1/9),15000,1),mix:0.5,room:1);
	env=EnvGen.kr(Env.perc(0.01,decay+1),gate:1, doneAction:2);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,azimuth);
	Out.ar(0,audio*env);
}
).add;
);
)
(
(
SynthDef(\c0,
	{   arg azimuth,decay,freq;
		var audio,sig,env,mul;
		mul = TExpRand.kr(1,2,Dust.kr(44100));
		sig = FreeVerb.ar(RLPF.ar(
			SinOsc.ar(1*freq*mul,phase:SinOsc.ar(1*mul),mul:1)
	+
			SinOsc.ar(2*freq*mul,phase:SinOsc.ar(2*mul),mul:1/2)
	+
			SinOsc.ar(3*freq*mul,phase:SinOsc.ar(3*mul),mul:1/3)
	+
	SinOsc.ar(4*freq*mul,phase:SinOsc.ar(4*mul),mul:1/4)
	+
	SinOsc.ar(5*freq*mul,phase:SinOsc.ar(5*mul),mul:1/5)
	+
	SinOsc.ar(6*freq*mul,phase:SinOsc.ar(6*mul),mul:1/6)
	+
	SinOsc.ar(7*freq*mul,phase:SinOsc.ar(7*mul),mul:1/7)
	+
	SinOsc.ar(8*freq*mul,phase:SinOsc.ar(8*mul),mul:1/8)
	+
	SinOsc.ar(9*freq*mul,phase:SinOsc.ar(9*mul),mul:1/9),15000,1),mix:0.5,room:1);
	env=EnvGen.kr(Env.perc(0.01,decay+1),gate:1, doneAction:2);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,azimuth);
	Out.ar(0,audio*env);
}
).add;
);
)
(
(
SynthDef(\c0,
	{   arg azimuth,decay,freq;
		var audio,sig,env,mul;
		mul = 1;
		sig = FreeVerb.ar(RLPF.ar(
	SinOsc.ar(1/2*freq*mul,phase:SinOsc.ar(1/2*freq),mul:1)
	+
    SinOsc.ar(2/2*freq*mul,phase:SinOsc.ar(2/2*freq),mul:1/2)
	+
	SinOsc.ar(3/2*freq*mul,phase:SinOsc.ar(3/2*freq),mul:1/3)
	+
	SinOsc.ar(4/2*freq*mul,phase:SinOsc.ar(4/2*freq),mul:1/4)
	+
	SinOsc.ar(5/2*freq*mul,phase:SinOsc.ar(5/2*freq),mul:1/5)
	+
	SinOsc.ar(6/2*freq*mul,phase:SinOsc.ar(6/2*freq),mul:1/6)
	+
	SinOsc.ar(7/2*freq*mul,phase:SinOsc.ar(7/2*freq),mul:1/7)
	+
	SinOsc.ar(8/2*freq*mul,phase:SinOsc.ar(8/2*freq),mul:1/8)
	+
	SinOsc.ar(9/2*freq*mul,phase:SinOsc.ar(9/2*freq),mul:1/9),20000,1),mix:0.5,room:1);
	env=EnvGen.kr(Env.perc(0.01,decay+1),gate:1, doneAction:2);
		//env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		audio= PanAz.ar(2,sig,azimuth);
	Out.ar(0,audio*env);
}
).add;
);
)



(
Tdef(\pattern_c,
      {
1.do({((

a= Pdef(\p_c0,
 Pbind(*[
    instrument: \c0,
					\dur,0.25,
					\freq,Pseq([196.00,392.00,466.16,233.08,392.00,466.16,293.66,587.33,196.00,392.00,466.16,233.08,392.00,466.16,293.66,523.25,196.00,392.00,466.16,233.08,523.25,293.66,440.00,466.16,196.00,392.00,466.16,233.08,392.00,466.16,293.66,587.33,196.00,392.00,466.16,233.08,392.00,466.16,293.66,523.25,196.00,392.00,466.16,233.08,523.25,293.66,440.00,466.16,174.61,349.23,440.00,220.00,349.23,440.00,261.63,523.25,174.61,349.23,440.00,220.00,349.23,440.00,261.63,466.16,174.61,392.00,440.00,220.00,392.00,440.00,261.63,392.00,174.61,349.23,440.00,220.00,349.23,440.00,261.63,523.25,174.61,349.23,440.00,220.00,349.23,440.00,261.63,466.16,174.61,392.00,440.00,220.00,392.00,440.00,261.63,466.16,196.00,587.33,466.16,233.08,523.25,466.16,293.66,440.00,196.00,392.00,466.16,233.08,523.25,466.16,293.66,440.00,196.00,587.33,466.16,233.08,523.25,466.16,293.66,440.00,196.00,392.00,466.16,233.08,523.25,440.00,293.66,392.00,196.00,587.33,466.16,233.08,523.25,466.16,293.66,440.00,196.00,392.00,466.16,233.08,523.25,466.16,293.66,440.00,196.00,587.33,466.16,233.08,523.25,466.16,293.66,440.00,196.00,392.00,466.16,233.08,523.25,440.00,293.66,392.00,174.61,523.25,440.00,220.00,466.16,440.00,261.63,392.00,174.61,349.23,440.00,220.00,466.16,440.00,261.63,392.00,174.61,523.25,440.00,220.00,466.16,440.00,261.63,392.00,174.61,349.23,440.00,220.00,466.16,392.00,261.63,349.23,174.61,523.25,440.00,220.00,466.16,440.00,261.63,392.00,174.61,349.23,440.00,220.00,466.16,440.00,261.63,392.00,174.61,523.25,440.00,220.00,466.16,440.00,261.63,392.00,174.61,349.23,440.00,220.00,466.16,392.00,261.63,349.23],inf),
					\decay,0.25,
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});


	}
)
)
			(
Tdef(\pattern_c,
      {
1.do({((

a= Pdef(\p_c0,
 Pbind(*[
    instrument: \c0,
					\dur,0.25,
					\decay,0.25,
					\azimuth,Pxrand(#[0.5,-0.5],inf);
])

).play(quant:1)
)); 0.yield});


	}
)
)

TempoClock.default.tempo = 1;
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
/////////////////////////////////////////////////////////////////////////////////
(


var dict = IdentityDictionary[\A -> "AB", \B -> "BA"];
var word = "A";
var string_temp = "";
var iter = 12;


var dictnotes = IdentityDictionary[\A -> 0.25, \B ->  0.5];


var notes=[];
var notes1=[];

iter.do({

word.asArray.do({|i|
    string_temp = string_temp ++ dict[i.asSymbol];
});

word = string_temp;
	string_temp = "";

});

word.postln;


word.do({|i| notes = notes ++ dictnotes[i.asSymbol];});


notes.postln;






a = Pbind(*[\instrument:\c0,\dur,Pseq(notes,inf),\decay:Pseq(notes,inf), \azimuth: Pxrand([0.5,-0.5],inf)]).play(quant:1);
(a <> (type: \midi, midiout: m)).play(quant:1);
)



