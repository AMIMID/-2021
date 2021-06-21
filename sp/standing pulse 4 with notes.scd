s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels=8

s.record(numChannels:4);
////////////////////////////////
//////////////////////////////////////////////////////


(
SynthDef(\sp1,
	{
		arg  freq1, fr1;
		var audio,mul,dur;

		//dur = Demand.kr(Impulse.kr(1/4),0,Drand([20,20000],inf));
		dur =20000;

		mul =TExpRand.kr(20,20000,Dust.kr(dur));


		#w, x, y, z = PanB.ar(SinOsc.ar(fr1*mul)* AmpComp.kr(fr1*mul, 80,1.3),SinOsc.kr(freq1),gain:0.5);

		audio =   DecodeB2.ar(8, w, x, y, 1);

		Out.ar(0,audio);
}).add
);





///////////////////////////////synths

////////////////////////////////////////////////////////////////////////
/
/(
(
 Synth.new(\sp1, [\gate,1, \fr1,4, \freq1,0.01*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,6, \freq1,0.02*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,8, \freq1,0.03*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,9, \freq1,0.04*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,10, \freq1,0.05*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,12, \freq1,0.06*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,14, \freq1,0.07*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,15, \freq1,0.08*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,16, \freq1,0.09*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,18, \freq1,0.1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,20, \freq1,0.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,21, \freq1,0.3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,22, \freq1,0.4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,24, \freq1,0.5*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,25, \freq1,0.6*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,27, \freq1,0.7*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,28, \freq1,0.8*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,30, \freq1,0.9*1/2]);
		Synth.new(\sp1, [\gate,1, \fr1,32, \freq1,1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,33, \freq1,1.1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,35, \freq1,1.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,36, \freq1,1.3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,40, \freq1,1.4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,42, \freq1,1.5*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,44, \freq1,1.6*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,45, \freq1,1.7*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,48, \freq1,1.8*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,49, \freq1,1.9*1/2]);
		Synth.new(\sp1, [\gate,1, \fr1,50, \freq1,2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,55, \freq1,2.1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,56, \freq1,2.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,60, \freq1,2.3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,64, \freq1,2.4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,66, \freq1,2.5*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,70, \freq1,2.6*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,72, \freq1,2.7*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,77, \freq1,2.8*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,2.9*1/2]);
		Synth.new(\sp1, [\gate,1, \fr1,81, \freq1,3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,84, \freq1,3.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,88, \freq1,3.3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,90, \freq1,3.4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,96, \freq1,3.5*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,99, \freq1,3.6*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,100, \freq1,3.7*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,108, \freq1,3.8*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,110, \freq1,3.9*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,120, \freq1,4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,121, \freq1,4.1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,132, \freq1,4.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,144, \freq1,4.3*1/2]);
);
)
/////////////////////////////////////////////////////////12



//////////////////////////////////////////////////////////////////////////////

(
(SynthDef(\tria1,
	{   arg decay,mul,mul1;

		var sig1,env;

		env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig1= InFeedback.ar(4)*(Dust2.ar(mul));
		Out.ar(0,sig1*env);
}).add;
);
(SynthDef(\tria2,
	{   arg decay,mul,mul1;
		var sig2,env;

	env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig2=InFeedback.ar(4)*(Dust2.ar(mul));


		Out.ar(1,sig2*env);
}).add;
);
(SynthDef(\tria3,
	{   arg decay,mul,mul1;
		var sig3,env;

		env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig3=InFeedback.ar(4)*(Dust2.ar(mul));

		Out.ar(2,sig3*env);
}).add;
);
(SynthDef(\tria4,
	{   arg decay,mul,mul1;
		var sig4,env;

		env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig4=InFeedback.ar(4)*(Dust2.ar(mul));


		Out.ar(3,sig4*env);
}).add;
);
)
//////////////////
///*(Impulse.ar(mul,mul:3)* AmpComp.kr(mul, 200,0.1))
///////////////////////
(
Tdef(\pattern_tria,
      {

		1.do({((

y= Pdef(\p_tria1,
 Pbind(*[
    instrument: \tria1,
					\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([200, 200000], inf), Pseq([8, 8],inf), Pseq([\exp, \exp],inf)),
					\mul1,Pexprand(20,20000,inf);

])

).play(quant:1)
)); 4.yield});
		1.do({((

y= Pdef(\p_tria2,
 Pbind(*[
    instrument: \tria2,
							\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([50000, 200], inf), Pseq([8, 8],inf), Pseq([\exp, \exp],inf)),
					\mul1,Pexprand(20,20000,inf);

])

).play(quant:1)
)); 4.yield});
		1.do({((

y= Pdef(\p_tria3,
 Pbind(*[
    instrument: \tria3,
							\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([200, 50000], inf), Pseq([8, 8],inf), Pseq([\exp, \exp],inf)),
					\mul1,Pexprand(20,20000,inf);

])

).play(quant:1)
)); 4.yield});
		1.do({((

y= Pdef(\p_tria4,
 Pbind(*[
    instrument: \tria4,
						\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([50000, 200], inf), Pseq([8,8],inf), Pseq([\exp, \exp],inf)),
					\mul1,Pexprand(20,20000,inf);
])

).play(quant:1)
)); 4.yield});



	}
)
)
Tdef(\pattern_tria).play
Tdef(\pattern_tria).stop
Tdef(\pattern_ena).pause
Tdef(\pattern_ena).reset
y.play
y.stop
z.stop
////////////////
////////////////


