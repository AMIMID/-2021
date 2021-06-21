t = Server(\Local2, NetAddr("127.0.0.1", 57111), o);
t.makeWindow;
t.boot;
t.quit;

ServerOptions


// =====================================================================
// - SuperCollider Basics -
// =====================================================================

// Tutorial 13 - Busses, Nodes, Groups and Signalflow

// =====================================================================
// - ixi audio tutorial - www.ixi-audio.net
// =====================================================================


/*
		---------------------------------------------------------------
 		Copyright (c) 2005-2010, ixi audio.
 		This work is licensed under a Creative Commons
		Attribution-NonCommercial-ShareAlike 2.0 England & Wales License.
 		http://creativecommons.org/licenses/by-nc-sa/2.0/uk/
		---------------------------------------------------------------
*/



// ========== Contents of this tutorial ==========

// 	1) Busses in SC (Audio and Control Busses)
// 	2) Nodes
// 	3) Groups




// 1) ========= Busses in SC (Audio and Control Busses) ==========

/*
What are Busses? They are virtual placeholders of signals.

A good description is to be found in the Server-Architecture helpfile:

Audio Buses
Synths send audio signals to each other via a single global array of audio buses.  Audio buses are indexed by integers beginning with zero. Using buses rather than connecting synths to each other directly allows synths to connect themselves to the community of other synths without having to know anything about them specifically. The lowest numbered buses get written to the audio hardware outputs. Immediately following the output buses are the input buses, read from the audio hardware inputs. The number of bus channels defined as inputs and outputs do not have to match that of the hardware.

Control Buses
Synths can send control signals to each other via a single global array of control buses.  Buses are indexed by integers beginning with zero.

If you look at the source file of ServerOptions, you will see that there are default number of audio and control busses assigned to the server on booting. You can change these values, of course:
	var <>numAudioBusChannels=128;
	var <>numControlBusChannels=4096;
	var <>numInputBusChannels=8;
	var <>numOutputBusChannels=8;
We see that we've got 128 audio busses and 4096 control busses. This should be more than enough in most cases, but if you need more you can:
a) question why you need more! Are you designing your program wrongly?
b) change the number in the ServerOptions file and recompile.

We also see that by default we have 8 output and 8 input busses. Change this to fit your soundcard if you want. This means that in this setting the 8th Audio bus is actually the 1st input channel.

NOTE: Busses are NOT the same as channels. Channels are physical channels as in a mixer or soundcard, but a Bus is like an abstract representation of a channel. Thus a bus can be mono or stereo or even 5 channel, depending on your needs.

*/

// -- Audio Busses (where signals run on audio rate (such as 44100 times per second))

// We send audio out on bus 0

(
SynthDef(\bustest, {arg outbus=0, freq=440;
	Out.ar(outbus, SinOsc.ar(freq, 0, 0.3));
}).add
)

a = Synth(\bustest, [\outbus, 0]) // left speaker
b = Synth(\bustest, [\outbus, 1]) // right speaker
c = Synth(\bustest, [\outbus, 2]) // channel 3?

// now we free a and b
a.free; b.free;

// but c is still running on bus 2 - we just can't hear it (assuming you're in stereo)

// so we create a synthdef that can listen to any bus and output on any bus
(
SynthDef(\bustest2, {arg inbus=10, outbus=0;
	Out.ar(outbus, In.ar(inbus, 1));
}).add
)

// and we listen to bus 2 and output on bus 0. - don't worry about addAction now.
d = Synth(\bustest2, [\inbus, 2, \outbus, 0], addAction:\addToTail);

// If you were wondering about the comment on inbusses and outbusses, you can try
// to listen to the audio in bus (by default on bus 8) (if you have an active mic that is)

d = Synth(\bustest2, [\inbus, 8, \outbus, 0], addAction:\addToTail);




// -- Control Busses (where signals run on control rate (such as 689 times per second))

// A control bus can be mapped to control values in many synths.
// Let's make a control synth that maps the freq value of the synth above

(
SynthDef(\lfo, {arg ctrlbus = 2, freq=4, mul=100;
        Out.kr(ctrlbus, SinOsc.kr(freq, 0, mul: mul, add: 200)); // note the .kr
}).add;
)

// we create our synth
a = Synth(\bustest);

// we make a control bus that will be controlling the freq of our synth
b = Bus.control(s, 1);
b.value = 200;
// then we map the frequency of that bus to the freq parameter of the synth
a.map(\freq, b.index);
// and we can try to put different values into the control bus
b.value = 600;
b.value = 400;

