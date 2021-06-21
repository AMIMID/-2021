(
var w,v,points,radius;
var x_axis,y_axis,z_axis,circle;
var	r1,r2,r3,r4,r5,r6;
var  c_side_1,c_side_2,c_side_3,c_side_4,c_side_5,c_side_6;
var	p1_c,p2_c,p3_c,p4_c,p5_c,p6_c;
var  p1,p2,p3,p4,p5,p6;
/////////////////////////////////////////////////////////////////////////////////////////////////////////
    Window.closeAll;
    w = Window("VBA_NestV",Rect(600,70,660,660),scroll:false).front.alwaysOnTop_(true);
    w.alpha = 0.98;  w.view.background = Color.white;
//////////////////////////////////////////////////////////////////////////////////////////////
    ~p1=Point(0,0);~p2=Point(0,0); ~p3=Point(0,0); ~p4=Point(0,0); //~p5=Point(0,0);  ~p6=Point(0,0);
    ~p1_radius = 10;~p2_radius = 10;~p3_radius = 10;~p4_radius = 10;//~p5_radius = 10;~p6_radius = 10;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////points
points  = Array.with(
~slider1 = Slider2D(w, Rect(15,520,80,100)).action_({ arg obj;   var magn, angl;  angl = obj.x.linlin(0,1,0,6.28);magn = obj.y.linlin(0,1,0,120);
		~ang1.value_(obj.x.linlin(0,1,1,6.28));~magn1.value_(obj.y.linlin(0,1,0.1,120));
		~p1=Polar(magn,angl).asPoint; v.refresh;}),

	~slider2 = Slider2D(w, Rect(110,520,80,100)).action_({ arg obj;   var magn, angl;  angl = obj.x.linlin(0,1,0,6.28);magn = obj.y.linlin(0,1,0,120);
		 ~ang2.value_(obj.x.linlin(0,1,1,6.28));~magn2.value_(obj.y.linlin(0,1,0.1,120));
		~p2=Polar(magn,angl).asPoint; v.refresh;}),

	~slider3 = Slider2D(w, Rect(205,520,80,100)).action_({ arg obj;   var magn, angl;  angl = obj.x.linlin(0,1,0,6.28);magn = obj.y.linlin(0,1,0,120);
		~ang3.value_(obj.x.linlin(0,1,1,6.28));~magn3.value_(obj.y.linlin(0,1,0.1,120));
		~p3=Polar(magn,angl).asPoint; v.refresh;}),

	~slider4 = Slider2D(w, Rect(300,520,80,100)).action_({ arg obj;   var magn, angl;  angl = obj.x.linlin(0,1,0,6.28);magn = obj.y.linlin(0,1,0,120);
		~ang4.value_(obj.x.linlin(0,1,1,12));~magn4.value_(obj.y.linlin(0,1,0.1,120));
		~p4=Polar(magn,angl).asPoint; v.refresh;}),

	//~slider5 = Slider2D(w, Rect(395,520,80,100)).action_({ arg obj;   var magn, angl;  angl = obj.x.linlin(0,1,0,6.28);magn = obj.y.linlin(0,1,0,120);
//	~ang5.value_(obj.x.linlin(0,1,1,6.28));~magn5.value_(obj.y.linlin(0,1,0.1,120));
	//	~p5=Polar(magn,angl).asPoint; v.refresh;}),

//	~slider6 = Slider2D(w, Rect(490,520,80,100)).action_({ arg obj;   var magn, angl;  angl = obj.x.linlin(0,1,0,6.28);magn = obj.y.linlin(0,1,0,120);
	//	~ang6.value_(obj.x.linlin(0,1,1,6.28));~magn6.value_(obj.y.linlin(0,1,0.1,120));
	//	~p6=Polar(magn,angl).asPoint; v.refresh;})
);
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Z_axis
//~knob_z=Knob(w,Rect(585,550,50,50)).action_({arg obj;
//	var theta_p1, theta_p2;
//	theta_p1  =obj.value.linlin(0,1,0,6.28);   theta_p2 =obj.value.linlin(0,1,3.14,9.42);
//	v.refresh;
//	~p1_z = Polar(200,theta_p1).asPoint;   ~p2_z = Polar(200,theta_p2).asPoint;
//});
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////waves_radius
radius  = Array.with(
~slider7 = Slider(w, Rect(550,15,80,30)).action_({ arg obj;~p1_radius = obj.value.linlin(0,1,1,240); ~np7.value_(obj.value.linlin(0,1,1,240));v.refresh;}),
~slider8 = Slider(w, Rect(550,70,80,30)).action_({ arg obj;~p2_radius = obj.value.linlin(0,1,1,240); ~np8.value_(obj.value.linlin(0,1,1,240));v.refresh;}),
~slider9 = Slider(w, Rect(550,125,80,30)).action_({ arg obj;~p3_radius = obj.value.linlin(0,1,1,240); ~np9.value_(obj.value.linlin(0,1,1,240));v.refresh;}),
~slider10 = Slider(w, Rect(550,180,80,30)).action_({ arg obj;~p4_radius = obj.value.linlin(0,1,1,240); ~np10.value_(obj.value.linlin(0,1,1,240));v.refresh;}),
//~slider11 = Slider(w, Rect(550,235,80,30)).action_({ arg obj;~p5_radius = obj.value.linlin(0,1,1,240); ~np11.value_(obj.value.linlin(0,1,1,240));v.refresh;}),
//~slider12 = Slider(w, Rect(550,290,80,30)).action_({ arg obj;~p6_radius = obj.value.linlin(0,1,1,240); 	~np12.value_(obj.value.linlin(0,1,1,240));v.refresh;})
);
//////////////////////////////////////////////////////numberboxes
(
~np7 = NumberBox(w, Rect(520,15,25,20)).value_(1).clipLo_(1).clipHi_(240).decimals_(0).action_({ arg obj; ~slider7.valueAction_(obj.value.linlin(1,240,0,1))});
~np8 = NumberBox(w, Rect(520,70,25,20)).value_(1).clipLo_(1).clipHi_(240).decimals_(0).action_({ arg obj; ~slider8.valueAction_(obj.value.linlin(1,240,0,1))});
~np9 = NumberBox(w, Rect(520,125,25,20)).value_(1).clipLo_(1).clipHi_(240).decimals_(0).action_({ arg obj; ~slider9.valueAction_(obj.value.linlin(1,240,0,1))});
~np10 = NumberBox(w, Rect(520,180,25,20)).value_(1).clipLo_(1).clipHi_(240).decimals_(0).action_({  arg obj; ~slider10.valueAction_(obj.value.linlin(1,240,0,1))});
//~np11 = NumberBox(w, Rect(520,235,25,20)).value_(1).clipLo_(1).clipHi_(240).decimals_(0).action_({  arg obj; //~slider11.valueAction_(obj.value.linlin(1,240,0,1))});
//~np12 = NumberBox(w, Rect(520,290,25,20)).value_(1).clipLo_(1).clipHi_(240).decimals_(0).action_({  arg obj; //~slider12.valueAction_(obj.value.linlin(1,240,0,1))});
~ang1 = NumberBox(w, Rect(15,640,25,20)).value_(1).clipLo_(0.1).clipHi_(6.28).decimals_(2).action_({  arg obj; ~slider1.valueAction_(obj.x.linlin(0,6.28,0,1))});
~ang2 = NumberBox(w, Rect(110,640,25,20)).value_(1).clipLo_(0.1).clipHi_(6.28).decimals_(2).action_({ arg obj; ~slider2.valueAction_(obj.x.linlin(0,6.28,0,1))});
~ang3 = NumberBox(w, Rect(205,640,25,20)).value_(1).clipLo_(0.1).clipHi_(6.28).decimals_(2).action_({ arg obj; ~slider3.valueAction_(obj.x.linlin(0,6.28,0,1))});
~ang4 = NumberBox(w, Rect(300,640,25,20)).value_(1).clipLo_(0.1).clipHi_(6.28).decimals_(2).action_({ arg obj; ~slider4.valueAction_(obj.x.linlin(0,6.28,0,1))});
//~ang5 = NumberBox(w, Rect(395,640,25,20)).value_(1).clipLo_(0.1).clipHi_(6.28).decimals_(2).action_({ arg obj; //~slider5.valueAction_(obj.x.linlin(0,6.28,0,1))});
//~ang6 = NumberBox(w, Rect(490,640,25,20)).value_(1).clipLo_(0.1).clipHi_(6.28).decimals_(2).action_({ arg obj; ~slider6.valueAction_(obj.x.linlin(0,6.28,0,1))});
~magn1 = NumberBox(w, Rect(55,640,25,20)).value_(1).clipLo_(0.1).clipHi_(120).decimals_(1).action_({ arg obj; ~slider1.valueAction_(obj.y.linlin(0.1,120,0,1))});
~magn2 = NumberBox(w, Rect(150,640,25,20)).value_(1).clipLo_(0.1).clipHi_(120).decimals_(1).action_({ arg obj; ~slider2.valueAction_(obj.y.linlin(0.1,120,0,1))});
~magn3 = NumberBox(w, Rect(245,640,25,20)).value_(1).clipLo_(0.1).clipHi_(120).decimals_(1).action_({ arg obj; ~slider3.valueAction_(obj.y.linlin(0.1,120,0,1))});
~magn4 = NumberBox(w, Rect(345,640,25,20)).value_(1).clipLo_(0.1).clipHi_(120).decimals_(1).action_({ arg obj; ~slider4.valueAction_(obj.y.linlin(0.1,120,0,1))});
//~magn5 = NumberBox(w, Rect(435,640,25,20)).value_(1).clipLo_(0.1).clipHi_(120).decimals_(1).action_({ arg obj; //~slider5.valueAction_(obj.y.linlin(0.1,120,0,1))});
//~magn6 = NumberBox(w, Rect(530,640,25,20)).value_(1).clipLo_(0.1).clipHi_(120).decimals_(1).action_({ arg obj; ~slider6.valueAction_(obj.y.linlin(0.1,120,0,1))});
);
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////Text
StaticText(w,Rect(15,625,25,20)).string_("angle").background_(Color.gray).align = \center;
StaticText(w,Rect(110,625,25,20)).string_("angle").background_(Color.gray).align = \center;
StaticText(w,Rect(205,625,25,20)).string_("angle").background_(Color.gray).align = \center;
StaticText(w,Rect(300,625,25,20)).string_("angle").background_(Color.gray).align = \center;
//StaticText(w,Rect(395,625,25,20)).string_("angle").background_(Color.gray).align = \center;
//StaticText(w,Rect(490,625,25,20)).string_("angle").background_(Color.gray).align = \center;
StaticText(w,Rect(55,625,40,20)).string_("magnitude").background_(Color.gray);
StaticText(w,Rect(245,625,40,20)).string_("magnitude").background_(Color.gray);
StaticText(w,Rect(150,625,40,20)).string_("magnitude").background_(Color.gray);
StaticText(w,Rect(345,625,40,20)).string_("magnitude").background_(Color.gray);
//StaticText(w,Rect(435,625,40,20)).string_("magnitude").background_(Color.gray);
//StaticText(w,Rect(530,625,40,20)).string_("magnitude").background_(Color.gray);
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////drawing
v = UserView.new(w,Rect(12,12,500,500)).background_(Color.gray);
 // (StaticText(v,Rect.aboutPoint(400@100,12,12)).string_("F").stringColor_(Color.white)).align = \center;
//(StaticText(v,Rect.aboutPoint(~p1,12,12)).string_("p1").stringColor_(Color.black)).align = \center;
v.drawFunc ={
	Pen.translate(250,250);
	/////C_matrix
    Color(red:1,green:0,blue:0,alpha:0.5).set;
	Pen.width=0.5;
	r1=Pen.line(0@0,~p1);r2=Pen.line(0@0,~p2);
	r3=Pen.line(0@0,~p3);r4=Pen.line(0@0,~p4);
	//r5=Pen.line(0@0,~p5);r5=Pen.line(0@0,~p6);
	c_side_1=Pen.line(~p1,~p2);c_side_2=Pen.line(~p2,~p3);
	c_side_3=Pen.line(~p3,~p4);c_side_4=Pen.line(~p4,~p1);
	//c_side_5=Pen.line(~p5,~p6);c_side_6=Pen.line(~p6,~p1);
	Pen.stroke;
	////_sides_and_sphere
	Color(red:0,green:0,blue:0,alpha:0.8).set;
   Pen.width=1/2;
y_axis=Pen.line(0@(-200),0@200);x_axis= Pen.line((-200)@0,200@0);z_axis= Pen.line(~p1_z,~p2_z );
//	circle=Pen.strokeOval(Rect.aboutPoint(0@0,200,200));
Pen.stroke;
	//////C_points
	Color(red:0,green:1,blue:1,alpha:0.5).set;
	Pen.width=4/3;
	p1_c=Pen.addOval(Rect.aboutPoint(~p1,~p1_radius,~p1_radius));
	p2_c=Pen.addOval(Rect.aboutPoint(~p2,~p2_radius,~p2_radius));
	p3_c=Pen.addOval(Rect.aboutPoint(~p3,~p3_radius,~p3_radius));
	p4_c=Pen.addOval(Rect.aboutPoint(~p4,~p4_radius,~p4_radius));
//p5_c=Pen.addOval(Rect.aboutPoint(~p5,~p5_radius,~p5_radius));p6_c=Pen.addOval(Rect.aboutPoint(~p6,~p6_radius,~p6_radius));
	Pen.width=3/2;
	p1=Pen.addRect(Rect.aboutPoint(~p1,2,2));p2=Pen.addRect(Rect.aboutPoint(~p2,2,2));p3=Pen.addRect(Rect.aboutPoint(~p3,2,2));
	p4=Pen.addRect(Rect.aboutPoint(~p4,2,2));//p5=Pen.addRect(Rect.aboutPoint(~p5,2,2));p6=Pen.addRect(Rect.aboutPoint(~p6,2,2));

	Pen.stroke;
};

)