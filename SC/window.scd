s.boot;
//////map 0-1 slider value range to  another///
(
Window.closeAll;
w = Window.new("gui", Rect.new(750,50,500,100));
w.front;
w.alwaysOnTop_(true);

~slider = Slider.new(w.view,Rect(20,20,200,30))
.background_(Color.rand)
.action_({
	arg obj;
	var cf;
	cf = obj.value.linexp(0,1,100,4000).postln;
	if(
		x.isPlaying,
		{x.set(\freq, cf)}
	);
	~numberBox.value_(obj.value.linexp(0,1,100,4000));
});
~numberBox = NumberBox(w, Rect(220,20,50,30))
.value_(100)
.clipLo_(100)
.clipHi_(4000)
.decimals_(2)
.action_({
	arg obj;
	~slider.valueAction_(obj.value.explin(100,4000,0,1))
});

~freqLabel = StaticText(w,Rect(210,50,80,20))
.string_("freq")
.align_(\center);


~freqLabel = StaticText(w,Rect(330,50,80,20))
.string_("rq")
.align_(\center);

~knob = Knob(w,Rect(310,20,50,50))
.action_({
	arg obj;
	var qual;
	qual = obj.value.linexp(0,1,1,100).reciprocal;
	if(
		x.isPlaying,
		{x.set(\rq,qual)}
	);
});

~button = Button(w,Rect(430,20,50,50))
.states_([
	["OFF",Color.rand,Color.rand],
	["ON",Color.rand,Color.rand]])
.action_({
	arg obj;
	if(
		obj.value == 1,
		{
			x = Synth.new(
				\audio,
				[
					\freq, ~slider.value.linexp(0,1,100,4000),
					\rq, ~knob.value.linexp(0,1,1,100).reciprocal
				]
			).register;
		},
		{x.free}
	);
})
)


////////////// //////////////////////////
~slider.parent;
~slider.visible_(true);
~slider.bounds_(Rect.new(40,40,200,30));
~slider.enabled_(true);
~slider.remove;

	w.view.children;

w.bounds_(Rect.new(1000,200,400,400));
//////////////////////////////////////////

///slider value////

~slider.value_(0.8);
///performs a value///
~slider.value;
///gives only value////
~slider.valueAction_(0.3);
///gives and performs a given value///

(
~slider.action_({
	arg slider;
	slider.value.postln;
});
)

////////colors/////
w.view.background_(Color.rand);
~slider.background_(Color.rand);

~slider.knobColor_(Color.black);
~slider.thumbSize_(50);
~button.background_(Color.rand);

///////////audio///////
(
SynthDef.new(\audio,
	{
		arg freq = 100, rq=0.2;
		var sig;
		sig = PinkNoise.ar(1!2);
		sig = BPF.ar(sig,
			freq.lag(0.5),
			rq.lag(0.5),
			1/rq.sqrt.lag(0.5)
		);
		Out.ar(1,sig);
}).add;
)
///map value to synth//
(
x = Synth.new(\audio,
[\freq, ~slider.value.linexp(0,1,100,4000)]
);
)
x.free;
s.boot

///////////////////decorator////////////////////////////////////


(
Window.closeAll;
w = Window("flow", Rect(850,50,400,400))
.front
.alwaysOnTop_(true);

w.view.decorator_(FlowLayout(w.bounds,
	Point(15,15),Point(7,7)));
)
//////// adi gia point 15@15///////////
20.do{Knob(w,40@40)};
w.view.decorator.nextLine;

w.view.children.collect(_.value_(rrand(0.0,1.0)));
w.view.children.collect(_.remove);
w.view.decorator.reset;

w.close;

s.boot;
