// but the values of the control bus can by dynamic
c = Synth(\lfo, [\ctrlbus, b.index]);
c.set(\freq, 7);
c.set(\freq, 2);
c.set(\mul, 200);

// let's change the lfo to a LFSaw

(
SynthDef(\lfosaw, {arg ctrlbus = 2, freq=4, mul=100;
        Out.kr(ctrlbus, LFSaw.kr(freq, 0, mul: mul, add: 200)); // note the .kr
}).add;
)

c.free;
d = Synth(\lfosaw, [\ctrlbus, b.index]);
d.set(\freq, 7);
d.set(\freq, 2);
d.set(\mul, 200);


// This way you can really plug synths into each other just like on an
// old fashioned modular synth.
// For a different take on modular coding, check the JIT lib.



// 2) ========= Nodes ==========


/*
You have been using Nodes already all the time up until now. Creating a synth like this:
	a = Synth(\bustest);
is creating a node. We can then set the frequency of the node
	a.set(\freq, 880);
or just free it:
	a.free;

Nodes are not busses. They can be seen as a mythic monster with a head and a tail that
live on the busses. This monster can take audio in from one bus and output into another bus.
(Your SynthDef handle's that). The audio runs from the head to the tail. You can put your
synths in front of the monster (where the sound will run through it) or at the tail
(where it will receive the signal that runs through it)

*/

// test

// when you start SC there is a default group that receives all nodes
s.queryAllNodes; // Note the RootNode (ID 0) and the default Group (ID 1)

// by default synths are added to the HEAD of a group (in this instance the default group)

// so in the following program you don't hear anything (but see the 2 synths on the server window)
(
{Out.ar(2, PinkNoise.ar(0.3)!2)}.play;
{In.ar(2, 2)}.play
)

// but now you hear: (because the sound is put on to the head AFTER the listener (In))
(
{In.ar(2, 2)}.play;
{Out.ar(2, PinkNoise.ar(0.3)!2)}.play;
)

// or simply add the In listener to the tail of the default group and we hear:
(
{Out.ar(2, PinkNoise.ar(0.3)!2)}.play;
{In.ar(2, 2)}.play(addAction:\addToTail)
)

// and if we keep these synths running we can see that they have been added to the Group (default)
s.queryAllNodes;
{Out.ar(2, SinOsc.ar(200)!2)}.play; // adding to head by default
s.queryAllNodes;



// Here is a practical example using a reverb and a delay for a snare

(
SynthDef(\reverb12, {arg inbus=0, outbus=0, predelay=0.048, combdecay=5, allpassdecay=1, revVol=0.31;
	var sig, y, z;
	sig = In.ar(inbus, 2);
	z = DelayN.ar(sig, 0.1, predelay); // max 100 ms predelay
	y = Mix.ar(Array.fill(7,{ CombL.ar(z, 0.05, rrand(0.03, 0.05), combdecay) }));
	6.do({ y = AllpassN.ar(y, 0.050, rrand(0.03, 0.05), allpassdecay) });
	Out.ar(outbus, sig + (y * revVol));
}).add;

SynthDef(\delay12, {arg inbus=0, outbus=0, maxdelaytime=6, delaytime=0.3, decaytime=2.31;
	var sig, y, z;
	sig = In.ar(inbus, 2);
	sig = CombN.ar(sig, maxdelaytime, delaytime, decaytime);
	Out.ar(outbus, sig);
}).add;

SynthDef(\snare12, { arg out=0, tempo=2;
	var snare, base, hihat;
	tempo = Impulse.ar(tempo); // for a drunk drummer replace Impulse with Dust !!!

	snare = 	WhiteNoise.ar(Decay2.ar(PulseDivider.ar(tempo, 4, 2), 0.005, 0.5));

	Out.ar(out, snare * 0.4 !2)
}).add;
)

// a snare on outbus 0 - no effects
a = Synth(\snare12, [\outbus, 20]);

// we create a reverb synth on audiobus 20 and delay on audiobus 22 (stereo signal)
b = Synth(\reverb12, [\inbus, 20, \outbus, 0]);
c = Synth(\delay12, [\inbus, 22, \outbus, 0]);

s.queryAllNodes;

a.set(\outbus, 20)
a.moveBefore(b)
s.queryAllNodes;

a.set(\outbus, 22)
a.moveBefore(c)
s.queryAllNodes;


{Out.ar(20, AudioIn.ar(1))}.play(addAction:\addToHead) // we add audio in to the snaredrum

