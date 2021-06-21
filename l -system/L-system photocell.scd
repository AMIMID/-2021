s.boot;
s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=8

SerialPort.devices;
~port = SerialPort.new("COM3",115200);
~port1 = SerialPort.new("COM4",115200);
~port.close;
~port1.close;

(
(
~charArray1 = [];
~getValues1 = Routine.new({
	var ascii;
	{
	ascii = ~port1.read.asAscii;
		if(ascii.isDecDigit, {~charArray1 = ~charArray1.add(ascii)});
		if(ascii == $a,{
			~val1 = ~charArray1.collect(_.digit).convertDigits;
			~charArray1 = [];
		});
	}.loop;
}).play;
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

//////////////////////////////////////////////////////////

(
(
SynthDef(\mall,{arg out=4,note, amp = 1, decay;
	var sig= RLPF.ar(Saw.ar(note),1000,0.25,0.2);
    var env=EnvGen.kr(Env.perc(0.1,decay), doneAction:2);
    Out.ar(out, sig*env*amp);
}).add;
);
(

SynthDef(\mall2,{arg out1=5,note1, amp1 = 1, decay1;
	var sig= RLPF.ar(Saw.ar(note1),1000,0.25,0.2);
    var env=EnvGen.kr(Env.perc(0.1,decay1), doneAction:2);
    Out.ar(out1, sig*env*amp1);
}).add;
);
(

SynthDef(\mall3,{arg out2=6,note2, amp2 = 1, decay2;
	var sig= RLPF.ar(Saw.ar(note2),1000,0.25,0.2);
    var env=EnvGen.kr(Env.perc(0.1,decay2), doneAction:2);
    Out.ar(out2, sig*env*amp2);
}).add;
);
(

SynthDef(\mall4,{arg out3=7,note3, amp3 = 1, decay3;
	var sig= RLPF.ar(Saw.ar(note3),1000,0.25,0.2);
    var env=EnvGen.kr(Env.perc(0.1,decay3), doneAction:2);
    Out.ar(out3, sig*env*amp3);
}).add;
);
(SynthDef(\tria1,
	{   arg mul1;
		var sig1;
		sig1= InFeedback.ar(4)*(Dust2.ar(mul1));
		Out.ar(0,sig1);
}).add;
);
(SynthDef(\tria2,
	{   arg mul2;
		var sig2;
		sig2=InFeedback.ar(5)*(Dust2.ar(mul2));
		Out.ar(1,sig2);
}).add;
);
(SynthDef(\tria3,
	{   arg mul3;
		var sig3;
		sig3=InFeedback.ar(6)*(Dust2.ar(mul3));
		Out.ar(2,sig3);
}).add;
);
(SynthDef(\tria4,
	{   arg mul4;
		var sig4;
    sig4=InFeedback.ar(7)*(Dust2.ar(mul4));
	Out.ar(3,sig4);
}).add;
);
)


////////////////////////////////////////////

///////////////////////////////////////////////


///////////////////////////////////////////////////

(
var dict = IdentityDictionary[\A -> "AB", \B -> "A", \C -> "DB", \D -> "BC", \E -> "FD", \F -> "DE" , \G -> "HF",\H  -> "FG"];
var dict1 = IdentityDictionary[\A -> "AB", \B -> "BC", \C -> "AD", \D -> "DB", \E -> "EF", \F -> "FG" , \G -> "EH",\H  -> "HF"];//These are the production rules of the L-system
var word = "ACEG";
var word1 = "AE";//Axiom word
var string_temp = "";
var string_temp1 = "";
var iter = 8;
var dict3 = IdentityDictionary[\A -> "AB", \B -> "A", \C -> "DB", \D -> "BC", \E -> "FD", \F -> "DE" , \G -> "HF",\H  -> "FG"];
var dict4 = IdentityDictionary[\A -> "AB", \B -> "BC", \C -> "AD", \D -> "DB", \E -> "EF", \F -> "FG" , \G -> "EH",\H  -> "HF"];//These are the production rules of the L-system
var word3 = "ACEG";
var word4 = "AE";//Axiom word
var string_temp3 = "";
var string_temp4 = "";
var iter1 = 8;
var dict5 = IdentityDictionary[\A -> "AB", \B -> "A", \C -> "DB", \D -> "BC", \E -> "FD", \F -> "DE" , \G -> "HF",\H  -> "FG"];
var dict6 = IdentityDictionary[\A -> "AB", \B -> "BC", \C -> "AD", \D -> "DB", \E -> "EF", \F -> "FG" , \G -> "EH",\H  -> "HF"];//These are the production rules of the L-system
var word5 = "ACEG";
var word6 = "AE";//Axiom word
var string_temp5 = "";
var string_temp6 = "";
var iter2 = 8;
var dict7 = IdentityDictionary[\A -> "AB", \B -> "A", \C -> "DB", \D -> "BC", \E -> "FD", \F -> "DE" , \G -> "HF",\H  -> "FG"];
var dict8 = IdentityDictionary[\A -> "AB", \B -> "BC", \C -> "AD", \D -> "DB", \E -> "EF", \F -> "FG" , \G -> "EH",\H  -> "HF"];//These are the production rules of the L-system
var word7 = "ACEG";
var word8 = "AE";//Axiom word
var string_temp7 = "";
var string_temp8 = "";
var iter3 = 8;

//These are diction for the mapping of the alphabet to "artistic" parameters: degrees in a scale, beat occurrence, etc.

var dictnotes = IdentityDictionary[\A -> 261.63, \B -> 277.18, \C -> 311.13, \D -> 349.23, \E -> 392.00, \F -> 415.30, \G -> 466.16, \H -> 523.25];
var dictnotes1 = IdentityDictionary[\A -> 1, \B -> 0.5, \C -> 0.25, \D -> 0.125, \E -> 1, \F ->0.5, \G -> 0.25, \H -> 0.125];
var dictnotes3 = IdentityDictionary[\A -> 261.63, \B -> 277.18, \C -> 311.13, \D -> 349.23, \E -> 392.00, \F -> 415.30, \G -> 466.16, \H -> 523.25];
var dictnotes4 = IdentityDictionary[\A -> 0.5, \B -> 0.25, \C -> 0.125, \D -> 1, \E -> 0.5, \F ->0.25, \G -> 0.125, \H -> 1];
var dictnotes5 = IdentityDictionary[\A -> 261.63, \B -> 277.18, \C -> 311.13, \D -> 349.23, \E -> 392.00, \F -> 415.30, \G -> 466.16, \H -> 523.25];
var dictnotes6 = IdentityDictionary[\A -> 0.25, \B -> 0.125, \C -> 1, \D -> 0.5, \E -> 0.25, \F ->0.125, \G -> 1, \H -> 0.5];
var dictnotes7 =IdentityDictionary[\A -> 261.63, \B -> 277.18, \C -> 311.13, \D -> 349.23, \E -> 392.00, \F -> 415.30, \G -> 466.16, \H -> 523.25];
var dictnotes8 = IdentityDictionary[\A -> 0.125, \B -> 1, \C -> 0.5, \D -> 0.25, \E -> 0.125, \F ->1, \G -> 0.5, \H -> 0.25];
var notes=[];
var notes1=[];
var notes3=[];
var notes4=[];
var notes5=[];
var notes6=[];
var notes7=[];
var notes8=[];

//This iteration generates the system recursively

iter.do({

word.asArray.do({|i|
    string_temp = string_temp ++ dict[i.asSymbol];
});

word = string_temp;
});

word.postln;

iter.do({

word1.asArray.do({|i|
    string_temp1 = string_temp1 ++ dict1[i.asSymbol];
});

word1 = string_temp1;
});

word1.postln;


iter1.do({

word3.asArray.do({|i|
    string_temp3 = string_temp3 ++ dict3[i.asSymbol];
});

word3 = string_temp3;
});

word3.postln;

iter1.do({

word4.asArray.do({|i|
    string_temp4 = string_temp4 ++ dict4[i.asSymbol];
});

word4 = string_temp4;
});

word4.postln;

iter2.do({

word5.asArray.do({|i|
    string_temp5 = string_temp5 ++ dict5[i.asSymbol];
});

word5 = string_temp5;
});

word5.postln;

iter2.do({

word6.asArray.do({|i|
    string_temp6 = string_temp6 ++ dict6[i.asSymbol];
});

word6 = string_temp6;
});

word6.postln;


iter3.do({

word7.asArray.do({|i|
    string_temp7 = string_temp7 ++ dict7[i.asSymbol];
});

word7 = string_temp7;
});

word7.postln;

iter3.do({

word8.asArray.do({|i|
    string_temp8 = string_temp8 ++ dict8[i.asSymbol];
});

word8 = string_temp8;
});

word8.postln;
//Here we map the final system to the parameters as above

word.do({|i| notes = notes ++ dictnotes[i.asSymbol];});
word1.do({|i| notes1 = notes1 ++ dictnotes1[i.asSymbol];});
word3.do({|i| notes3 = notes3 ++ dictnotes3[i.asSymbol];});
word4.do({|i| notes4 = notes4 ++ dictnotes4[i.asSymbol];});
word5.do({|i| notes5 = notes5 ++ dictnotes5[i.asSymbol];});
word6.do({|i| notes6 = notes6 ++ dictnotes6[i.asSymbol];});
word7.do({|i| notes7 = notes7 ++ dictnotes7[i.asSymbol];});
word8.do({|i| notes8 = notes8 ++ dictnotes8[i.asSymbol];});


notes.postln;
notes1.postln;
notes3.postln;
notes4.postln;
notes5.postln;
notes6.postln;
notes7.postln;
notes8.postln;


Pbind(*[\instrument: \mall4, \note3: Pseq(notes7,inf), \dur:Pseq(notes8,inf), \decay3: 0.1,\amp3: 1]).play(quant:64);
Pbind(*[\instrument: \mall3, \note2: Pseq(notes5,inf), \dur:Pseq(notes6,inf), \decay2: 0.1,\amp2: 1]).play(quant:64);
Pbind(*[\instrument: \mall2, \note1: Pseq(notes3,inf), \dur:Pseq(notes4,inf), \decay1: 0.1,\amp1: 1]).play(quant:64);
Pbind(*[\instrument: \mall, \note: Pseq(notes,inf), \dur:Pseq(notes1,inf), \decay: 0.1,\amp: 1]).play(quant:64);
~synth2 = Synth.new(\tria2,[\mul2,~val1.linexp(423,1023,20000000,200)]);
~synth1 = Synth.new(\tria1,[\mul1,~val1.linexp(423,1023,20000000,200)]);


)

(
~control = Routine.new({
	{
		~synth1.set(\mul1,~val.linexp(423,1023,20000000,200));
		~synth2.set(\mul2,~val1.linexp(423,1023,20000000,200));
		0.01.wait;
	}.loop;
}).play;
)