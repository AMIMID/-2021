
o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels=4


(SynthDef(\tria,
	{   arg f1a,f2a,f3a,f1b,f2b,f3b,f1c,f2c,f3c,f1d,f2d,f3d,mul,decay,attack,detune,
		     h1a,h1b,h1c,h1d,h2a,h2b,h2c,h2d;
		var sig1,sig2,sig3,sig4,env;

		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		sig1=
FreeVerb.ar(AllpassC.ar(
			SinOsc.ar(f1a*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2a,h1a),Blip.ar(f3a,h2a))* AmpComp.kr(f1a*mul,110,1.1)));
		sig2=
FreeVerb.ar(AllpassC.ar(
			SinOsc.ar(f1b*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2b,h1b),Blip.ar(f3b,h2b))* AmpComp.kr(f1b*mul,110,1.1)));
		sig3=
FreeVerb.ar(AllpassC.ar(
		SinOsc.ar(f1c*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2c,h1c),Blip.ar(f3c,h2c))* AmpComp.kr(f1c*mul,110,1.1)));
		sig4=
FreeVerb.ar(AllpassC.ar(
	SinOsc.ar(f1d*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2d,h1d),Blip.ar(f3d,h2d))* AmpComp.kr(f1d*mul,110,1.1)));

		Out.ar(0,sig1*env);
		Out.ar(1,sig2*env);
		Out.ar(2,sig3*env);
		Out.ar(3,sig4*env);
}).add;
)

(
Tdef(\pattern_tria,
      {
		1.do({((

y= Pdef(\p_tria,
 Pbind(*[
    instrument: \tria,
					\dur,Pexprand(0.1,2,inf),
					\f1a,Pexprand(1,4,inf).trace,
					\f2a,Pexprand(0.1,10,inf),
					\f3a,Pexprand(0.1,10,inf),
					\f1b,Pexprand(1,4,inf),
					\f2b,Pexprand(0.1,10,inf),
					\f3b,Pexprand(0.1,10,inf),
					\f1c,Pexprand(1,4,inf),
					\f2c,Pexprand(0.1,10,inf),
					\f3c,Pexprand(0.1,10,inf),
					\f1d,Pexprand(1,4,inf),
					\f2d,Pexprand(0.1,10,inf),
					\f3d,Pexprand(0.1,10,inf),
					\h1a,Pexprand(1,100,inf),
					\h2a,Pexprand(1,100,inf),
						\h1b,Pexprand(1,100,inf),
					\h2b,Pexprand(1,100,inf),
						\h1c,Pexprand(1,100,inf),
					\h2c,Pexprand(1,100,inf),
						\h1d,Pexprand(1,100,inf),
					\h2d,Pexprand(1,100,inf),
		\mul,Pexprand(80,10000,inf).trace,
					\decay,Pexprand(1,8,inf),
					\attack,Pexprand(2,6,inf),
					\detune,Pexprand(0.1,1,inf);
])

).play(quant:1)
)); 0.yield});
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