// and we could add a synth AFTER the delay
a = Synth(\snare12, [\outbus, 22, \tempo, 4], addAction:\addToTail)
// or we add it BEFORE the delay
a = Synth(\snare12, [\outbus, 22, \tempo, 4], addAction:\addToHead)





// 3) ========= Groups ==========


/*
Groups can be useful if you are making complex things and you want to group certain
things together. You can think of it like grouping in Photoshop (i.e. making a group
that you can move around without having to move every line).

For a good explanation of Groups, check Mark Polishook's tutorial in the distribution of SC

*/


// Group example (check the Group and Node helpfiles for more)


g = Group.new // we create a new group

// and few synths that respond to the freq argument, but multiply it differently
{arg freq=333, out=0; Out.ar(out, SinOsc.ar(freq,0,0.12))}.play(g)
{arg freq=333, out=0; Out.ar(out, SinOsc.ar(freq*1.2,0,0.12))}.play(g)
{arg freq=333, out=0; Out.ar(out, SinOsc.ar(freq*1.4,0,0.12))}.play(g)

g.set(\freq, 255) // we change the frequency and ALL the synths get a new frequency
g.set(\out, 10) // we move the output to bus 10

s.queryAllNodes;

// here we could try to listen to bus 10, but it's added to the head
{Out.ar(0, In.ar(10,1))}.play(g)
s.queryAllNodes;

// so we explicitly add the synth to the tail
{Out.ar(0, In.ar(10,1))}.play(g, addAction:\addToTail)
s.queryAllNodes;

// we see that we now have 5 synths in a Group (called g)


h = Group.new // we create a new group

{arg freq=333, out=0; Out.ar(out, SinOsc.ar(freq,0,0.12))}.play(h)
{arg freq=333, out=0; Out.ar(out, SinOsc.ar(freq*1.2,0,0.12))}.play(h)
{arg freq=333, out=0; Out.ar(out, SinOsc.ar(freq*1.4,0,0.12))}.play(h)

h.set(\freq, 255) // we change the frequency and ALL the synths get a new frequency
h.set(\freq, 955) // we change the frequency and ALL the synths get a new frequency

s.queryAllNodes;

h.moveAfter(g) // we can move h (not that it matters here, but when making effects, it's useful)

s.queryAllNodes;



////////////////////////////////


SuperCollider 3 Server Tutorial

To follow this tutorial you should read

	Server-Architecture
and
	Server-Command-Reference

This tutorial also assumes that you are familiar with SuperCollider version 2 since the creating a SynthDef in SC3 is very similar to creating a Synth in SC2.

There are two parts to SuperCollider. One part is the language application and another is  a synthesis server that can run either inside the language application, or as a separate program on the same machine, or run on a different computer across a network connection. The language application sends command messages to the server using a subset of the Open Sound Control protocol.

Booting a Server

In order to run sound we need to start a server running. The easiest way to start a server is to click on one of the "Start Server" buttons in the server windows. Sometimes though it is useful to start a server programmatically. To do this we need to get or create a server object and tell it to "boot". Two servers, internal and local, are predefined.

The internal server runs in the same process as the SuperCollider application.  It is internal to the program itself.

// set the interpreter variable s to the internal server object.
s = Server.internal;

VERY IMPORTANT: This line must be executed for the variable 's' to be set. The mechanics are different depending on your platform. The MacOSX standard is to place the cursor anywhere on this line and press the "Enter" key on the numeric keypad. Pressing the main return key does not execute code! This allows you to write code fragments of multiple lines. To execute a multi-line block of code, select the block and press "Enter." For convenience, a code block can be enclosed in parentheses, and the entire block selected by double-clicking just inside either parenthesis. (For linux or Windows instructions, consult the documentation specific to that platform.)

The local server runs on the same machine as the SuperCollider application, but is a separate program, 'scsynth'. Note: By default the interpreter variable s is set to the local server at startup. For further information see the Server helpfile.

// set the interpreter variable s to the local server object.
s = Server.local;

To boot the server you send it the boot message.

s.boot;

To quit the server send it the quit message.

s.quit;

We can also create a server to run. To create a server object we need to provide the IP address or the server and a port number. Port numbers are somewhat arbitrary but they should not conflict with common protocols like telnet, ftp http, etc. The IP address 127.0.0.1 is defined to mean the local host. This is the IP address to use for running a server on your own machine.

// create a server object that will run on the local host using port #58009
s = Server(\myServer, NetAddr("127.0.0.1", 58009));

