s.options.numOutputBusChannels=4


a= Buffer.readChannel(s,channels:0,path:);
b= Buffer.readChannel(s,channels:1,path:);
(
(
SynthDef(\a,{
var sig,audio;

	sig=PlayBuf.ar(1,0,BufRateScale.kr(0));

	#w,x,y,z=PanB.ar(sig,MouseX.kr(0,1),0,0.3);
	audio=DecodeB2.ar(2,w,x,y,0.5);
	Out.ar(0,audio);
}).add;
);
(
SynthDef(\b,{
var sig,audio;

	sig=PlayBuf.ar(1,1,BufRateScale.kr(0));

	#w,x,y,z=PanB.ar(sig,MouseX.kr(0,1),0,0.3);
	audio=DecodeB2.ar(2,w,x,y,0.5);
	Out.ar(2,audio);
}).add;
);
)

////////////////////////////////////////////////////
(
(
SynthDef(\natur_gnade,
	{
		arg f,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,attack,decay,pan;
		var	sig,audio,env;
env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);

	sig= SinOsc.ar(f,SinOsc.ar(f1),SinOsc.ar(f2))
		+
	SinOsc.ar(f,SinOsc.ar(f3),SinOsc.ar(f4))
		+
	SinOsc.ar(f,SinOsc.ar(f5),SinOsc.ar(f6))
		+
		SinOsc.ar(f,SinOsc.ar(f7),SinOsc.ar(f8))
		+
	SinOsc.ar(f,SinOsc.ar(f9),SinOsc.ar(f10))
		+
	SinOsc.ar(f,SinOsc.ar(f11),SinOsc.ar(f12));



		#w,x,y,z=PanB.ar(sig,LFSaw.ar(pan),0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(0,audio*env*1/2);
}).add
);
(
SynthDef(\33,
	{
			arg az,el,attack,decay,
	    x1,y1,z1,x2,y2,z2,x3,y3,z3;
		var f1,d1,f2,d2,f3,d3,audio,sig,env;
		d1=Complex(x1,y1).abs;f1=Complex(d1,z1).abs;
        d2=Complex(x2,y2).abs;f2=Complex(d2,z2).abs;
       d3=Complex(x3,y3).abs;f3=Complex(d3,z3).abs;
env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack,0.3,0.3,decay]),gate:1, doneAction:2);
sig= SinOsc.ar(freq:f1*100,phase:SinOsc.ar(f2*100),mul:SinOsc.ar(f3*100));

		#w,x,y,z=PanB.ar(sig,LFSaw.ar(az),FSinOsc.ar(el), 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(0,audio*env*1/2);
}).add
);
(
SynthDef(\333,{
	arg az,el,attack,decay,f,p,a;

	    var audio,sig,env,freq,pha,ml;

	env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack,0.3,0.3,decay]),gate:1, doneAction:2);
	freq= SinOsc.ar(f*100);
	pha= SinOsc.ar(p*100,mul:freq);
	ml=SinOsc.ar(freq,mul:pha);

	sig=SinOsc.ar(freq:freq,phase:pha,mul:ml);

	#w,x,y,z=PanB.ar(sig,LFSaw.ar(az),FSinOsc.ar(el), 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(0,audio*env*300);
}).add
);
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
     audio=DecodeB2.ar(4, w, x, y, 0.5);
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
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(0,audio*env);
}).add
);
(
SynthDef(\1,
	{
		arg pan,mul,x1,x2,x3,y1,y2,y3,z1,z2,z3,decay1,attack1;
		var	audio,sig,env;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack1,0.3,0.3,decay1]),gate:1, doneAction:2);

		sig=
		SinOsc.ar(freq:SinOsc.ar(z1*5*mul,y1,x1/5),
			phase:SinOsc.ar(z2*5*mul,y2,x2/5),
			mul:SinOsc.ar(z2*5*mul,y3,x2/5))
		+

		SinOsc.ar(freq:SinOsc.ar(z1*3*mul,y1,x1/3),
			phase:SinOsc.ar(z2*3*mul,y2,x2/3),
			mul:SinOsc.ar(z2*3*mul,y3,x2/3))
		+
		SinOsc.ar(freq:SinOsc.ar(z1*2*mul,y1,x1/2),
			phase:SinOsc.ar(z2*2*mul,y2,x2/2),
			mul:SinOsc.ar(z2*2*mul,y3,x2/2))
		+
		SinOsc.ar(freq:SinOsc.ar(z1*mul,y1,x1),
			phase:SinOsc.ar(z2*mul,y2,x2),
			mul:SinOsc.ar(z2*mul,y3,x2));

		#w,x,y,z=PanB.ar(sig,LFSaw.ar(pan),0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(0,audio*env);
}).add
);

