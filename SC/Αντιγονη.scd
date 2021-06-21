////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
///////////////////////SERVER

s.makeWindow;

s.options.numAudioBusChannels;
s.options.numOutputBusChannels = 4;
s.options.numInputBusChannels =2;
s.options.outDevice
x = ServerOptions.outDevices;

s.options.inDevices

s.options.dump;
s.options.device_("MME : USB Multi-Channel Audio Device");

s.reboot;
s.meter;

(
s=Server.default;
s.options.inDevice = "USB Multi-Channel Audio Device";
s.reboot
)

///////////////////TASK

(
Tdef(\Antigone,
      {
		1.do({
; 4.yield});


		}
)
)


Tdef(\Antigone).play
Tdef(\Antigone).stop
Tdef(\Antigone).pause
Tdef(\Antigone).reset

/////////////////////////SYNTHDEFS
s.scope;

(
//R
Synth.new(\r0, [ \bufr0, ~ba0.bufnum, \ratea0,1, 8.midiratio]);
Synth.new(\r1, [ \bufr1, ~ba1.bufnum, \ratea1,1, 8.midiratio]);
Synth.new(\r2, [ \bufr2, ~ba2.bufnum, \ratea2,1, 8.midiratio]);
Synth.new(\r3, [ \bufr3, ~ba3.bufnum, \ratea3,1, 8.midiratio]);
//Alexandrossos
Synth.new(\a0, [ \bufa0, ~ba0.bufnum, \ratea0,1, 8.midiratio]);
Synth.new(\a1, [ \bufa1, ~ba1.bufnum, \ratea1,1, 8.midiratio]);
Synth.new(\a2, [ \bufa2, ~ba2.bufnum, \ratea2,1, 8.midiratio]);
Synth.new(\a3, [ \bufa3, ~ba3.bufnum, \ratea3,1, 8.midiratio]);
)
//
(
//R
(
SynthDef.new(\r0,
	{
		arg amp1=1, outa0=0, bufa0, loop=0, da=2, ratea0=1;
		var sig;
		sig = PlayBuf.ar(1, bufa0, ratea0,loop, doneAction: da);
		sig = sig * amp1;
		Out.ar(outa0, sig);
}).add;
);
(
SynthDef.new(\r1,
	{
		arg amp2=1, outa1=1, bufa1, loop=0, da=2, ratea1=1;
		var sig;
		sig = PlayBuf.ar(1, bufa1, ratea1,loop, doneAction: da);
		sig = sig * amp2;
		Out.ar(outa1, sig);
}).add;
);
(
SynthDef.new(\r2,
	{
		arg amp3=1, outa2=2, bufa2, loop=0, da=2, ratea2=1;
		var sig;
		sig = PlayBuf.ar(1, bufa2, ratea2,loop, doneAction: da);
		sig = sig * amp3;
		Out.ar(outa2, sig);
}).add;
);
(
SynthDef.new(\r3,
	{
		arg amp4=1, outa3=1, bufa3, loop=0, da=2, ratea3=1;
		var sig;
		sig = PlayBuf.ar(1, bufa3, ratea3,loop, doneAction: da);
		sig = sig * amp4;
		Out.ar(outa3, sig);
}).add;
);

///Alexandrossos
(
SynthDef.new(\a0,
	{
		arg amp1=1, outa0=0, bufa0, loop=0, da=2, ratea0=1;
		var sig;
		sig = PlayBuf.ar(1, bufa0, ratea0,loop, doneAction: da);
		sig = sig * amp1;
		Out.ar(outa0, sig);
}).add;
);
(
SynthDef.new(\a1,
	{
		arg amp2=3, outa1=0, bufa1, loop=0, da=2, ratea1=1;
		var sig;
		sig = PlayBuf.ar(1, bufa1, ratea1,loop, doneAction: da);
		sig = sig * amp2;
		Out.ar(outa1, sig);
}).add;
);
(
SynthDef.new(\a2,
	{
		arg amp3=1, outa2=1, bufa2, loop=0, da=2, ratea2=1;
		var sig;
		sig = PlayBuf.ar(1, bufa2, ratea2,loop, doneAction: da);
		sig = sig * amp3;
		Out.ar(outa2, sig);
}).add;
);
(
SynthDef.new(\a3,
	{
		arg amp4=3, outa3=1, bufa3, loop=0, da=2, ratea3=1;
		var sig;
		sig = PlayBuf.ar(1, bufa3, ratea3,loop, doneAction: da);
		sig = sig * amp4;
		Out.ar(outa3, sig);
}).add;
);
)
////////////////BUFFERS

//frames
~b.numFrames;

//channels
~b.numChannels;

//duration
~b0.duration;

//buffer number
~b0.bufnum;

// buffer sample rate
~b0.sampleRate;

s.sampleRate;
Buffer.freeAll;

s.plotTree;
(
//R
(
~br0 = Buffer.read(s,);
~br1 = Buffer.read(s,);
~br2 = Buffer.read(s,);
~br3 = Buffer.read(s,);
);
//Alexandrossos
(
~ba0 = Buffer.read(s,);
~ba1 = Buffer.read(s,);
~ba2 = Buffer.read(s,);
~ba3 = Buffer.read(s,);
);
)


////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////