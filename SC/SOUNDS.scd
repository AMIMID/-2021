(
(
SynthDef(\1,
	{
		arg   fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(20,40,30,level:0.2,curve:\sine),gate:1, doneAction:2);

		audio =  Pan2.ar(SinOsc.ar(fr1*6,mul:amp1*1));

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\2,
	{
		arg  fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(20,40,30,level:0.2,curve:\sine),gate:1, doneAction:2);

		audio =   Pan2.ar(SinOsc.ar(fr1*26,mul:amp1*1/2));

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\3,
	{
		arg   fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(20,40,30,level:0.2,curve:\sine),gate:1, doneAction:2);

		audio =   Pan2.ar(SinOsc.ar(fr1*98,mul:amp1*1/3));

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\4,
	{
		arg   fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(20,40,30,level:0.2,curve:\sine),gate:1, doneAction:2);

		audio =   Pan2.ar(SinOsc.ar(fr1*354,mul:amp1*1/4));

		Out.ar(out,audio * env );
}).add
)
)
(
c = Synth.new(\1, [ \fr1,6,\amp1,1]);
d = Synth.new(\1, [ \fr1,26,\amp1,1/2]);
e = Synth.new(\1, [ \fr1,98,\amp1,1/3]);
f = Synth.new(\1, [ \fr1,354,\amp1,1/4]);

c = Synth.new(\2, [ \fr1,6,\amp1,1]);
d = Synth.new(\2, [ \fr1,26,\amp1,1/2]);
e = Synth.new(\2, [ \fr1,98,\amp1,1/3]);
f = Synth.new(\2, [ \fr1,354,\amp1,1/4]);

c = Synth.new(\3, [ \fr1,6,\amp1,1]);
d = Synth.new(\3, [ \fr1,26,\amp1,1/2]);
e = Synth.new(\3, [ \fr1,98,\amp1,1/3]);
f = Synth.new(\3, [ \fr1,354,\amp1,1/4]);

c = Synth.new(\4, [ \fr1,6,\amp1,1]);
d = Synth.new(\4, [ \fr1,26,\amp1,1/2]);
e = Synth.new(\4, [ \fr1,98,\amp1,1/3]);
f = Synth.new(\4, [ \fr1,354,\amp1,1/4]);
)
///////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
(
(
SynthDef(\1,
	{
		arg   fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(20,40,30,level:0.2,curve:\sine),gate:1, doneAction:2);

		audio =  Pan2.ar(SinOsc.ar(fr1*Blip.ar(6,MouseX.kr(1,12)),mul:amp1*1));

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\2,
	{
		arg  fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(20,40,30,level:0.2,curve:\sine),gate:1, doneAction:2);

		audio =   Pan2.ar(SinOsc.ar(fr1*Blip.ar(26,MouseX.kr(1,12)),mul:amp1*1/2));

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\3,
	{
		arg   fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(20,40,30,level:0.2,curve:\sine),gate:1, doneAction:2);

		audio =   Pan2.ar(SinOsc.ar(fr1*Blip.ar(98,MouseX.kr(1,12)),mul:amp1*1/3));

		Out.ar(out,audio * env );
}).add
);
(
SynthDef(\4,
	{
		arg   fr1, amp1, out=0;
		var audio, env;

		env = EnvGen.kr(Env.linen(20,40,30,level:0.2,curve:\sine),gate:1, doneAction:2);

		audio =   Pan2.ar(SinOsc.ar(fr1*Blip.ar(354,MouseX.kr(1,12)),mul:amp1*1/4));

		Out.ar(out,audio * env );
}).add
)
)
(
c = Synth.new(\1, [ \fr1,6,\amp1,1]);
d = Synth.new(\1, [ \fr1,26,\amp1,1/2]);
e = Synth.new(\1, [ \fr1,98,\amp1,1/3]);
f = Synth.new(\1, [ \fr1,354,\amp1,1/4]);

c = Synth.new(\2, [ \fr1,6,\amp1,1]);
d = Synth.new(\2, [ \fr1,26,\amp1,1/2]);
e = Synth.new(\2, [ \fr1,98,\amp1,1/3]);
f = Synth.new(\2, [ \fr1,354,\amp1,1/4]);

c = Synth.new(\3, [ \fr1,6,\amp1,1]);
d = Synth.new(\3, [ \fr1,26,\amp1,1/2]);
e = Synth.new(\3, [ \fr1,98,\amp1,1/3]);
f = Synth.new(\3, [ \fr1,354,\amp1,1/4]);

c = Synth.new(\4, [ \fr1,6,\amp1,1]);
d = Synth.new(\4, [ \fr1,26,\amp1,1/2]);
e = Synth.new(\4, [ \fr1,98,\amp1,1/3]);
f = Synth.new(\4, [ \fr1,354,\amp1,1/4]);
)