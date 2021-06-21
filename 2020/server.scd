o = ServerOptions.new
o.maxLogins = 8 ;
p = Server.remote(\pi,NetAddr("192.168.1.2", 57111),o);
p.serverRunning

{SinOsc.ar(440)}.play(p)

p.freeAll



SynthDef("sine", { Out.ar(0, SinOsc.ar(440, 0, 0.2)) }).send(p);


Synth.new(\sine);
// schedule (run) synthesis

p.sendMsg("/p_new", "sine", n = p.nextNodeID, 0, 1);



// stop the synth (delete it)

p.sendMsg("/n_free", n);