s.boot; //start the server

s.quit; // quit the server

It is not possible to boot a server on a remote machine, but if you have one running already or you know of one running, you can send messages to it. You create the server object using the IP address of the machine running the server and the port it is using.

// create a server object for talking to the server running on a machine having
// IP address 192.168.0.47 using port #57110
s = Server(\myServer, NetAddr("192.168.0.47", 57110));

Making Sound

(note: This tutorial uses raw OSC commands as described in Server-Command-Reference, rather than the classes Synth and Group.  See those helpfiles also for some simpler ways of working with Synths.  This tutorial explains the basic underlying design of Synths and SynthDefs).

Now lets make some audio.

s = Server.local; // assign it to interpreter variable 's'

Boot it.

s.boot;

Create a SynthDef. A SynthDef is a description of a processing module that you want to run on the server. It can read audio from the server's audio buses, read control from the control buses and write control or audio back to buses. Here we will create a sine oscillator and send it to audio bus zero.

(
SynthDef("sine", { arg freq=800;
	var osc;
	osc = SinOsc.ar(freq, 0, 0.1); // 800 Hz sine oscillator
	Out.ar(0, osc); // send output to audio bus zero.
}).writeDefFile; // write the def to disk in the default directory synthdefs/
)

Send the SynthDef to the server.

s.sendSynthDef("sine");

Start the sound. The /s_new command creates a new Synth which is an instance of the "sine" SynthDef. Each synth running on the server needs to have a unique ID. The simplest and safest way to do this is to get an ID from the server's NodeIDAllocator. This will automatically allow IDs to be reused, and will prevent conflicts both with your own nodes, and with nodes created automatically for purposes such as visual scoping and recording. Each synth needs to be installed in a Group. We install it in group one which is the default group. There is a group zero, called the RootNode, which contains the default group, but it is generally best not to use it as doing so can result in order of execution issues with automatically created nodes such as those mentioned above. (For more detail see the default_group, RootNode, and Order-of-execution helpfiles.)

s.sendMsg("/s_new", "sine", x = s.nextNodeID, 1, 1);

Stop the sound.

s.sendMsg("/n_free", x);

Stop the server.

s.quit;

SynthDef has two methods which send the def automatically, load which writes it to disk, and send which sends it without writing it to disk. The latter can be useful to avoid clutter on your drive.

(
SynthDef("sine", { arg freq=800;
	var osc;
	osc = SinOsc.ar(freq, 0, 0.1); // 800 Hz sine oscillator
	Out.ar(0, osc); // send output to audio bus zero.
}).load(s); // write to disk and send
)

(
SynthDef("sine", { arg freq=800;
	var osc;
	osc = SinOsc.ar(freq, 0, 0.1); // 800 Hz sine oscillator
	Out.ar(0, osc); // send output to audio bus zero.
}).send(s); // send without writing
)

Using Arguments

It is useful to be able to specify parameters of a synth when it is created. Here a frequency argument is added to the sine SynthDef so that we can create it

s = Server.local; // assign it to interpreter variable 's'

s.boot;

(
SynthDef("sine", { arg freq;
	var osc;
	osc = SinOsc.ar(freq, 0, 0.1); // 800 Hz sine oscillator
	Out.ar(0, osc); // send output to audio bus zero.
}).send(s);
)



Play a 900 Hz sine wave.

s.sendMsg("/s_new", "sine", x = s.nextNodeID, 1, 1, "freq", 900);

s.sendMsg("/n_free", x);


Play a 1000 Hz sine wave.

s.sendMsg("/s_new", "sine", y = s.nextNodeID, 1, 1, "freq", 1000);

s.sendMsg("/n_free", y);


Playing three voices at once

(
s.sendMsg("/s_new", "sine", x = s.nextNodeID, 1, 1, "freq", 800);
s.sendMsg("/s_new", "sine", y = s.nextNodeID, 1, 1, "freq", 1001);
s.sendMsg("/s_new", "sine", z = s.nextNodeID, 1, 1, "freq", 1202);
)

(
s.sendMsg("/n_free", x);
s.sendMsg("/n_free", y);
s.sendMsg("/n_free", z);
)

Playing three voices at once using bundles. Bundles allow you to send multiple messages with a time stamp. The messages in the bundle will be scheduled to be performed together. The time argument to sendBundle is an offset into the future from the current thread's logical time.