(
s.latency= 0.05;
s.waitForBoot{
        l= 800;                                         //global window size
        b= Buffer.alloc(s, l, 4);

        SynthDef(\avTrk, {|in= 0, bufnum, rate= 40, sample= 1|
                var z= In.ar(in, 4);
                var trig= Impulse.ar(rate*0.92);        //compensate
                var index= Phasor.ar(trig, sample, 0, BufFrames.ir(bufnum)-1);
                BufWr.ar(z, bufnum, index, 0);
                SendTrig.ar(trig, 0, bufnum);
        }).add;

};
)
(
//--setup
var width= l+580, height= l;
var w= Window("18", Window.screenBounds).front.fullScreen;
var u= UserView(w, Rect(0, 0, width, height));

//--variables
var theta= 0;
var fps= 60;
var arr= Array.fill(l, 0);              //same as half windowsize above
var o= OSCFunc({|m|
        if(m[2]==0, {                   //redraw once for each cycle of amps
                b.getn(0, l-1, {|data| {arr= data; u.refresh}.defer});
        });
}, '/tr', s.addr);
var trk= Synth(\avTrk, [\in, 0, \bufnum, b, \rate, fps]);

//--interface
~trails= 1;
~speed= 0;
~sample= 1;
~amp= 0.5;
~version= 0;

//--main loop
u.drawFunc= {
        trk.set(\sample, ~sample);
        Pen.fillColor= Color.white(0, ~trails);
        Pen.fillRect(u.bounds);         //manually clear
        Pen.strokeColor= Color.black;
        switch(~version,
                2, {                    //line
                        Pen.rotate(theta, width/2, height/2);
                        Pen.translate(0, height*0.5);
                        arr.do{|y, x|
                                var p= Point(x, y*(height*~amp));
                                if(x==0, {Pen.moveTo(p)}, {Pen.lineTo(p)});
                        };
                        Pen.stroke;
                },
                0, {                    //warp
                        Pen.rotate(theta, width/2, height/2);
                        Pen.translate(width*0.5, height*0.45);
                        arr.do{|x, y|
                                var p= Point(x*~amp, y*~amp).rotate(x*2pi);
                                if(x==0, {Pen.moveTo(p)}, {Pen.lineTo(p)});
                        };
                        Pen.stroke;
                },
                1, {                    //flower
                        Pen.translate(width*0.5, height*0.5);
                        Pen.moveTo(Point(arr[0], 0)*arr[0]);
                        arr.do{|y, x|
                                var p= Point(y, x)*y;
                                var a= x%width/width*2pi+theta;
                                Pen.lineTo(p.rotate(a));
                        };
                        Pen.stroke;
                }
        );
        theta= theta+~speed;
};

//--window management
u.clearOnRefresh= false;        //do not erase - just draw on top of
w.onClose= {
        trk.free;
        o.free;
};
w.front;
CmdPeriod.doOnce({if(w.isClosed.not, {w.close})});
//note no animate_ here. the responder is driving the animation
)

//change these while the program is running
~sample= 2;
~sample= 10;
~sample= 1;
~trails= 0.2;
~speed= 0.1;
~speed= -0.05;
~trails= 0.01;
~amp= 2
~speed= pi*0.25;
~amp= 0.2;
~sample= 2;
~version= 0;
~trails= 0.2;
~version= 2;
~sample= 1;
~version= 1;
~speed= 2pi*1.001;
~amp= 0.5;