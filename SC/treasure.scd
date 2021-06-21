(
SynthDef.new(\playbuf,
	{
		arg buf;
		var sig, siigg, audio;
		sig = PlayBuf.ar(1,buf);
		siigg = SinOsc.ar(sig,add:2);
		audio = sig * siigg;
		Out.ar(1,audio);
}).add;
)

a = Synth.new(\playbuf,[\buf,~b0.bufnum]);



(
{
	var fund = 240;
	Mix.ar(
		[SinOsc.ar(240,mul: max(0,LFNoise1.kr(12))),
			SinOsc.ar(240*2,mul: max(0,LFNoise1.kr(12)))*1/2,
			SinOsc.ar(240*3,mul: max(0,LFNoise1.kr(12)))*1/3,
			SinOsc.ar(240*4,mul: max(0,LFNoise1.kr(12)))*1/4,
			SinOsc.ar(240*5,mul: max(0,LFNoise1.kr(12)))*1/5,
			SinOsc.ar(240*6,mul: max(0,LFNoise1.kr(12)))*1/6
		]
	)*1!2
}.play;
)
////////////////////////////////////////////theremin/////////////////////////////////////////////////

{SinOsc.ar(SinOsc.ar(8,0,10,MouseX.kr(MouseY.kr(20,440),1760,1)))}.play

play({
	#w, x, y, z = PanB.ar(SinOsc.ar(SinOsc.ar(8,0,MouseY.kr(100,0.1),MouseX.kr(MouseY.kr(20,440),1760,1))), LFSaw.kr(0.1), FSinOsc.kr(0.1), 1);

    DecodeB2.ar(2, w, x, y, 1.2);

});

/////////////////////////////////////////////simple synth ////////////////////////////////////////

(
SynthDef(\simpleSynth,{|freq,amp|
	var signal, harmonics;
	harmonics = 16;
	signal = Mix.fill(harmonics,{|i|
		SinOsc.ar(freq*(i+1), 1.0.rand, amp * harmonics.reciprocal/(i+1))
	});
	Out.ar(0,signal ! 2);
}, [0.15,0.15]).add;
)
//////horizontal window
Synth(\simpleSynth,[\freq,440,\amp,1])

(
var synth, win;
synth = Synth(\simpleSynth, [\freq,100, \amp, 0]);
win = Window("simpleSynth", Rect(100,100,230,90), false);
StaticText(win, Rect(10,10,160,20)).font_(Font("Helvetica",9)).string_("freq");
Slider(win, Rect(40,10,160,24))
.action_({|sl| synth.set(\freq,[100,2000,\exp].asSpec.map(sl.value))});
StaticText(win, Rect(10,46,160,20)).font_(Font("Helvetica",9)).string_("amp");
Slider(win, Rect(40,46,160,24))
.action_({|sl| synth.set(\amp, [0,1.0,\amp].asSpec.map(sl.value))});
win.onClose_({synth.free}).front;
)

//////vertikal window

(
var synth,win;
synth = Synth(\simpleSynth, [\freq,100, \amp,0]);
win = Window("", Rect(100,100,94,200), false);
StaticText(win ,Rect(20,170,160,20)).font_(Font("Helvetica",9)).string_("freq");
Slider(win, Rect(10,10,30,160))
.action_({|sl| synth.set(\freq, [100,2000, \exp].asSpec.map(sl.value))});
StaticText(win, Rect(60,170,160,20)).font_(Font("Helvetica",0)).string_("amp");
Slider(win, Rect(50,10,30,160))
.action_({|sl| synth.set(\amp, [1,1.0,\amp].asSpec.map(sl.value))});
win.onClose_({synth.free}).front;
)


