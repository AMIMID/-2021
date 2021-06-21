s.makeWindow
s.scope
s.freqscope
(
(
(
SynthDef(\1,
	{
		arg  freq1, freqq1, fr1, amp1, out=0, add;
		var audio, env;

		env = EnvGen.kr(Env.perc(1.5,4,level:1,curve:-8),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar( BLowPass.ar(SinOsc.ar(fr1,mul:amp1),300,MouseY.kr(0.0,1.0,\linear),0.5),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(6, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\2,
	{
		arg  freq1, freqq1, fr1, amp1,  out=0, add;
		var audio, env;

		env = EnvGen.kr(Env.perc(1.5,4,level:1,curve:-8),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar( BLowPass.ar(SinOsc.ar(fr1,mul:amp1),600,MouseY.kr(0.0,1.0,\linear),0.5),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(6, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\3,
	{
		arg  freq1, freqq1, fr1, amp1,out=0, add;
		var audio, env;

		env = EnvGen.kr(Env.perc(1.5,4,level:1,curve:-8),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar( BLowPass.ar(SinOsc.ar(fr1,mul:amp1),900,MouseY.kr(0.0,1.0,\linear),0.5),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(6, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\4,
	{
		arg  freq1, freqq1, fr1, amp1, out=0, add;
		var audio, env;

		env = EnvGen.kr(Env.perc(1.5,4,level:1,curve:-8),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar( BLowPass.ar(SinOsc.ar(fr1,mul:amp1),1200,MouseY.kr(0.0,1.0,\linear),0.5),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(6, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
);
(
(
SynthDef(\5,
	{
		arg  freq1, freqq1, fr1, amp1, out=0, add;
		var audio, env;

		env = EnvGen.kr(Env.perc(1.5,4,level:1,curve:-8),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar( BHiPass.ar(SinOsc.ar(fr1,mul:amp1),1200,MouseY.kr(0.0,1.0,\linear),0.5),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(6, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\6,
	{
		arg  freq1, freqq1, fr1, amp1,  out=0, add;
		var audio, env;

		env = EnvGen.kr(Env.perc(1.5,4,level:1,curve:-8),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar( BHiPass.ar(SinOsc.ar(fr1,mul:amp1),900,MouseY.kr(0.0,1.0,\linear),0.5),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(6, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\7,
	{
		arg  freq1, freqq1, fr1, amp1,  out=0, add;
		var audio, env;

		env = EnvGen.kr(Env.perc(1.5,4,level:1,curve:-8),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar( BHiPass.ar(SinOsc.ar(fr1,mul:amp1),600,MouseY.kr(0.0,1.0,\linear),0.5),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(6, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(8,
	{
		arg  freq1, freqq1, fr1, amp1,  out=0, add;
		var audio, env;

		env = EnvGen.kr(Env.perc(1.5,4,level:1,curve:-8),gate:1, doneAction:2);


		#w, x, y, z = PanB.ar( BHiPass.ar(SinOsc.ar(fr1,mul:amp1),300,MouseY.kr(0.0,1.0,\linear),0.5),
			 LFSaw.kr(freq1), SinOsc.kr(freqq1,1pi), 0.1);

		audio =   DecodeB2.ar(6, w, x, y, 1);

		Out.ar(out,audio * env );
}).add
);
)
)


(
(
(
a = Synth.new(\1, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\1, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\1, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\1, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
);

(
a = Synth.new(\2, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\2, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\2, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\2, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
);


(
a = Synth.new(\3, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\3, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\3, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\3, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
);


(
a = Synth.new(\4, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\4, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\4, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\4, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
);
);
(
(
a = Synth.new(\5, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\5, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\5, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\5, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
);

(
a = Synth.new(\6, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\6, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\6, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\6, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
);


(
a = Synth.new(\7, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\7, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\7, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\7, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
);


(
a = Synth.new(\8, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\8, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\8, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\8, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
);
);
)

//////////////////////////

(
Tdef(\a16,
      {
		1.do({(
a = Synth.new(\1, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\1, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\1, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\1, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
); 1.yield});


			1.do({(
a = Synth.new(\2, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\2, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\2, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\2, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
); 1.yield});

		1.do({(
a = Synth.new(\3, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\3, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\3, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\3, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
); 1.yield});

		1.do({(
a = Synth.new(\4, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\4, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\4, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\4, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
); 1.yield});

			1.do({(
a = Synth.new(\5, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\5, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\5, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\5, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
); 1.yield});

		1.do({(
a = Synth.new(\6, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\6, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\6, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\6, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
); 1.yield});

		1.do({(
a = Synth.new(\7, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\7, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\7, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\7, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
); 1.yield});

		1.do({(
a = Synth.new(\8, [ \fr1,300, \freq1,6,\freqq1,6, \amp1,1]);
b = Synth.new(\8, [ \fr1,600, \freq1,26,\freqq1,26,\amp1,1/2]);
c = Synth.new(\8, [ \fr1,900, \freq1,98,\freqq1,98,\amp1,1/3]);
d = Synth.new(\8, [ \fr1,1200, \freq1,354,\freqq1,354,\amp1,1/4]);
); 1.yield});

	}
);
)

Tdef(\a16).play;
(
Tdef(\b16,
      {
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});
		1.do({(Tdef(\a16).play;); 5.yield});

	}
);
)

Tdef(\b16).play;
