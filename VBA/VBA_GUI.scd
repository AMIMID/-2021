(
w = Window.new.front;
w.drawFunc = {
    // fill the gradient
    Pen.addOval(w.view.bounds.insetBy(30));
    Pen.fillRadialGradient(w.view.bounds.center,
        w.view.bounds.center, 0, w.bounds.width, Color.rand, Color.rand);
};
w.refresh;
)

(
var y, z;
z = Array.with(\signal,\signal2,\signal3,\signal4);
y = z.copyRange(2,2);
z.postln;
y.postln;
)



/////////////////////////////////////////////////////////
(
var w,v;
var x_axis,y_axis,circle;
var	r1,r2,r3,r4,c_side_1,c_side_2,c_side_3,c_side_4;
var	p1_c,p2_c,p3_c,p4_c;
var	p1_radius,p2_radius,p3_radius,p4_radius;
var	p1_x,p1_y,p2_x,p2_y,p3_x,p3_y,p4_x,p4_y;
var	ch_0_1,ch_1_3,ch_3_4,ch_4_0;
    Window.closeAll;
    w = Window("VBA_Nest",Rect(820,70,525,650),scroll:false).front.alwaysOnTop_(true);
    w.alpha = 0.98;
    w.view.background = Color.white;
    ~p1=Point(150,-150);
	~p2=Point(-150,-150);
    ~p3=Point(-150,150);
    ~p4=Point(150,150);
~slider1 = Slider2D(w, Rect(20,520,100,100)).action_({
		arg obj_sl_1;
		var xryi_sl_1, xr_sl_1, yi_sl_1;
	xr_sl_1 = obj_sl_1.x.linexp(0,1,1,150);
	yi_sl_1 = obj_sl_1.y.linexp(0,1,-1,-150);
		xryi_sl_1 = [xr_sl_1, yi_sl_1];
	xryi_sl_1.postln;
	~p1=Point(xr_sl_1,yi_sl_1);
	v.refresh;
});
~slider2 = Slider2D(w, Rect(130,520,100,100)).action_({
		arg obj_sl_2;
		var xryi_sl_2, xr_sl_2, yi_sl_2;
	xr_sl_2 = obj_sl_2.x.linexp(0,1,-1,-150);
	yi_sl_2 = obj_sl_2.y.linexp(0,1,-1,-150);
		xryi_sl_2 = [xr_sl_2, yi_sl_2];
	xryi_sl_2.postln;
	~p2=Point(xr_sl_2,yi_sl_2);
	v.refresh;
});
~slider3 = Slider2D(w, Rect(240,520,100,100)).action_({
		arg obj_sl_3;
		var xryi_sl_3, xr_sl_3, yi_sl_3;
	xr_sl_3 = obj_sl_3.x.linexp(0,1,-1,-150);
	yi_sl_3 = obj_sl_3.y.linexp(0,1,1,150);
		xryi_sl_3 = [xr_sl_3, yi_sl_3];
	xryi_sl_3.postln;
	~p3=Point(xr_sl_3,yi_sl_3);
	v.refresh;
});
~slider4 = Slider2D(w, Rect(350,520,100,100)).action_({
		arg obj_sl_4;
		var xryi_sl_4, xr_sl_4, yi_sl_4;
	xr_sl_4 = obj_sl_4.x.linexp(0,1,1,150);
	yi_sl_4 = obj_sl_4.y.linexp(0,1,1,150);
		xryi_sl_4 = [xr_sl_4, yi_sl_4];
	xryi_sl_4.postln;
	~p4=Point(xr_sl_4,yi_sl_4);
	v.refresh;
});
v = UserView.new(w,Rect(12,12,500,500)).background_(Color.black);
   (StaticText(v,Rect.aboutPoint(400@100,12,12)).string_("F").stringColor_(Color.white)).align = \center;
	(StaticText(v,Rect.aboutPoint(100@100,12,12)).string_("L").stringColor_(Color.white)).align = \center;
	(StaticText(v,Rect.aboutPoint(100@400,12,12)).string_("B").stringColor_(Color.white)).align = \center;
	(StaticText(v,Rect.aboutPoint(400@400,12,12)).string_("R").stringColor_(Color.white)).align = \center;
	StaticText(v,Rect(10,10,50,12)).string_("Grundriss").stringColor_(Color.white);
	StaticText(v,Rect(452,245,10,12)).string_("0").background_(Color.white).align = \center;
	StaticText(v,Rect(245,36,10,12)).string_("1").background_(Color.white).align = \center;
	StaticText(v,Rect(245,245,10,12)).string_("2").background_(Color.white).align = \center;
	StaticText(v,Rect(38,245,10,12)).string_("3").background_(Color.white).align = \center;
	StaticText(v,Rect(245,452,10,12)).string_("4").background_(Color.white).align = \center;
	(StaticText(v,Rect.aboutPoint(~p1,12,12)).string_("p1").stringColor_(Color.black)).align = \center;
    (StaticText(v,Rect.aboutPoint(~p2,12,12)).string_("p2").stringColor_(Color.black)).align = \center;
    (StaticText(v,Rect.aboutPoint(~p3,12,12)).string_("p3").stringColor_(Color.black)).align = \center;
    (StaticText(v,Rect.aboutPoint(~p4,12,12)).string_("p4").stringColor_(Color.black)).align = \center;
v.drawFunc ={
	arg p1,p2,p3,p4;
    p1_radius=10;p2_radius=10;p3_radius=10;p4_radius=10;
	Pen.translate(250,250);
	/////C_matrix
    Color(red:rrand(0.0, 1),green:rrand(0.0, 1),blue:rrand(0.0, 1),alpha:1).set;
	Pen.width=0.3;
	r1=Pen.line(0@0,~p1);r2=Pen.line(0@0,~p2);
	r3=Pen.line(0@0,~p3);r4=Pen.line(0@0,~p4);
	c_side_1=Pen.line(~p1,~p2);c_side_2=Pen.line(~p2,~p3);
	c_side_3=Pen.line(~p3,~p4);c_side_4=Pen.line(~p4,~p1);
	Pen.stroke;
	////octahedron_sides_and_sphere
	Color(red:rrand(0.0, 1),green:rrand(0.0, 1),blue:rrand(0.0, 1),alpha:1).set;
    Pen.width=1.5;
	ch_1_3=Pen.line(0@(-200),(-200)@0);ch_0_1=Pen.line(0@(-200),200@0);
		ch_3_4=Pen.line(0@200,(-200)@0);ch_4_0=Pen.line(0@200,200@0);
	y_axis=Pen.line(0@(-200),0@200);x_axis= Pen.line((-200)@0,200@0);
	circle=Pen.strokeOval(Rect.aboutPoint(0@0,200,200));
	Pen.stroke;
	//////C_points
	Color(red:rrand(0.0, 1),green:rrand(0.0, 1),blue:rrand(0.0, 1),alpha:1).set;
	p1_c=Pen.fillOval(Rect.aboutPoint(~p1,p1_radius,p1_radius));
	p2_c=Pen.fillOval(Rect.aboutPoint(~p2,p2_radius,p2_radius));
	p3_c=Pen.fillOval(Rect.aboutPoint(~p3,p3_radius,p3_radius));
	p4_c=Pen.fillOval(Rect.aboutPoint(~p4,p4_radius,p4_radius));
	Pen.stroke;
};

)
///////////////////////