(
SynthDef(\2,
	{
		arg pan2,mul2,x4,x5,x6,y4,y5,y6,z4,z5,z6,decay2,attack2;
		var	audio,sig,env;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack2,0.3,0.3,decay2]),gate:1, doneAction:2);

	  	sig=
	   SinOsc.ar(freq:SinOsc.ar(z4*10*mul2,y4,x4/10),
			phase:SinOsc.ar(z5*10*mul2,y5,x5/10),
			mul:SinOsc.ar(z6*10*mul2,y6,x6/10))
		+
		SinOsc.ar(freq:SinOsc.ar(z4*6*mul2,y4,x4/6),
			phase:SinOsc.ar(z5*6*mul2,y5,x5/6),
			mul:SinOsc.ar(z6*6*mul2,y6,x6/6))
		+
		SinOsc.ar(freq:SinOsc.ar(z4*4*mul2,y4,x4/4),
			phase:SinOsc.ar(z5*4*mul2,y5,x5/4),
			mul:SinOsc.ar(z6*4*mul2,y6,x6/4))
		+
		SinOsc.ar(freq:SinOsc.ar(z4*2*mul2,y4,x4/2),
			phase:SinOsc.ar(z5*2*mul2,y5,x5/2),
			mul:SinOsc.ar(z6*2*mul2,y6,x6/2));

		#w,x,y,z=PanB.ar(sig,LFSaw.ar(pan2),0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(1,audio*env);
}).add
);


