/////////////////////////////window//////////////////////////////
(

i = Window.new("gui2", Rect.new(750,50,300,220));
i.front;
i.alwaysOnTop_(true);

~slider1 = Slider.new(i.view,Rect(20,20,200,30))
.background_(Color.rand)
.action_({
	arg obj;
	var cf;
	cf = obj.value.linexp(0,1,40,1000).postln;
	if(
		y.isPlaying,
		{y.set(\frequ, cf)}
	);

	~numberBox1.value_(obj.value.linexp(0,1,40,1000));
});

~slider2 = Slider.new(i.view,Rect(20,80,200,30))
.background_(Color.rand)
.action_({
	arg obj;
	var cf;
	cf = obj.value.linexp(0,1,1,100).postln;
	if(
		y.isPlaying,
		{y.set(\nharm, cf)}
	);

	~numberBox2.value_(obj.value.linexp(0,1,1,100));
});
~numberBox1 = NumberBox(i, Rect(220,20,50,30))
.value_(40)
.clipLo_(10)
.clipHi_(1000)
.decimals_(2)
.action_({
	arg obj;
	~slider1.valueAction_(obj.value.explin(40,1000,0,1))
});

~numberBox2 = NumberBox(i, Rect(220,80,50,30))
.value_(1)
.clipLo_(1)
.clipHi_(100)
.decimals_(2)
.action_({
	arg obj;
	~slider2.valueAction_(obj.value.explin(1,100,0,1))
});

~frequLabel = StaticText(i,Rect(210,50,80,20))
.string_("freq")
.align_(\center);

~nharmLabel = StaticText(i,Rect(210,110,80,20))
.string_("nharm")
.align_(\center);

~detuneLabel = StaticText(i,Rect(40,180,80,20))
.string_("detune")
.align_(\center);

~ampLabel = StaticText(i,Rect(130,180,80,20))
.string_("amp")
.align_(\center);

~knob1 = Knob(i,Rect(20,140,50,50))
.action_({
	arg obj;
	var qual;
	qual = obj.value.linexp(0,1,0.1,8);
	if(
		y.isPlaying,
		{y.set(\detune,qual)}
	);
});


~knob2 = Knob(i,Rect(120,140,50,50))
.action_({
	arg obj;
	var quala;
	quala = obj.value.linexp(0,1,1,6);
	if(
		y.isPlaying,
		{y.set(\amp,quala)}
	);
});

~button1 = Button(i,Rect(220,150,50,50))
.states_([
	["OFF",Color.rand,Color.rand],
	["ON",Color.rand,Color.rand]])
.action_({
	arg obj;
	if(
		obj.value == 1,
		{
			y = Synth.new(
				\tone,
				[
					\gate,1,
					\frequ, ~slider1.value.linexp(0,1,40,1000),
					\detune, ~knob1.value.linexp(0,1,0.1,8),
					\nharm, ~slider2.value.linexp(0,1,1,100),
					\amp, ~knob2.value.linexp(0,1,1,6)
				]
			).register;
		},
		{y.set(\gate,0)}
	);
})
)
////////////////////////////////tone/////////////////////////////////////

(
SynthDef.new(\tone,
	{
		arg frequ=10, nharm=1, detune=0, gate=0,
		pan=0, amp=1, out=0;
		var sig, env;
		env = EnvGen.kr(Env.adsr(0.05,0.1,0.5,3),gate);
		sig = Blip.ar(
			frequ *
			LFNoise1.kr(0.2!16).bipolar(detune.neg,detune).midiratio,nharm
		);
		sig = sig * LFNoise1.kr(0.5!16).exprange(0.1,1);
		sig = Splay.ar(sig);
		sig = Balance2.ar(sig[0],sig[1],pan);
		sig = sig * env * amp;


		Out.ar(out,sig);
}).add
)

(
y = Synth.new(\tone, [\gate,1,
\freq,~slider.value.linexp(0,1,10,1000),
\nharm,~slider2.value.linexp(0,1,1,100),
\detune,~knob.value.linexp(0,1,0,5).reciprocal,
\amp,~knob2.value.linexp(0,1,1,5).reciprocal
]);
)
y=Synth.new(\tone,[\gate,1]);
y.set(\freq,60)
y.set(\pan,0)
y.set(\nharm,16)
y.set(\detune,1)
y.set(\amp,1)

y.free;

		s.scope;
levelindicator