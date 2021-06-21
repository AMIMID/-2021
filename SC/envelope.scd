(
x = {
	arg t_gate=0;
	////t_  trrigger/////
	var sig,env;
	env = EnvGen.kr(Env.new(
		[0,1,0.2,0],
		[0.5,1,2],
		[3,-3,0]), t_gate,
		doneAction:0);
	sig = Pulse.ar(LFPulse.kr(6).range(150,300)) * env;
}.play;
)

x.set(\t_gate,1);

x.free;

s.freeAll;


////////////adsr///////////////
(
z = {
	arg gate=0;
	var sig, env, freq;
	freq = EnvGen.kr(Env.adsr(1), gate, 200, 0.1);
	env = EnvGen.kr(Env.adsr, gate, doneAction:0);
	sig = VarSaw.ar(SinOsc.kr(freq).range(500,1000)) * env;
}.play;
)

z.set(\gate,0);
s.quit;