(
s.sendBundle(0.2,
	["/s_new", "sine", x = s.nextNodeID, 1, 1, "freq", 800],
	["/s_new", "sine", y = s.nextNodeID, 1, 1, "freq", 1001],
	["/s_new", "sine", z = s.nextNodeID, 1, 1, "freq", 1202]);
s.sendBundle(1.2, ["/n_free", x],["/n_free", y],["/n_free", z]);
)

Controlling a Synth

You can send messages to update the values of a Synth's arguments.

Play a 900 Hz sine wave.

s.sendMsg("/s_new", "sine", x = s.nextNodeID, 1, 1, "freq", 900);

Change the frequency using the /n_set command. You send the node ID, the parameter name and the value.

s.sendMsg("/n_set", x, "freq", 800);

s.sendMsg("/n_set", x, "freq", 700);

s.sendMsg("/n_free", x);

Adding an Effect Dynamically

You can dynamically add and remove an effect to process another synth. In order to do this, the effect has to be added after the node to be processed.

(
// define a noise pulse
SynthDef("tish", { arg freq = 1200, rate = 2;
	var osc, trg;
	trg = Decay2.ar(Impulse.ar(rate,0,0.3), 0.01, 0.3);
	osc = {WhiteNoise.ar(trg)}.dup;
	Out.ar(0, osc); // send output to audio bus zero.
}).send(s);
)

(
// define an echo effect
SynthDef("echo", { arg delay = 0.2, decay = 4;
	var in;
	in = In.ar(0,2);
	// use ReplaceOut to overwrite the previous contents of the bus.
	ReplaceOut.ar(0, CombN.ar(in, 0.5, delay, decay, 1, in));
}).send(s);
)

// start the pulse
s.sendMsg("/s_new", "tish", x = s.nextNodeID, 1, 1, \freq, 200, \rate, 1.2);

// add an effect
s.sendMsg("/s_new", "echo", y = s.nextNodeID, 1, 1);

// stop the effect
s.sendMsg("/n_free", y);

// add an effect (time has come today.. hey!)
s.sendMsg("/s_new", "echo", z = s.nextNodeID, 1, 1, \delay, 0.1, \decay, 4);

// stop the effect
s.sendMsg("/n_free", z);

// stop the pulse
s.sendMsg("/n_free", x);

This works because we added the effect after the other node. Sometimes you will need to use groups or /n_after to insure that an effect gets added after what it is supposed to process.


Chaining Effects

Using Control Buses

Mapping an Argument to a Control Bus

(
// define a control
SynthDef("line", { arg i_bus=10, i_start=1000, i_end=500, i_time=1;
	ReplaceOut.kr(i_bus, Line.kr(i_start, i_end, i_time, doneAction: 2));
}).send(s)
)

Play a 900 Hz sine wave.

s.sendMsg("/s_new", "sine", x = s.nextNodeID, 1, 1, "freq", 900);

Put a frequency value on the control bus.

s.sendMsg("/c_set", 10, x);

Map the node's freq argument to read from control bus #10.

s.sendMsg("/n_map", x, \freq, 10);

Change the value on the control bus.

s.sendMsg("/c_set", 10, 1200);

Start a control process that writes to bus #10.
The EnvGen doneAction will free this node automatically when it finishes.

s.sendMsg("/s_new", "line", s.nextNodeID, 0, 1);

Free the node.

s.sendMsg("/n_free", x);


Gating Envelopes

Adding a GUI

Using Buffers

Filling Wavetables

Frequency Domain Processing

Sequencing with Routines