(
SynthDef(\3,
	{
		arg pan3,mul3,x7,x8,x9,y7,y8,y9,z7,z8,z9,decay3,attack3;
		var	audio,sig,env;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack3,0.3,0.3,decay3]),gate:1, doneAction:2);

	  	sig=
	   SinOsc.ar(freq:SinOsc.ar(z7*15*mul3,y9,x7/15),
			phase:SinOsc.ar(z8*15*mul3,y8,x8/15),
			mul:SinOsc.ar(z9*15*mul3,y7,x9/15))
		+
		  SinOsc.ar(freq:SinOsc.ar(z7*9*mul3,y9,x7/9),
			phase:SinOsc.ar(z8*9*mul3,y8,x8/9),
			mul:SinOsc.ar(z9*9*mul3,y7,x9/9))
		+
		  SinOsc.ar(freq:SinOsc.ar(z7*6*mul3,y9,x7/6),
			phase:SinOsc.ar(z8*6*mul3,y8,x8/6),
			mul:SinOsc.ar(z9*6*mul3,y7,x9/6))
		+
		  SinOsc.ar(freq:SinOsc.ar(z7*3*mul3,y9,x7/3),
			phase:SinOsc.ar(z8*3*mul3,y8,x8/3),
			mul:SinOsc.ar(z9*3*mul3,y7,x9/3));

		#w,x,y,z=PanB.ar(sig,LFSaw.ar(pan3),0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(2,audio*env);
}).add
);
(
SynthDef(\4,
	{
		arg pan4,mul4,x10,x11,x12,y10,y11,y12,z10,z11,z12,decay4,attack4;
		var	audio,sig,env;

		env=EnvGen.kr(Env([0,1,0.5,0.5,0],[attack4,0.3,0.3,decay4]),gate:1, doneAction:2);

	  	sig=
	   SinOsc.ar(freq:SinOsc.ar(z10*20*mul4,y10,x10/20),
			phase:SinOsc.ar(z11*20*mul4,y11,x11/20),
			mul:SinOsc.ar(z12*20*mul4,y12,x12/20))
		+
		   SinOsc.ar(freq:SinOsc.ar(z10*12*mul4,y10,x10/12),
			phase:SinOsc.ar(z11*12*mul4,y11,x11/12),
			mul:SinOsc.ar(z12*12*mul4,y12,x12/12))
		+
		   SinOsc.ar(freq:SinOsc.ar(z10*8*mul4,y10,x10/8),
			phase:SinOsc.ar(z11*8*mul4,y11,x11/8),
			mul:SinOsc.ar(z12*8*mul4,y12,x12/8))
		+
		   SinOsc.ar(freq:SinOsc.ar(z10*4*mul4,y10,x10/4),
			phase:SinOsc.ar(z11*4*mul4,y11,x11/4),
			mul:SinOsc.ar(z12*4*mul4,y12,x12/4));

		#w,x,y,z=PanB.ar(sig,LFSaw.ar(pan4),0, 0.3);
     audio=DecodeB2.ar(4, w, x, y, 0.5);
     Out.ar(3,audio*env);
}).add
)
)
////////////////////////////////////////////////////
(
Tdef(\pattern1,
      {


		1.do({((

Pdef(\p_1,

 Pbind(*[
    instrument: \1,
        \dur,Pexprand(0.4,4,inf),
		\x1,Pexprand(1,2,inf),
		\x2,Pexprand(1,2,inf),
		\x3,Pexprand(1,2,inf),
		\y1,Pexprand(1pi,2pi,inf),
		\y2,Pexprand(1pi,2pi,inf),
		\y3,Pexprand(1pi,2pi,inf),
		\z1,Pexprand(1,4,inf),
		\z2,Pexprand(1,4,inf),
		\z3,Pexprand(1,4,inf),
		\pan,Pexprand(0.01,1,inf).trace,
		\mul,Pexprand(20,100,inf).trace,
		\decay1,Pexprand(1,4,inf).trace,
					\attack1,Pexprand(0.01,0.1,inf).trace
])

).play(quant:1)
)); 0.yield});

		1.do({((

Pdef(\p_2,

 Pbind(*[
    instrument: \2,
        \dur,Pexprand(0.4,4,inf),
		\x4,Pexprand(1,2,inf),
		\x5,Pexprand(1,2,inf),
		\x6,Pexprand(1,2,inf),
		\y4,Pexprand(1pi,2pi,inf),
		\y5,Pexprand(1pi,2pi,inf),
		\y6,Pexprand(1pi,2pi,inf),
		\z4,Pexprand(1,4,inf),
		\z5,Pexprand(1,4,inf),
		\z6,Pexprand(1,4,inf),
		\pan2,Pexprand(0.01,1,inf).trace,
		\mul2,Pexprand(20,100,inf).trace,
					\decay2,Pexprand(1,4,inf).trace,
					\attack2,Pexprand(0.01,0.1,inf).trace
])

).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_3,

 Pbind(*[
    instrument: \3,
        \dur,Pexprand(0.4,4,inf),
		\x7,Pexprand(1,2,inf),
		\x8,Pexprand(1,2,inf),
		\x9,Pexprand(1,2,inf),
		\y7,Pexprand(1pi,2pi,inf),
		\y8,Pexprand(1pi,2pi,inf),
		\y9,Pexprand(1pi,2pi,inf),
		\z7,Pexprand(1,4,inf),
		\z8,Pexprand(1,4,inf),
		\z9,Pexprand(1,4,inf),
		\pan3,Pexprand(0.01,1,inf).trace,
		\mul3,Pexprand(20,100,inf).trace,
					\decay3,Pexprand(1,4,inf).trace,
					\attack3,Pexprand(0.01,0.1,inf).trace
])

).play(quant:1)
)); 0.yield});
		1.do({((

Pdef(\p_4,

 Pbind(*[
    instrument: \4,
        \dur,Pexprand(0.4,4,inf),
		\x10,Pexprand(1,2,inf),
		\x11,Pexprand(1,2,inf),
		\x12,Pexprand(1,2,inf),
		\y10,Pexprand(1pi,2pi,inf),
		\y11,Pexprand(1pi,2pi,inf),
		\y12,Pexprand(1pi,2pi,inf),
		\z10,Pexprand(1,4,inf),
		\z11,Pexprand(1,4,inf),
		\z12,Pexprand(1,4,inf),
		\pan4,Pexprand(0.01,1,inf).trace,
		\mul4,Pexprand(20,100,inf).trace,
					\decay4,Pexprand(1,4,inf).trace,
					\attack4,Pexprand(0.01,0.1,inf).trace
])

).play(quant:1)
)); 300.yield});
		////////////////////////////////////////
		1.do({((

Pdef(\n_g,

 Pbind(*[
    instrument: \natur_gnade,
        \dur,Pexprand(0.4,4,100),
					\f,Pexprand(10,40,inf),
		\f1,Prand([100,200,300,400],inf),
		\f2,Prand([100,200,300,400],inf),
		\f3,Prand([100,200,300,400],inf),
		\f4,Prand([100,200,300,400],inf),
		\f5,Prand([100,200,300,400],inf),
		\f6,Prand([100,200,300,400],inf),
		\f7,Prand([100,200,300,400],inf),
		\f8,Prand([100,200,300,400],inf),
		\f9,Prand([100,200,300,400],inf),
		\f10,Prand([100,200,300,400],inf),
		\f11,Prand([100,200,300,400],inf),
		\f12,Prand([100,200,300,400],inf),
		\decay,Pexprand(1,4,inf).trace,
					\attack,Pexprand(0.01,0.1,inf).trace,
					\pan,Pexprand(1/4,1);
])

).play(quant:1)
)); 0.yield});

		//////////////////////////////////////////////////////
		1.do({((

Pdef(\p_noise1,

 Pbind(*[
    instrument: \NOISE1,
        \dur,Prand([1,2,3,4,150],inf),
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
        \dur,Prand([1,2,3,4,150],inf),
		\xa2,Prand([10,20,30,40],inf).trace,
		\ya2,Prand([10,20,30,40],inf),
		\za2,Prand([10,20,30,40],inf),
		\xb2,Prand([10,20,30,40],inf),
		\yb2,Prand([10,20,30,40],inf),
		\zb2,Prand([10,20,30,40],inf),
		\xc2,Prand([10,20,30,40],inf),
		\yc2,Prand([10,20,30,40],inf),
		\zc2,Prand([10,20,30,40],inf),
					\pan2,Prand([1,1/2,1/3,1/4],inf).trace
])
).play(quant:1)
)); 1800.yield});
		////////////////////////////////////////
		1.do({((

Pdef(\n_g,

 Pbind(*[
    instrument: \natur_gnade,
        \dur,Pexprand(0.4,4,50),
					\f,Pexprand(10,40,inf),
		\f1,Prand([100,200,300,400],inf),
		\f2,Prand([100,200,300,400],inf),
		\f3,Prand([100,200,300,400],inf),
		\f4,Prand([100,200,300,400],inf),
		\f5,Prand([100,200,300,400],inf),
		\f6,Prand([100,200,300,400],inf),
		\f7,Prand([100,200,300,400],inf),
		\f8,Prand([100,200,300,400],inf),
		\f9,Prand([100,200,300,400],inf),
		\f10,Prand([100,200,300,400],inf),
		\f11,Prand([100,200,300,400],inf),
		\f12,Prand([100,200,300,400],inf),
		\decay,Pexprand(1,4,inf).trace,
					\attack,Pexprand(0.01,0.1,inf).trace,
					\pan,Pexprand(1/4,1);
])

).play(quant:1)
)); 150.yield});


		/////////////////////////////////////////
		1.do({((

Pdef(\p_333,

 Pbind(*[
    instrument: \333,
				\dur,Pseq([1],inf),
				\f,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		        \p,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		        \a,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\az,Pexprand(1/4,1,100),
		\el,Pexprand(1/4,1,100),
				\decay,Pseq([2,1,3,3,2,1,2,1,3,3,2,1],100).trace,
				\attack,Pexprand(0.01,0.1,100).trace
])

).play(quant:1)
));0.yield});
	1.do({((

Pdef(\p_33,

 Pbind(*[
    instrument: \33,
				\dur,Pseq([1],inf),
		\x1,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\y1,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\z1,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\x2,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\y2,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\z2,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\x3,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\y3,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\z3,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),

		\az,Pexprand(1/4,1,100),
		\el,Pexprand(1/4,1,100),
				\decay,Pseq([2,1,3,3,2,1,2,1,3,3,2,1],100).trace,
				\attack,Pexprand(0.01,0.1,100).trace
])

).play(quant:1)
));1800.yield});
		1.do({((

Pdef(\p_333,

 Pbind(*[
    instrument: \333,
				\dur,Pseq([1],inf),
				\f,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		        \p,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		        \a,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\az,Pexprand(1/4,1,100),
		\el,Pexprand(1/4,1,100),
				\decay,Pseq([2,1,3,3,2,1,2,1,3,3,2,1],100).trace,
				\attack,Pexprand(0.01,0.1,100).trace
])

).play(quant:1)
));0.yield});
	1.do({((

Pdef(\p_33,

 Pbind(*[
    instrument: \33,
				\dur,Pseq([1],inf),
		\x1,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\y1,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\z1,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\x2,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\y2,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\z2,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\x3,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\y3,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\z3,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),

		\az,Pexprand(1/4,1,100),
		\el,Pexprand(1/4,1,100),
				\decay,Pseq([2,1,3,3,2,1,2,1,3,3,2,1],100).trace,
				\attack,Pexprand(0.01,0.1,100).trace
])

).play(quant:1)
));1800.yield});
		1.do({((

Pdef(\p_333,

 Pbind(*[
    instrument: \333,
				\dur,Pseq([1],inf),
				\f,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		        \p,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		        \a,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\az,Pexprand(1/4,1,100),
		\el,Pexprand(1/4,1,100),
				\decay,Pseq([2,1,3,3,2,1,2,1,3,3,2,1],100).trace,
				\attack,Pexprand(0.01,0.1,100).trace
])

).play(quant:1)
));0.yield});
	1.do({((

Pdef(\p_33,

 Pbind(*[
    instrument: \33,
				\dur,Pseq([1],inf),
		\x1,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\y1,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\z1,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\x2,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\y2,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\z2,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\x3,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\y3,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),
		\z3,Pseq([1,3,2,4,3,2,1,3,2,1,4],100),

		\az,Pexprand(1/4,1,100),
		\el,Pexprand(1/4,1,100),
				\decay,Pseq([2,1,3,3,2,1,2,1,3,3,2,1],100).trace,
				\attack,Pexprand(0.01,0.1,100).trace
])

).play(quant:1)
));1800.yield});
		///////////////////////////////////////////////

		1.do({(Synth.new(\a););2.yield});
		1.do({(Synth.new(\b););1800.yield});
			1.do({(Synth.new(\a););2.yield});
		1.do({(Synth.new(\b););1800.yield});
			1.do({(Synth.new(\a););2.yield});
		1.do({(Synth.new(\b););1800.yield});






		}
)
)

Tdef(\pattern1).play
Tdef(\pattern1).stop
Tdef(\pattern1).pause
Tdef(\pattern1).reset