s.options.device_("ASIO : ASIO4ALL v2");
s.options.device_("Microsoft Sound Mapper");
s.options.numOutputBusChannels =26;

(
//window///////////////////////////////////////////////////////////////////////////////////////////////////////
var w,v,v1;
var sliderc1,knobc1,slider1p1,knob1p1,slider2p2,knob2p2,slider3p3,knob3p3,slider4p4,knob4p4;
var c1,synthbutton_start;
var azimuth_p1,azimuth_p2,azimuth_p3,azimuth_p4;
var a1,b1,a2,b2,a3,b3,a4,b4;
var distance_c1,distance_amp,azimuth_c1;
var elevation_p1,elevation_p2,elevation_p3,elevation_p4;
var x_axis,y_axis,circle;
var	r1,r2,r3,r4,c_r,c_side_1,c_side_2,c_side_3,c_side_4;
var p1_radius=10,p2_radius=10,p3_radius=10,p4_radius=10,c_radius=10;
var p1,p2,p3,p4,c_point;
var	p1_c,p2_c,p3_c,p4_c,c_oval;
var	p1_x,p1_y,p2_x,p2_y,p3_x,p3_y,p4_x,p4_y;
var	ch_0_1,ch_1_3,ch_3_4,ch_4_0;
var rect_p1,rect_p2,rect_p3,rect_p4,rect_c;
   w = Window("VBA_Nest",Rect(20,100,1193,503),scroll:false).front.alwaysOnTop_(true);
   w.alpha=1;w.view.background=Color.grey;
//c_points//////////////////////////////////////////////////////////////////////////////////////////////////////
p1=Point(0,-141.42);p2=Point(-141.42,0);p3=Point(0,141.42);p4=Point(141.42,0);c_point=Point(-200,0);
//c_points-control-title/////////////////////////////////////////////////////////////////////////////////////////////////////
	(StaticText(w,Rect(565,40,12,12)).string_("p1").stringColor_(Color.black)).align = \center;
    (StaticText(w,Rect(565,80,12,12)).string_("p2").stringColor_(Color.black)).align = \center;
    (StaticText(w,Rect(565,120,12,12)).string_("p3").stringColor_(Color.black)).align = \center;
    (StaticText(w,Rect(565,160,12,12)).string_("p4").stringColor_(Color.black)).align = \center;
   (StaticText(w,Rect(620,430,12,12)).string_("c1").stringColor_(Color.black)).align = \center;
//conrols///////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////synthstart_button///////////////////////
synthbutton_start=Button(w, Rect(580,300,40,40)).background_(Color.rand)
	.states_([["Off",Color.rand,Color.rand],["On",Color.rand,Color.rand]])
.action_({arg obj_button;
	if(obj_button.value == 1,
		{(
c1 = Group.new;
c = Synth.new(\inputsignal);/////////////
d = Synth.head(c1,\a);//////////////////////p1
e = Synth.after(d,\b);////////////////////p2
f = Synth.after(e,\c);////////////////////p3
g = Synth.after(f,\d,);////////////////////p4
k = Synth.after(g,\volumecontrol_a);/////vp1
l = Synth.after(k,\volumecontrol_b);////vp2
m = Synth.after(l,\volumecontrol_c);////vp3
n = Synth.tail(c1,\volumecontrol_d);///////vp4
)},{s.freeAll});
});
////////////////////slider_knob_c1////////////////////
sliderc1=Slider(w,Rect(650,370,15,100)).action_({|obj9|var modulai_c1;
	modulai_c1=obj9.value.linlin(0,1,0,-200);
	~rhoc1=modulai_c1;c_point=Polar(~rhoc1,~thetac1).asPoint;v1.refresh;
	distance_c1=obj9.value.linlin(0,1,0,0.6).postln;
	distance_amp=obj9.value.linlin(0,1,1,0.3).postln;
	c.set(\distance_from_origin,distance_c1,\distance_frop_origin_amp,distance_amp);
});
knobc1=Knob(w,Rect(600,380,38,38)).action_({|obj10|var argument_c1;
    argument_c1=obj10.value.linlin(0,1,6.3,0);
	~thetac1=argument_c1;c_point=Polar(~rhoc1,~thetac1).asPoint;v1.refresh;
	azimuth_c1=obj10.value.linlin(0,1,0.25,2.25).postln;
	c.set(\azimuth,azimuth_c1);
});
////////////////////slider_knob_p1////////////////////
slider1p1=Slider(w,Rect(560,20,100,15)).action_({|obj1|var modulai_p1;
	modulai_p1=obj1.value.linlin(0,1,0,-200);
	~rhop1=modulai_p1;p1=Polar(~rhop1,~thetap1).asPoint;v.refresh;
	elevation_p1=obj1.value.linlin(0,1,2,0).postln;
		a1=obj1.value.linexp(0,1,0,0.35);
	b1=obj1.value.linexp(0,1,0,-0.35);
	d.set(\el_a,elevation_p1);
});
knob1p1=Knob(w,Rect(520,20,38,38)).action_({|obj2|var argument_p1,a,b;
    argument_p1=obj2.value.linlin(0,1,0.8,2.35);
	~thetap1=argument_p1;p1=Polar(~rhop1,~thetap1).asPoint;v.refresh;
	azimuth_p1=obj2.value.linlin(0,1,a1,b1).postln;
	d.set(\az_a,azimuth_p1);
});
///////////////////slider_knob_p2////////////////////
slider2p2=Slider(w,Rect(560,60,100,15)).action_({|obj3|var modulai_p2;
	modulai_p2=obj3.value.linlin(0,1,0,200);
	~rhop2=modulai_p2;p2=Polar(~rhop2,~thetap2).asPoint;v.refresh;
	elevation_p2=obj3.value.linlin(0,1,2,0).postln;
			a2=obj3.value.linexp(0,1,0,0.35);
	b2=obj3.value.linexp(0,1,0,-0.35);
	e.set(\el_b,elevation_p2);
});
knob2p2=Knob(w,Rect(520,60,38,38)).action_({|obj4|var argument_p2;
	argument_p2=obj4.value.linlin(0,1,2.35,3.94).postln;
	~thetap2=argument_p2;p2=Polar(~rhop2,~thetap2).asPoint;v.refresh;
	azimuth_p2=obj4.value.linlin(0,1,a2,b2).postln;
	e.set(\az_b,azimuth_p2);
});
///////////////////slider_knob_p3//////////////////
slider3p3=Slider(w,Rect(560,100,100,15)).action_({|obj5|var modulai_p3;
	modulai_p3=obj5.value.linlin(0,1,0,-200);
	~rhop3=modulai_p3;p3=Polar(~rhop3,~thetap3).asPoint;v.refresh;
	elevation_p3=obj5.value.linlin(0,1,2,0).postln;
			a3=obj5.value.linexp(0,1,0,0.35);
	b3=obj5.value.linexp(0,1,0,-0.35);
	f.set(\el_c,elevation_p3)
});
knob3p3=Knob(w,Rect(520,100,38,38)).action_({|obj6|var argument_p3;
	argument_p3=obj6.value.linlin(0,1,3.95,5.5);
	~thetap3=argument_p3;p3=Polar(~rhop3,~thetap3).asPoint;v.refresh;
	azimuth_p3=obj6.value.linlin(0,1,a3,b3).postln;
	f.set(\az_c,azimuth_p3);
});
////////////////////slider_knob_p4/////////////////
slider4p4=Slider(w,Rect(560,140,100,15)).action_({|obj7|var modulai_p4;
	modulai_p4=obj7.value.linlin(0,1,0,-200);
	~rhop4=modulai_p4;p4=Polar(~rhop4,~thetap4).asPoint;v.refresh;
	elevation_p4=obj7.value.linlin(0,1,2,0).postln;
			a4=obj7.value.linexp(0,1,0,0.35);
	b4=obj7.value.linexp(0,1,0,-0.35);
	g.set(\el_d,elevation_p4);
});
knob4p4=Knob(w,Rect(520,140,38,38)).action_({|obj8|var argument_p4;
	argument_p4=obj8.value.linlin(0,1,(3*pi)/4,(5*pi)/4);
	~thetap4=argument_p4;p4=Polar(~rhop4,~thetap4).asPoint;v.refresh;
	azimuth_p4=obj8.value.linlin(0,1,a4,b4).postln;
	g.set(\az_d,azimuth_p4);
});
///////////////////////start_position///////////////////////////
slider1p1.value=1;knob1p1.value=0.5;slider2p2.value=1;
knob2p2.value=0.5;slider3p3.value=1;knob3p3.value=0.5;
slider4p4.value=1;knob4p4.value=0.5;knobc1.value=0.625;
//views//////////////////////////////////////////////////////////////////////////////////////////////////////////
v=UserView.new(w,Rect(12,12,480,480)).background_(Color.black);
v1=UserView.new(w,Rect(700,12,480,480)).background_(Color.black);
//title//////////////////////////////////////////////////////////////////////////////////////////////////////////
     StaticText(v,Rect(10,10,50,12)).string_("Grundriss_p").stringColor_(Color.white);
     StaticText(v1,Rect(10,10,50,12)).string_("Grundriss_c").stringColor_(Color.white);
//directions/////////////////////////////////////////////////////////////////////////////////////////////////////
    StaticText(v,Rect.aboutPoint(250@36,12,12)).string_("F").stringColor_(Color.white).align = \center;
	StaticText(v,Rect.aboutPoint(37@250,12,12)).string_("L").stringColor_(Color.white).align = \center;
	StaticText(v,Rect.aboutPoint(251@461,12,12)).string_("B").stringColor_(Color.white).align = \center;
	StaticText(v,Rect.aboutPoint(462@247,12,12)).string_("R").stringColor_(Color.white).align = \center;
//channels////////////////////////////////////////////////////////////////////////////////////////////////////////
	StaticText(v,Rect(386,103,12,12)).string_("0").background_(Color.white).align = \center;
	StaticText(v,Rect(103,103,12,12)).string_("1").background_(Color.white).align = \center;
	StaticText(v,Rect(244,245,12,12)).string_("4").background_(Color.white).align = \center;
	StaticText(v,Rect(103,386,12,12)).string_("2").background_(Color.white).align = \center;
	StaticText(v,Rect(385,385,12,12)).string_("3").background_(Color.white).align = \center;
	//c_points/////////////////////////////////////////////////////////////////////////////////////////////////////
	//StaticText(v,Rect.aboutPoint(p1,12,12)).string_("p1").background_(Color.white).align = \center;
    //StaticText(v,Rect.aboutPoint(p2,12,12)).string_("p2").background_(Color.white).align = \center;
    //StaticText(v,Rect.aboutPoint(p3,12,12)).string_("p3").background_(Color.white).align = \center;
    //StaticText(v,Rect.aboutPoint(p4,12,12)).string_("p4").background_(Color.white).align = \center;
//view_function///////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////v1//////////////////////////
v1.drawFunc ={Pen.translate(250,250);
	////octahedron_sides_and_sphere////////////////////////////////////
	Color(red:rrand(0.0, 1),green:rrand(0.0, 1),blue:rrand(0.0, 1),alpha:1).set;
    Pen.width=1.5;
	Pen.line(141.42@(-141.42),(-141.42)@(-141.42)).color_(Color.white);
	Pen.line((-141.42)@(-141.42),(-141.42)@141.42).color_(Color.white);
	Pen.line((-141.42)@141.42,141.42@141.42).color_(Color.white);
    Pen.line(141.42@141.42,141.42@(-141.42)).color_(Color.white);
	Pen.line((-141.42)@(-141.42),141.42@141.42).color_(Color.white);
    Pen.line((-141.42)@141.42,141.42@(-141.42)).color_(Color.white);
	Pen.strokeOval(Rect.aboutPoint(0@0,200,200)).color_(Color.white);
	Pen.stroke;
	////c1 and radius///////////////////////
	Color(red:rrand(0.0, 1),green:rrand(0.0, 1),blue:rrand(0.0, 1),alpha:1).set;
	Pen.width=0.3;c_r=Pen.line(0@0,c_point);Pen.stroke;
	rect_c=Rect.aboutPoint(c_point,c_radius,c_radius);c_oval=Pen.fillOval(rect_c);Pen.stroke;
	};
//////////////////////////////v////////////////////////
v.drawFunc ={Pen.translate(250,250);
	/////C_matrix///////////////////////
    Color(red:rrand(0.0, 1),green:rrand(0.0, 1),blue:rrand(0.0, 1),alpha:1).set;Pen.width=0.3;
	r1=Pen.line(0@0,p1);r2=Pen.line(0@0,p2);r3=Pen.line(0@0,p3);r4=Pen.line(0@0,p4);
	c_side_1=Pen.line(p1,p2);c_side_2=Pen.line(p2,p3);c_side_3=Pen.line(p3,p4);c_side_4=Pen.line(p4,p1);
	Pen.stroke;
	////octahedron_sides_and_sphere////////////////////////////////////
	Color(red:rrand(0.0, 1),green:rrand(0.0, 1),blue:rrand(0.0, 1),alpha:1).set;
    Pen.width=1.5;
	ch_0_1=Pen.line(141.42@(-141.42),(-141.42)@(-141.42));ch_1_3=Pen.line((-141.42)@(-141.42),(-141.42)@141.42);
    ch_3_4=Pen.line((-141.42)@141.42,141.42@141.42);ch_4_0=Pen.line(141.42@141.42,141.42@(-141.42));
	y_axis=Pen.line((-141.42)@(-141.42),141.42@141.42);x_axis= Pen.line((-141.42)@141.42,141.42@(-141.42));
	circle=Pen.strokeOval(Rect.aboutPoint(0@0,200,200));Pen.stroke;
	//////C_points///////////////////////////////////////
	Color(red:rrand(0.0, 1),green:rrand(0.0, 1),blue:rrand(0.0, 1),alpha:1).set;
	rect_p1=Rect.aboutPoint(p1,p1_radius,p1_radius);rect_p2=Rect.aboutPoint(p2,p2_radius,p2_radius);
    rect_p3=Rect.aboutPoint(p3,p3_radius,p3_radius);rect_p4=Rect.aboutPoint(p4,p4_radius,p4_radius);///////////////////////////////////////////////////////////////////////////////////////////////////amp_size_knob
	//~knobr=Knob(v, Rect(100,450,40,40))
    //.action_({
	//arg obj;
	//var vol;
	//vol = obj.value.linlin(0,1,1,30).postln;
	//p1_radius= Complex(vol,vol).abs;
	//v.refresh;
//});////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	p1_c=Pen.fillOval(rect_p1);p2_c=Pen.fillOval(rect_p2);
	p3_c=Pen.fillOval(rect_p3);p4_c=Pen.fillOval(rect_p4);
	Pen.stroke;
};
//SynthDefs////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////quad_signal/////////////////////////
(
(SynthDef(\inputsignal,
	{   arg azimuth=0,distance_from_origin=0.6,distance_from_origin_amp=0.3;var out,in,elevation;
		in=LFTri.ar(432);
		#w, x, y, z=PanB.ar(FreeVerb.ar(in,distance_from_origin,distance_from_origin,
			distance_from_origin),azimuth, elevation=0, distance_from_origin_amp);
        out=DecodeB2.ar(4, w, x, y,0.5);Out.ar(6,out);
}).add);
//////////////////////triangles////////////////////////
(SynthDef(\a,
	{   arg az_a=0, el_a=0;var out, input;
		input=In.ar(6,1);#w, x, y, z = PanB.ar(input, az_a, el_a, 2);
        out=DecodeB2.ar(3, w, x, y,0.5);Out.ar(10,out);
}).add);
(SynthDef(\b,
	{   arg az_b=0, el_b=0;var out, input;
		input=In.ar(7,1);#w, x, y, z = PanB.ar(input, az_b, el_b, 2);
        out=DecodeB2.ar(3, w, x, y,0.5);Out.ar(13,out);
}).add);
(SynthDef(\c,
	{   arg az_c=0, el_c=0;var out, input;
		input=In.ar(8,1);#w, x, y, z = PanB.ar(input, az_c, el_c, 2);
        out=DecodeB2.ar(3, w, x, y,0.5);Out.ar(16,out);
}).add);
(SynthDef(\d,
	{   arg az_d=0, el_d=0;var out, input;
		input=In.ar(9,1);#w, x, y, z = PanB.ar(input, az_d, el_d, 2);
        out=DecodeB2.ar(3, w, x, y,0.5);Out.ar(19,out);
}).add);
////////////////////////////////channel_stackup_equalization////////////////////////////////////
(SynthDef(\volumecontrol_a,
	{  var in_1, in_2, in_3, out_1, out_2, out_3;
		in_1=In.ar(10,1);in_2=In.ar(11,1);in_3=In.ar(12,1);
		out_1=Out.ar(0,in_1*0.5);out_2=Out.ar(1,in_2*0.5);out_3=Out.ar(4,in_3*0.3);
}).add);
(SynthDef(\volumecontrol_b,
	{  var in_1, in_2, in_3, out_1, out_2, out_3;
		in_1=In.ar(13,1);in_2=In.ar(14,1);in_3=In.ar(15,1);
		out_1=Out.ar(1,in_1*0.5);out_2=Out.ar(2,in_2*0.5);out_3=Out.ar(4,in_3*0.3);
}).add);
(SynthDef(\volumecontrol_c,
	{  var in_1, in_2, in_3, out_1, out_2, out_3;
		in_1=In.ar(16,1);in_2=In.ar(17,1);in_3=In.ar(18,1);
		out_1=Out.ar(2,in_1*0.5);out_2=Out.ar(3,in_2*0.5);out_3=Out.ar(4,in_3*0.3);
}).add);
(SynthDef(\volumecontrol_d,
	{  var  in_1, in_2, in_3, out_1, out_2, out_3;
		in_1 =In.ar(19,1);in_2 =In.ar(20,1);in_3 =In.ar(21,1);
		out_1 = Out.ar(3,in_1*0.5);out_2 = Out.ar(0,in_2*0.5);out_3 = Out.ar(4,in_3*0.3);
}).add);
);
)