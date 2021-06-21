(
Window.closeAll;
////////////////////////////////////////////////////////////////////////////////////////////////window
w = Window("18", Rect(140,40,800,700))
.front
.alwaysOnTop_(true);

StaticText(w,Rect(20,2,200,20))
.string_("2ndOrder Oktaeder");



w.view.decorator_(FlowLayout(w.bounds,20@20,20@20));

c = Array.with(

	 CompositeView(w, 1200@600)
	.background_(Color.rand),


);
/////////////////////////////////////////////////////////////////////////////////////////////////////array0
Array.with(
//////////////////////////////////////////knob0
Knob(c[0], Rect(400,180,80,80))
.action_({
	arg obj;
	var qual;
	qual = obj.value.linexp(0,1,1,100).reciprocal;
	if(
		v.isPlaying,
		{v.set(\rq,qual)}
	);
}),
	//////////////////////////////////////////knob1
Knob(c[0], Rect(400,280,80,80))
.action_({
	arg obj;
	var qual;
	qual = obj.value.linexp(0,1,1,100).reciprocal;
	if(
		v.isPlaying,
		{v.set(\rq,qual)}
	);
}),
	//////////////////////////////////////////knob2
Knob(c[0], Rect(400,380,80,80))
.action_({
	arg obj;
	var qual;
	qual = obj.value.linexp(0,1,1,100).reciprocal;
	if(
		v.isPlaying,
		{v.set(\rq,qual)}
	);
}),

 ///////////////////////////////////////////////slider1
	Slider(c[0], Rect(600,100,100,400))
.background_(Color.rand)
	.action_({
	arg obj;
	var cf;
	cf = obj.value.linexp(0,1,100,4000).postln;

		v = s.volume
		v.
	);
	c[0].children[5].value_(obj.value.linexp(0,1,100,4000))
}),
	//////////////////////////////////////////////////////////button2
Button(c[0], Rect(20,29,80,80))
.background_(Color.rand)
	.states_([
	["OFF",Color.rand,Color.rand],
	["ON",Color.rand,Color.rand]])
.action_({
	arg obj;
	if(
		obj.value == 1,
		{
			v = Synth.new(
				\audio,
				[
						\gatef,1,
					\freq, c[0].children[1].value.linexp(0,1,100,4000),
					\rq, c[0].children[0].value.linexp(0,1,1,100).reciprocal
				]
			).register
		},
		{v.set(\gatef,0)}
	)
}),
////////////////////////////////////////////text1
StaticText(c[0],Rect(600,50,50,50))
.string_("master Volume"),
///////////////////////////////////////////text2
StaticText(c[0],Rect(380,200,10,10))
	.string_("X"),
	///////////////////////////////////////////text3
	StaticText(c[0],Rect(380,300,10,10))
.string_("Y"),
	///////////////////////////////////////////text4
	StaticText(c[0],Rect(380,400,10,10))
.string_("Z"),
///////////////////////////////////////////////numberbox5
 NumberBox(c[0], Rect(650,60,40,20))
.value_(100)
.clipLo_(100)
.clipHi_(4000)
.decimals_(2)
.action_({
	arg obj;
	c[0].children[1].valueAction_(obj.value.explin(100,4000,0,1))
})
);


)