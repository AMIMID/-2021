(
(
SynthDef(\NOISE1,
	{
		arg xa1,ya1,za1,xb1,yb1,zb1,xc1,yc1,zc1,pan1,
		    xa2,ya2,za2,xb2,yb2,zb2,xc2,yc2,zc2,
		    xa3,ya3,za3,xb3,yb3,zb3,xc3,yc3,zc3;
		var f1,a1,p1,xya1,xyb1,xyc1,
		    f2,a2,p2,xya2,xyb2,xyc2,
		    f3,a3,p3,xya3,xyb3,xyc3,
		    audio,sig,env;
		xya1=Complex(xa1,ya1).abs;
		xyb1=Complex(xb1,yb1).abs;
		xyc1=Complex(xc1,yc1).abs;
		f1=Complex(xya1,za1).abs;
		p1=Complex(xyb1,zb1).abs;
		a1=Complex(xyc1,zc1).abs;

		xya2=Complex(xa2,ya2).abs;
		xyb2=Complex(xb2,yb2).abs;
		xyc2=Complex(xc2,yc2).abs;
		f2=Complex(xya2,za2).abs;
		p2=Complex(xyb2,zb2).abs;
		a2=Complex(xyc2,zc2).abs;

		xya3=Complex(xa3,ya3).abs;
		xyb3=Complex(xb3,yb3).abs;
		xyc3=Complex(xc3,yc3).abs;
		f3=Complex(xya3,za3).abs;
		p3=Complex(xyb3,zb3).abs;
		a3=Complex(xyc3,zc3).abs;
		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[0.01,0.3,0.3,2]),gate:1, doneAction:2);

		sig= SinOsc.ar(freq:SinOsc.ar(f1,p1,a1),phase:SinOsc.ar(f2,p2,a3),mul:SinOsc.ar(f3,p3,a3));

		#w,x,y,z=PanB.ar(sig,SinOsc.ar(pan1),0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(0,audio*env*1/10);
}).add
);
(
SynthDef(\NOISE2,
	{
		arg xa4,ya4,za4,xb4,yb4,zb4,xc4,yc4,zc4,pan2,
		    xa5,ya5,za5,xb5,yb5,zb5,xc5,yc5,zc5,
		    xa6,ya6,za6,xb6,yb6,zb6,xc6,yc6,zc6;
		var f4,a4,p4,xya4,xyb4,xyc4,
		    f5,a5,p5,xya5,xyb5,xyc5,
		    f6,a6,p6,xya6,xyb6,xyc6,
		    audio,sig,env;
		xya4=Complex(xa4,ya4).abs;
		xyb4=Complex(xb4,yb4).abs;
		xyc4=Complex(xc4,yc4).abs;
		f4=Complex(xya4,za4).abs;
		p4=Complex(xyb4,zb4).abs;
		a4=Complex(xyc4,zc4).abs;

		xya5=Complex(xa5,ya5).abs;
		xyb5=Complex(xb5,yb5).abs;
		xyc5=Complex(xc5,yc5).abs;
		f5=Complex(xya5,za5).abs;
		p5=Complex(xyb5,zb5).abs;
		a5=Complex(xyc5,zc5).abs;

		xya6=Complex(xa6,ya6).abs;
		xyb6=Complex(xb6,yb6).abs;
		xyc6=Complex(xc6,yc6).abs;
		f6=Complex(xya6,za6).abs;
		p6=Complex(xyb6,zb6).abs;
		a6=Complex(xyc6,zc6).abs;
		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[0.01,0.3,0.3,2]),gate:1, doneAction:2);

		sig= SinOsc.ar(freq:SinOsc.ar(f4,p4,a4),phase:SinOsc.ar(f5,p5,a5),mul:SinOsc.ar(f6,p6,a6));

		#w,x,y,z=PanB.ar(sig,SinOsc.ar(pan2),0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(0,audio*env);
}).add
);
)

(
Tdef(\PATTERN,
      {
		1.do({((

Pdef(\p_noise1,

 Pbind(*[
    instrument: \NOISE1,
        \dur,Pexprand(0.1,4,inf),
					\xa1,Pexprand(100,400,inf),
					\ya1,Pexprand(100,400,inf),
					\za1,Pexprand(100,400,inf),
		\xb1,Pexprand(1pi,3pi,inf),
		\yb1,Pexprand(1pi,3pi,inf),
		\zb1,Pexprand(1pi,3pi,inf),
		\xc1,Pexprand(1,2,inf),
		\yc1,Pexprand(1,2,inf),
		\zc1,Pexprand(1,2,inf),
					\xa2,Pexprand(100,400,inf),
					\ya2,Pexprand(100,400,inf),
					\za2,Pexprand(100,400,inf),
		\xb2,Pexprand(1pi,3pi,inf),
		\yb2,Pexprand(1pi,3pi,inf),
		\zb2,Pexprand(1pi,3pi,inf),
		\xc2,Pexprand(1,2,inf),
		\yc2,Pexprand(1,2,inf),
		\zc2,Pexprand(1,2,inf),
					\xa3,Pexprand(100,400,inf),
					\ya3,Pexprand(100,400,inf),
					\za3,Pexprand(100,400,inf),
		\xb3,Pexprand(1pi,3pi,inf),
		\yb3,Pexprand(1pi,3pi,inf),
		\zb3,Pexprand(1pi,3pi,inf),
		\xc3,Pexprand(1,2,inf),
		\yc3,Pexprand(1,2,inf),
		\zc3,Pexprand(1,2,inf),
					\pan1,Pexprand(1,1/4,inf).trace
])
).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_noise2,

 Pbind(*[
    instrument: \NOISE2,
        \dur,Pexprand(0.1,4,inf),
					\xa4,Pexprand(10,40,inf),
					\ya4,Pexprand(10,40,inf),
					\za4,Pexprand(10,40,inf),
		\xb4,Pexprand(1pi,3pi,inf),
		\yb4,Pexprand(1pi,3pi,inf),
		\zb4,Pexprand(1pi,3pi,inf),
		\xc4,Pexprand(1,2,inf),
		\yc4,Pexprand(1,2,inf),
		\zc4,Pexprand(1,2,inf),
					\xa5,Pexprand(10,40,inf),
					\ya5,Pexprand(10,40,inf),
					\za5,Pexprand(10,40,inf),
		\xb5,Pexprand(1pi,3pi,inf),
		\yb5,Pexprand(1pi,3pi,inf),
		\zb5,Pexprand(1pi,3pi,inf),
		\xc5,Pexprand(1,2,inf),
		\yc5,Pexprand(1,2,inf),
		\zc5,Pexprand(1,2,inf),
					\xa6,Pexprand(10,40,inf),
					\ya6,Pexprand(10,40,inf),
					\za6,Pexprand(10,40,inf),
		\xb6,Pexprand(1pi,3pi,inf),
		\yb6,Pexprand(1pi,3pi,inf),
		\zb6,Pexprand(1pi,3pi,inf),
		\xc6,Pexprand(1,2,inf),
		\yc6,Pexprand(1,2,inf),
		\zc6,Pexprand(1,2,inf),
					\pan2,Pexprand(1,1/4,inf).trace
])
).play(quant:1)
)); 1800.yield});
		}
)
)

Tdef(\PATTERN).play
Tdef(\PATTERN).stop
Tdef(\PATTERN).pause
Tdef(\PATTERN).reset