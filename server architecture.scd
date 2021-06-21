s.plotTree
(
SynthDef.new(\blip,
	{
		arg out;
		var freq, trig ,sig;
		freq = LFNoise0.kr(3).exprange(300,1200).round(300);
		sig = SinOsc.ar(freq) * 0.25;
		trig = Dust.kr(2);
		sig = sig * EnvGen.kr(Env.perc(0.01,0.2), trig);
		Out.ar(out, sig);
}).add;


Synth.new(\reverb, {
	arg in, out = 0;
	var sig;
	sig = In.ar(in,1);
	sig = FreeVerb.ar(sig, 0.5, 0.8, 0.2)!2;
	Out.ar(out, sig);
}).add;
	)
s.options.device_("MME : USB Multi-Channel Audio Device");
s.options.dump;

s.options.numAudioBusChannels;
s.options.numOutputBusChannels = 18;
s.options.numInputBusChannels =2 ;

s.reboot;
s.meter;
ServerOptions.devices;
(
s=Server.default;
s.options.device = "MME : USB Multi-Channel Audio Device";
s.reboot
)
Server.local.options.device ="ASIO4ALL"
x = ServerOptions.outDevices;
// Get the local server's options

x = ServerOptions.outDevices

// Post the number of output channels

o.numOutputBusChannels.postln;

// Set them to a new number

o.numOutputBusChannels = 6; // The next time it boots, this will take effect

// specify a device

o.device ="MOTU Traveler";     // use a specific soundcard
o.device = nil;            // use the system default soundcard

// Create a new instance of ServerOptions

o = ServerOptions.new;

// Set the memory size to twice the default

o.memSize = 4096;

// Create a new Server on the local machine using o for its options

t = Server(\Local2, NetAddr("127.0.0.1", 57111), o);
t.makeWindow;
t.boot;
t.quit;

y = Synth.new(\reverb, [\lin,6//~reverbBus]);
x = Synth.new(\blip, [\out, 6]);

/////////////////

~reverbBus = Bus.audio(s,1);
~reverbBus.index

	////////////////////////////////bus in multi channel////////////


	(
SynthDef.new(\blip,
	{
		arg out;
		var freq, trig ,sig;
		freq = LFNoise0.kr(3).exprange(300,1200).round(300);
		sig = SinOsc.ar(freq) * 0.25;
		trig = Dust.kr(2);
		sig = sig * EnvGen.kr(Env.perc(0.01,0.2), trig);
				sig = Pan2.ar(sig, LFNoise1.kr(10));
		Out.ar(out, sig);
}).add;


Synth.new(\reverb, {
	arg in, out = 0;
	var sig;
	sig = In.ar(in,2);
	sig = FreeVerb.ar(sig, 0.5, 0.8, 0.2);
	Out.ar(out, sig);
}).add;
	)

s.options.numAudioBusChannels;
s.options.numOutputBusChannels = 4;
s.options.numInputBusChannels =2 ;

s.reboot;
s.meter;

y = Synth.new(\reverb, [\lin,~reverbBus2]);
x = Synth.new(\blip, [\out, ~reverbBus2]);

/////////////////

~reverbBus2 = Bus.audio(s,2);
~reverbBus2.index
	