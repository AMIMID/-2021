(
var w,v,hexa_points,radius;
var x_axis,y_axis,z_axis,circle;
var	r1,r2,r3,r4,r5,r6;
var  c_side_1,c_side_2,c_side_3,c_side_4,c_side_5,c_side_6;
var	p1_c,p2_c,p3_c,p4_c,p5_c,p6_c;
var  p1,p2,p3,p4,p5,p6;
/////////////////////////////////////////////////////////////////////////////////////////////////////////
    Window.closeAll;
    w = Window("S",Rect(600,70,830,660),scroll:false).front.alwaysOnTop_(true);
    w.alpha = 0.98;  w.view.background = Color.white;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////points
hexa_points = Array.with( ~p1=Complex(-100,0).asPoint,~p2=Complex(-50,-87.5).asPoint,~p3=Complex(50,-87.5).asPoint, ~p4=Complex(100,0).asPoint,~p5=Complex(50,87.5).asPoint); ~p6=Complex(-50,87.5).asPoint;
//////////////////////////////////////////////////////////////////////////////////////////////////z_axis_line_points
~p1_z = Complex(-200,200).asPoint;   ~p2_z = Complex(120,-120).asPoint;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Z_axis
~knob_rotation_x = Knob(w,Rect(700,550,50,50)).action_({arg obj;
	//var ;
  //=obj.value.linlin(0,1,0,6.28);
//v.refresh;
});
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////waves_radius
radius  = Array.with(
~slider7 = Slider(w, Rect(700,15,80,30)).action_({ arg obj;~p1_radius = obj.value.linlin(0,1,0,200); ~np7.value_(obj.value.linlin(0,1,0,200));v.refresh;}),
~slider8 = Slider(w, Rect(700,70,80,30)).action_({ arg obj;~p2_radius = obj.value.linlin(0,1,0,200); ~np8.value_(obj.value.linlin(0,1,0,200));v.refresh;}),
~slider9 = Slider(w, Rect(700,125,80,30)).action_({ arg obj;~p3_radius = obj.value.linlin(0,1,0,200); ~np9.value_(obj.value.linlin(0,1,0,200));v.refresh;}),
~slider10 = Slider(w, Rect(700,180,80,30)).action_({ arg obj;~p4_radius = obj.value.linlin(0,1,0,200); ~np10.value_(obj.value.linlin(0,1,0,200));v.refresh;}),
~slider11 = Slider(w, Rect(700,235,80,30)).action_({ arg obj;~p5_radius = obj.value.linlin(0,1,0,200); ~np11.value_(obj.value.linlin(0,1,0,200));v.refresh;}),
~slider12 = Slider(w, Rect(700,290,80,30)).action_({ arg obj;~p6_radius = obj.value.linlin(0,1,0,200); 	~np12.value_(obj.value.linlin(0,1,0,200));v.refresh;})
);
//////////////////////////////////////////////////////numberboxes
(
~np7 = NumberBox(w, Rect(650,15,25,20)).value_(0).clipLo_(0).clipHi_(200).decimals_(0).action_({ arg obj; ~slider7.valueAction_(obj.value.linlin(1,200,0,1))});
~np8 = NumberBox(w, Rect(650,70,25,20)).value_(0).clipLo_(0).clipHi_(200).decimals_(0).action_({ arg obj; ~slider8.valueAction_(obj.value.linlin(1,200,0,1))});
~np9 = NumberBox(w, Rect(650,125,25,20)).value_(0).clipLo_(0).clipHi_(200).decimals_(0).action_({ arg obj; ~slider9.valueAction_(obj.value.linlin(1,200,0,1))});
~np10 = NumberBox(w, Rect(650,180,25,20)).value_(0).clipLo_(0).clipHi_(200).decimals_(0).action_({  arg obj; ~slider10.valueAction_(obj.value.linlin(1,200,0,1))});
~np11 = NumberBox(w, Rect(650,235,25,20)).value_(0).clipLo_(0).clipHi_(200).decimals_(0).action_({  arg obj; ~slider11.valueAction_(obj.value.linlin(1,200,0,1))});
~np12 = NumberBox(w, Rect(650,290,25,20)).value_(0).clipLo_(0).clipHi_(200).decimals_(0).action_({  arg obj; ~slider12.valueAction_(obj.value.linlin(1,200,0,1))});
);
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////Text
//StaticText(w,Rect(15,625,25,20)).string_("angle").background_(Color.gray).align = \center;
//////////////////drawing
v = UserView.new(w,Rect(12,12,600,600)).background_(Color.gray);
v.drawFunc ={
	Pen.translate(300,300);
	////////////////////////////////////////////////////////////////////////////////////////////////radiai and sides of hexagon
    Color(red:1,green:0,blue:0,alpha:0.5).set;
	Pen.width=0.5;
	r1=Pen.line(0@0,~p1);r2=Pen.line(0@0,~p2);
	r3=Pen.line(0@0,~p3);r4=Pen.line(0@0,~p4);
	r5=Pen.line(0@0,~p5);r5=Pen.line(0@0,~p6);
	c_side_1=Pen.line(~p1,~p2);c_side_2=Pen.line(~p2,~p3);
	c_side_3=Pen.line(~p3,~p4);c_side_4=Pen.line(~p4,~p5);
	c_side_5=Pen.line(~p5,~p6);c_side_6=Pen.line(~p6,~p1);
	Pen.stroke;
	//////////////////////////////////////////////////////////////////////////////////////////////////////_axis_sphere
	Color(red:0,green:0,blue:0,alpha:0.8).set;
   Pen.width=1/2;
y_axis=Pen.line(0@(-300),0@300);x_axis= Pen.line((-300)@0,300@0);z_axis= Pen.line(~p1_z,~p2_z );
//	circle=Pen.strokeOval(Rect.aboutPoint(0@0,200,200));
Pen.stroke;
	///////////////////////////////////////////////////////////////////////////////////////////////////////////S_points
	Color(red:0,green:1,blue:1,alpha:0.5).set;
	Pen.width=4/3;
	p1_c=Pen.addOval(Rect.aboutPoint(~p1,~p1_radius,~p1_radius));p2_c=Pen.addOval(Rect.aboutPoint(~p2,~p2_radius,~p2_radius));
	p3_c=Pen.addOval(Rect.aboutPoint(~p3,~p3_radius,~p3_radius));p4_c=Pen.addOval(Rect.aboutPoint(~p4,~p4_radius,~p4_radius));
	p5_c=Pen.addOval(Rect.aboutPoint(~p5,~p5_radius,~p5_radius));p6_c=Pen.addOval(Rect.aboutPoint(~p6,~p6_radius,~p6_radius));
	Pen.width=3/2;
	p1=Pen.addRect(Rect.aboutPoint(~p1,2,2));p2=Pen.addRect(Rect.aboutPoint(~p2,2,2));p3=Pen.addRect(Rect.aboutPoint(~p3,2,2));
	p4=Pen.addRect(Rect.aboutPoint(~p4,2,2));p5=Pen.addRect(Rect.aboutPoint(~p5,2,2));p6=Pen.addRect(Rect.aboutPoint(~p6,2,2));

	Pen.stroke;
};

)