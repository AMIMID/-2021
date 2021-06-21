
b = Buffer.alloc(s,2048);
(
~sig = Signal.sineFill(1024,
	[1,1/4,1/6,1/2],
	0!4);
~wt = ~sig.asWavetable;
b.loadCollection(~wt);
)
b.plot
~sig.plot

{Osc.ar(b,MouseX.kr(100,1000,1),mul:0.2!2)}.play

///////////////////////////////////////
(
var env,sig,wt;
env = Env([0,0.6,-0.9,0.3,0],[4,3,2,1],\sine);
sig = env.asSignal(1024);
wt = sig.asWavetable;
b.loadCollection(wt)
)