////////////////////////////
(
var nNodes, envView, startStop, myWait, timeSlider, mouseTracker;
var xLoc, yLoc, mousedown = false;
var randLoc = 0.12.rand;

SynthDef(\irritia, { arg out=0, gate=1, freq=440, pan=0.0;
	Out.ar(out, Pan2.ar(LFSaw.ar(freq,0.4,0.05) * EnvGen.kr(Env.sine, gate,doneAction:2), pan))
}).add;

nNodes = 10;
myWait = 0.033;

w = Window("irritia", Rect(200,450,400,400)).front;

envView = EnvelopeView(w, Rect(20,20,355,300))
.thumbHeight_(6.0)
.thumbWidth_(6.0)
.fillColor_(Color.grey)
.background_(Color.white)
.drawLines_(true)
.selectionColor_(Color.red)
.drawRects_(true)
.resize_(5)
.value_([{1.0.rand}!nNodes, {1.0.rand}!nNodes]);


nNodes.do({arg i; envView.connect(i, {|j|j}!nNodes); });

UserView(w, Rect(20,20,355,300))
.mouseDownAction_({|view,x,y| mousedown = true; xLoc = x/355;
	yLoc = (-1+(y/300)).abs; })
.mouseMoveAction_({|view,x,y| xLoc = x/355;
	yLoc = (-1+(y/300)).abs; })
.mouseUpAction_({mousedown = false});

r = Routine({
	inf.do({ |i|
		envView.select(envView.size.rand);
		if(mousedown.not, {
			0.05.coin.if({
			0.5.coin.if({
				myWait = rrand(0.028, 0.042);
				xLoc = 1.0.rand;
				yLoc = 1.0.rand;
			});
			randLoc = 0.12.rand2;
			});
			xLoc = envView.x+rand2(randLoc);
			yLoc = envView.y+rand2(randLoc);
			},{
				xLoc = (xLoc + envView.x+rand2(0.1.rand))/2;
				yLoc = (yLoc + envView.y+rand2(0.1.rand))/2;
		});
		envView.x_(xLoc);
		envView.y_(yLoc);
		Synth(\irritia, [\freq, (yLoc*200)+50, \pan, (xLoc*2)-1]);
		myWait.wait;
	});
}).play(AppClock);

w.onClose_({ r.stop });
)
////////////////////////////////////////codebook

(
var nNodes, envView, startStop, myWait, timeSlider, mouseTracker;
var xLoc, yLoc, mousedown = false;
var randLoc = 0.12.rand;

SynthDef(\irritia, { arg out=0, gate=1, freq=440, pan=0.0;
	Out.ar(out, Pan2.ar(LFSaw.ar(freq,0.4,0.05) * EnvGen.kr(Env.sine, gate, doneAction:2), pan))
}).add;

nNodes = 10;
myWait = 0.033;

w = Window("irritia", Rect(200 , 450, 400, 400)).front;

envView = EnvelopeView(w, Rect(20, 20, 355, 300))
			.thumbHeight_(6.0)
			.thumbWidth_(6.0)
			.fillColor_(Color.grey)
			.background_(Color.white)
			.drawLines_(true)
			.selectionColor_(Color.red)
			.drawRects_(true)
			.resize_(5) // can be resized and stretched
			.value_([{1.0.rand}!nNodes, {1.0.rand}!nNodes]);

// connect all the nodes in the envelope view to each other
nNodes.do({arg i; envView.connect(i, {|j|j}!nNodes); });

// create a little interaction where mouseactions affect the activity
UserView(w, Rect(20, 20, 355, 300))
	.mouseDownAction_({|view, x, y| mousedown = true; xLoc = x/355; yLoc = (-1+(y/300)).abs; })
	.mouseMoveAction_({|view, x, y| xLoc = x/355; yLoc = (-1+(y/300)).abs; })
	.mouseUpAction_({mousedown = false});

r = Routine({
	inf.do({ |i|
		envView.select(envView.size.rand);
		if(mousedown.not, {
			0.05.coin.if({
				0.5.coin.if({
					myWait = rrand(0.028, 0.042);
					xLoc = 1.0.rand;
					yLoc = 1.0.rand;
				});
				randLoc = 0.12.rand2;
			});
			xLoc = envView.x+rand2(randLoc);
			yLoc = envView.y+rand2(randLoc);
		}, {
			xLoc = (xLoc + envView.x+rand2(0.1.rand))/2;
			yLoc = (yLoc + envView.y+rand2(0.1.rand))/2;
		});
		envView.x_(xLoc);
		envView.y_(yLoc);
		Synth(\irritia, [\freq, (yLoc*200)+50, \pan, (xLoc*2)-1]);
		myWait.wait;
	});
}).play(AppClock);

w.onClose_({ r.stop });

)