(
var space,offset,timer, saw, envsaw, sampler, delay;

SynthDef("saw",{ arg out=100, pan=0, trig=0.0, freq=500, amp=1, cutoff=10000, rezz=1;
	freq = Lag.kr(freq,0.1);
	Out.ar(out,Pan2.ar(RLPF.ar(Saw.ar([freq,freq*2],amp),cutoff,rezz),
		pan));
	}).load(s);

SynthDef("envsaw",{ arg out=100, pan=0, dur=0.5, freq=500, amp=1, cutoff=10000, rezz=1;
	var env;
	env = EnvGen.kr(Env.perc(0.01, dur, 0.2), doneAction:0, gate:amp);
	Out.ar(out,Pan2.ar(RLPF.ar(Saw.ar(Lag.kr(freq,0.1),env),cutoff,rezz)*amp,
		pan));
	}).load(s);

SynthDef("delay", { arg out=0, delay = 0.4, decay = 14;
	var in;
	in = In.ar(out,2);
	Out.ar(out, CombN.ar(in, 0.5, delay, decay, 1, in));
}).load(s);

SynthDef("sampler",{ arg sample, trig=1,rate=1.0,out=0,bufnum=0,pan=0,amp=1, dur=0.25;
	var env;
	env = EnvGen.kr(Env.perc(0.001, dur, 0.001), doneAction:2);
	Out.ar(out,
		Pan2.ar(
		PlayBuf.ar(1,bufnum,rate,InTrig.kr(trig),0,0)*amp,
			pan);
	)
}).load(s);

Tempo.bpm = 120;
timer=BeatSched.new;
offset = Tempo.tempo.reciprocal;

space = Buffer.read(s,"sounds/a11wlk01.wav");

saw=Synth("saw");
delay=Synth.after(saw,"delay", [\decay, 20]);

timer.sched(0,{
	var r;
	r=Routine({ var wait, freq, cutoff,rezz;
	wait = Pseq([2],inf).asStream;
	freq = Pseq([30,40,42,40],inf).asStream;
	cutoff = Pfunc({500.rand2+1000}).asStream;
	rezz = 0.5;
	inf.do({saw.set("freq", freq.next.midicps, "cutoff", cutoff.next, "rezz", rezz, "amp", 0.1, "out", 0);
    (wait.next*offset).wait});});
    timer.sched(0,r);
});

timer.sched(0,{
	var r;
	r=Routine({ var wait, rate;
	wait = Pseq([0.25],inf).asStream;
	rate = Pfunc({0.5.rand}).asStream;
	inf.do({Synth.before(delay, "sampler", [\bufnum, space.bufnum, \trig, 1, \amp,0.1, \rate, rate.next, \dur, wait.next]);
    (wait.next*offset).wait});});
    timer.sched(0,r);
});

)


Sequencing with Patterns
(
//sappy emo electronica example...
Tempo.bpm = 120;
SynthDef("patternefx_Ex", { arg out, in;
	var audio, efx;
	audio = In.ar([20,21],2);
	efx=CombN.ar(audio, 0.5, [0.24,0.4], 2, 1);
	Out.ar([0,1], audio+efx);
	}).load(s);

Synth.new("patternefx_Ex");

SynthDef("pattern_Ex", { arg out, freq = 1000, gate = 1, pan = 0, cut = 4000, rez = 0.8, amp = 1;
	Out.ar(out,
		Pan2.ar(
			RLPF.ar(
				Pulse.ar(freq,0.05),
			cut, rez),
		pan) * EnvGen.kr(Env.linen(0.01, 1, 0.3), gate, amp, doneAction:2);
	)
	}).load(s);

SynthDef("bass_Ex", { arg out, freq = 1000, gate = 1, pan = 0, cut = 4000, rez = 0.8, amp = 1;
	Out.ar(out,
		Pan2.ar(
			RLPF.ar(
				SinOsc.ar(freq,0.05),
			cut, rez),
		pan) * EnvGen.kr(Env.linen(0.01, 1, 0.3), gate, amp, doneAction:2);
	)
	}).load(s);

SynthDescLib.global.read;


Pseq([

Ptpar([
0,Pbind(\instrument,\pattern_Ex, \out, 20, \dur,Pseq([2],16), \root,[-24,-17], \degree,Pseq([0,3,5,7,9,11,5,1],2), 	\pan,1,\cut,Pxrand([1000,500,2000,300],16), \rez,Pfunc({0.7.rand +0.3}), \amp,0.12),

0.5,Pbind(\instrument,\pattern_Ex, \out, 20, \dur,Pseq([Pseq([2],15),1.5],1),  \root,-12, \degree,Pseq([0,3,5,7,9,11,5,1],2), \pan,-1,\cut,2000, \rez,0.6, \amp,0.1);
]),

Ptpar([
0,Pbind(\instrument,\pattern_Ex, \out, 20, \dur,2, \root,[-24,-17], \degree,Pseq([0,3,5,7,9,11,5,1],inf), 	\pan,1,\cut,Pxrand([1000,500,2000,300],inf), \rez,Pfunc({0.7.rand +0.3}), \amp,0.12),

0,Pbind(\instrument,\bass_Ex, \dur,1, \root,-24, \degree,Pseq([0],inf), \pan,0, \cut,128, \rez,0.1, \amp,0.3),

0.5,Pbind(\instrument,\pattern_Ex, \out, 20, \dur,2, \root,-12, \degree,Pseq([0,3,5,7,9,11,5,1],inf), \pan,-1,\cut,2000, \rez,0.6, \amp,0.1);
]);


]).play;

)
