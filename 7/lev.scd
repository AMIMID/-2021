(
(
SynthDef(\NOISE1,
	{
		arg xa1,ya1,za1,xb1,yb1,zb1,xc1,yc1,zc1,pan1;
		var f1,a1,p1,xya1,xyb1,xyc1;
		var audio,sig,env;
		xya1=Complex(xa1,ya1).abs;
		xyb1=Complex(xb1,yb1).abs;
		xyc1=Complex(xc1,yc1).abs;
		f1=Complex(xya1,za1).abs;
		p1=Complex(xyb1,zb1).abs;
		a1=Complex(xyc1,zc1).abs;
		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[1,1,0.5,1.5]),gate:1, doneAction:2);
       sig= SinOsc.ar(freq:SinOsc.ar(f1),phase:SinOsc.ar(p1),mul:SinOsc.ar(a1));
		#w,x,y,z=PanB.ar(sig,SinOsc.ar(pan1),0, 0.3);
     audio=DecodeB2.ar(6, w, x, y, 0.5);
     Out.ar(0,audio*env);
}).add
);
/////////////
(
SynthDef(\NOISE2,
	{
		arg xa2,ya2,za2,xb2,yb2,zb2,xc2,yc2,zc2,pan2;
		var f2,a2,p2,xya2,xyb2,xyc2;
		var audio,sig,env;
		xya2=Complex(xa2,ya2).abs;
		xyb2=Complex(xb2,yb2).abs;
		xyc2=Complex(xc2,yc2).abs;
		f2=Complex(xya2,za2).abs;
		p2=Complex(xyb2,zb2).abs;
		a2=Complex(xyc2,zc2).abs;
		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[1,1,0.5,1.5]),gate:1, doneAction:2);
		sig= SinOsc.ar(freq:SinOsc.ar(f2),phase:SinOsc.ar(p2),mul:SinOsc.ar(a2));
		#w,x,y,z=PanB.ar(sig,SinOsc.ar(pan2),0, 0.3);
     audio=DecodeB2.ar(6, w, x, y, 0.5);
     Out.ar(0,audio*env);
}).add
);
/////////////
(
SynthDef(\NOISE3,
	{
		arg xa3,ya3,za3,xb3,yb3,zb3,xc3,yc3,zc3,pan3;
		var f3,a3,p3,xya3,xyb3,xyc3;
		var audio,sig,env;
		xya3=Complex(xa3,ya3).abs;
		xyb3=Complex(xb3,yb3).abs;
		xyc3=Complex(xc3,yc3).abs;
		f3=Complex(xya3,za3).abs;
		p3=Complex(xyb3,zb3).abs;
		a3=Complex(xyc3,zc3).abs;
		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[1,1,0.5,1.5]),gate:1, doneAction:2);
		sig= SinOsc.ar(freq:SinOsc.ar(f3),phase:SinOsc.ar(p3),mul:SinOsc.ar(a3));
		#w,x,y,z=PanB.ar(sig,SinOsc.ar(pan3),0, 0.3);
     audio=DecodeB2.ar(6, w, x, y, 0.5);
     Out.ar(0,audio*env);
}).add
);
/////////////
(
SynthDef(\NOISE4,
	{
		arg xa4,ya4,za4,xb4,yb4,zb4,xc4,yc4,zc4,pan4;
		var f4,a4,p4,xya4,xyb4,xyc4;
		var audio,sig,env;
		xya4=Complex(xa4,ya4).abs;
		xyb4=Complex(xb4,yb4).abs;
		xyc4=Complex(xc4,yc4).abs;
		f4=Complex(xya4,za4).abs;
		p4=Complex(xyb4,zb4).abs;
		a4=Complex(xyc4,zc4).abs;
		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[1,1,0.5,1.5]),gate:1, doneAction:2);
		sig= SinOsc.ar(freq:SinOsc.ar(f4),phase:SinOsc.ar(p4),mul:SinOsc.ar(a4));
		#w,x,y,z=PanB.ar(sig,SinOsc.ar(pan4),0, 0.3);
     audio=DecodeB2.ar(6, w, x, y, 0.5);
     Out.ar(0,audio*env*10);
}).add
);
/////////////
(
SynthDef(\NOISE5,
	{
		arg xa5,ya5,za5,xb5,yb5,zb5,xc5,yc5,zc5,pan5;
		var f5,a5,p5,xya5,xyb5,xyc5;
		var audio,sig,env;
		xya5=Complex(xa5,ya5).abs;
		xyb5=Complex(xb5,yb5).abs;
		xyc5=Complex(xc5,yc5).abs;
		f5=Complex(xya5,za5).abs;
		p5=Complex(xyb5,zb5).abs;
		a5=Complex(xyc5,zc5).abs;
		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[1,1,0.5,1.5]),gate:1, doneAction:2);
		sig= SinOsc.ar(freq:SinOsc.ar(f5),phase:SinOsc.ar(p5),mul:SinOsc.ar(a5));
		#w,x,y,z=PanB.ar(sig,SinOsc.ar(pan5),0, 0.3);
     audio=DecodeB2.ar(6, w, x, y, 0.5);
     Out.ar(0,audio*env*10);
}).add
);/////////////
(
SynthDef(\NOISE6,
	{
		arg xa6,ya6,za6,xb6,yb6,zb6,xc6,yc6,zc6,pan6;
		var f6,a6,p6,xya6,xyb6,xyc6;
		var audio,sig,env;
		xya6=Complex(xa6,ya6).abs;
		xyb6=Complex(xb6,yb6).abs;
		xyc6=Complex(xc6,yc6).abs;
		f6=Complex(xya6,za6).abs;
		p6=Complex(xyb6,zb6).abs;
		a6=Complex(xyc6,zc6).abs;
		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[1,1,0.5,1.5]),gate:1, doneAction:2);
		sig= SinOsc.ar(freq:SinOsc.ar(f6),phase:SinOsc.ar(p6),mul:SinOsc.ar(a6));
		#w,x,y,z=PanB.ar(sig,SinOsc.ar(pan6),0, 0.3);
     audio=DecodeB2.ar(6, w, x, y, 0.5);
     Out.ar(0,audio*env*10);
}).add
);
/////////////
(
SynthDef(\WAVE,
	{
		arg cutoff;
		var audio,env;
		env=EnvGen.kr(Env.sine(7,1),gate:1, doneAction:2);
		#w,x,y,z=PanB.ar(LPF.ar(WhiteNoise.ar,cutoff),SinOsc.ar(1/4),0, 0.3);
     audio=DecodeB2.ar(6, w, x, y, 0.5);
     Out.ar(0,audio*env);
}).add
)
)
//////////////////////////////////////////////////////////Pattern
(
Tdef(\PATTERN,
      {
		1.do({((

Pdef(\p_noise1,

 Pbind(*[
    instrument: \NOISE1,
        \dur,Prand([1,2,3,4,1800],inf),
		\xa1,Prand([100,200,300,400],inf).trace,
		\ya1,Prand([100,200,300,400],inf),
		\za1,Prand([100,200,300,400],inf),
		\xb1,Prand([100,200,300,400],inf),
		\yb1,Prand([100,200,300,400],inf),
		\zb1,Prand([100,200,300,400],inf),
		\xc1,Prand([100,200,300,400],inf),
		\yc1,Prand([100,200,300,400],inf),
		\zc1,Prand([100,200,300,400],inf),
					\pan1,Prand([1,1/2,1/3,1/4],inf).trace
])
).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_noise2,

 Pbind(*[
    instrument: \NOISE2,
        \dur,Prand([1,2,3,4,1800],inf),
		\xa2,Prand([100,200,300,400],inf).trace,
		\ya2,Prand([100,200,300,400],inf),
		\za2,Prand([100,200,300,400],inf),
		\xb2,Prand([100,200,300,400],inf),
		\yb2,Prand([100,200,300,400],inf),
		\zb2,Prand([100,200,300,400],inf),
		\xc2,Prand([100,200,300,400],inf),
		\yc2,Prand([100,200,300,400],inf),
		\zc2,Prand([100,200,300,400],inf),
					\pan2,Prand([1,1/2,1/3,1/4],inf).trace
])
).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_noise3,

 Pbind(*[
    instrument: \NOISE3,
        \dur,Prand([1,2,3,4,1800],inf),
		\xa3,Prand([100,200,300,400],inf).trace,
		\ya3,Prand([100,200,300,400],inf),
		\za3,Prand([100,200,300,400],inf),
		\xb3,Prand([100,200,300,400],inf),
		\yb3,Prand([100,200,300,400],inf),
		\zb3,Prand([100,200,300,400],inf),
		\xc3,Prand([100,200,300,400],inf),
		\yc3,Prand([100,200,300,400],inf),
		\zc3,Prand([100,200,300,400],inf),
					\pan3,Prand([1,1/2,1/3,1/4],inf).trace
])
).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_noise4,

 Pbind(*[
    instrument: \NOISE4,
        \dur,Prand([1,2,3,4,30,60],inf).trace,
		\xa4,Prand([10,20,30,40],inf).trace,
		\ya4,Prand([10,20,30,40],inf),
		\za4,Prand([10,20,30,40],inf),
		\xb4,Prand([10,20,30,40],inf),
		\yb4,Prand([10,20,30,40],inf),
		\zb4,Prand([10,20,30,40],inf),
		\xc4,Prand([10,20,30,40],inf),
		\yc4,Prand([10,20,30,40],inf),
		\zc4,Prand([10,20,30,40],inf),
					\pan4,Prand([1,1/2,1/3,1/4],inf).trace
])
).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_noise5,

 Pbind(*[
    instrument: \NOISE5,
        \dur,Prand([1,2,3,4,30,60],inf).trace,
		\xa5,Prand([10,20,30,40],inf).trace,
		\ya5,Prand([10,20,30,40],inf),
		\za5,Prand([10,20,30,40],inf),
		\xb5,Prand([10,20,30,40],inf),
		\yb5,Prand([10,20,30,40],inf),
		\zb5,Prand([10,20,30,40],inf),
		\xc5,Prand([10,20,30,40],inf),
		\yc5,Prand([10,20,30,40],inf),
		\zc5,Prand([10,20,30,40],inf),
					\pan5,Prand([1,1/2,1/3,1/4],inf).trace
])
).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_noise6,

 Pbind(*[
    instrument: \NOISE6,
        \dur,Prand([1,2,3,4,30,60],inf).trace,
		\xa6,Prand([10,20,30,40],inf).trace,
		\ya6,Prand([10,20,30,40],inf),
		\za6,Prand([10,20,30,40],inf),
		\xb6,Prand([10,20,30,40],inf),
		\yb6,Prand([10,20,30,40],inf),
		\zb6,Prand([10,20,30,40],inf),
		\xc6,Prand([10,20,30,40],inf),
		\yc6,Prand([10,20,30,40],inf),
		\zc6,Prand([10,20,30,40],inf),
					\pan6,Prand([1,1/2,1/3,1/4],inf).trace
])
).play(quant:1)
)); 0.yield});




		1.do({((
Pdef(\p_wave,

 Pbind(*[
    instrument: \WAVE,
         \dur,Pseq([2,3,4,2,12],inf),
		\cutoff, Pseq([20,200,2000,200,20],inf),

])
).play(quant:1)
)); 0.yield});
	}
)
)

Tdef(\PATTERN).play
Tdef(\PATTERN).stop
Tdef(\PATTERN).pause
Tdef(\PATTERN).reset