//////////////////////////////////////////
( // first define the synth

SynthDef.new("SimpleBlip", {
arg midi = 60, tone = 10, art = 0.125, amp = 0.2, pan = -1;
var out, temper;
out =	Pan2.ar(
			Blip.ar( // play the sequence
				midi.midicps,
				tone
		) * EnvGen.kr(Env.triangle(MouseX.kr(0.01,1), art)),
		pan // pan left, center, or right
	);
DetectSilence.ar(out, doneAction:2);
amp = amp - ((midi - 60) * 1);
Out.ar(0, out*amp)
	}).add;
)

/////////////

(
// Then run this Task
~inst = [0, 0, 0]; // Three containers for tasks
~pSeq = [0, 0, 0]; // Three containers for sequences
~scaleAdd = [4, 5, 11, nil, 10, 3, 6, nil]; //
~notes =
[" C", " C#", " D", " Eb", " E", " F",
	" F#", " G", " Ab", " A", " Bb", " B"];
~rout = Task({
	inf.do({
		arg cnt1;
		var steps, durSeq, harmSeq;
		steps = rrand(6, 12);
		if(cnt1%6 == 0, // every sixth iteration, add a degree
			{~scale = ~scale.add(~scaleAdd.wrapAt((cnt1/6).round(1) - 1));});
		"\nIteration: ".post; cnt1.post;
		[" (center) ", " (right) ", " (left) "].wrapAt(cnt1).postln;
		if(cnt1%24 == 0, // reset all three
			{~scale = [0, 2, 7, 9];
			3.do({arg cnt2;
				~pSeq.wrapPut(cnt2,
					Array.fill(steps,
						{~scale.choose + [48, 60].choose}))})});
		"scale: ".post; ~scale.postln;
		~pSeq.wrapPut(cnt1, // fill array with scale steps
			Array.fill(steps, {~scale.choose + [48, 60].choose}));
		"MIDI seq: ".post; (~pSeq.wrapAt(cnt1)%12).postln;
		"Sequence (notes): ".post;
		~pSeq.wrapAt(cnt1).do( // print the sequence using note names
			{arg thisItem; ~notes.at(thisItem%12).post});
		"".postln;
		// create harmonic and duration arrays
		harmSeq = Array.fill(steps, {rrand(1.0, 5.0)});
		durSeq = Array.fill(steps - 1, {rrand(0.01, 0.9)});
		// stop the previous task at this array position
		~inst.wrapAt(cnt1).stop;
		~inst.wrapPut(cnt1,
			Task({
				inf.do({arg cnt3; // each sequence
					Synth("SimpleBlip",
						[\midi, ~pSeq.wrapAt(cnt1).wrapAt(cnt3),
						\tone, harmSeq.wrapAt(cnt3),
						\art, durSeq.wrapAt(cnt3),
						\amp, rrand(0.1, 0.3),
						\pan, cnt1.wrap(-1, 2)]);
					0.125.wait; // tempo of each note
				})}).start;
		);
		12.wait;})
}).start; // time between each new sequence
)

~rout.stop; // stop new sequences

~inst.at(0).free; // at any time, stop center sequence

~inst.at(1).free; // stop right sequence

~inst.at(2).free; // stop center sequence

/////////////

Server.internal.prepareForRecord; // or Server.local

Server.internal.record;

Server.internal.stopRecording;
////////////////