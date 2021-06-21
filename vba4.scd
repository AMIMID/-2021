s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=6
o=s.options

o.memSize;

o.memSize = 2.pow(16);
////evaluate to play and pan the WhiteNoise signal in c1/

(
c = Group.new;
~p1 = Synth.head(c,\a);
~p2 = Synth.tail(c,\b);
)


c = Group.new



////evaluate to add Pan-position SynthDefs/
(
(
SynthDef(\inputsignal,
	{
		arg azimuth,f1a,f2a,f3a,mul,decay,attack,detune,
		     h1a,h2a;
		var out,input,az,el,env;
		input = SinOsc.ar(f1a*mul*LFNoise1.kr(0.5,detune).midiratio,Blip.ar(f2a,h1a),Blip.ar(f3a,h2a))* AmpComp.kr(f1a*mul,100,1);
		env=EnvGen.kr(Env.perc(attack,decay),gate:1, doneAction:2);
		az = LFSaw.kr(azimuth,pi);
		el = 0;
		#w, x, y, z = PanB.ar(input*env, az, el, 0.3);
        out =   DecodeB2.ar(2, w, x, y,0.5);
		Out.ar(4,out);
}).add
);
(
SynthDef(\a,
	{
		arg az, el;
		var out, input;
		az = LFSaw.kr(0.5,pi);
		el = 0;
		input =	 In.ar(4,1);
		#w, x, y, z = PanB.ar(input, az, el, 0.3);
        out =   DecodeB2.ar(2, w, x, y,0.5);
		Out.ar(0,out*2);
}).add
);
(
SynthDef(\b,
	{
		arg az, el;
		var out, input;
		az = LFSaw.kr(0.5,pi);
		el = 0;
		input =	 In.ar(5,1);
		#w, x, y, z = PanB.ar(input, az, el, 0.3);
        out =   DecodeB2.ar(2, w, x, y,0.5);
		Out.ar(2,out*2);
}).add
);
)

(
Tdef(\pattern_vba4,
      {
		1.do({((

y= Pdef(\p_vba4,
 Pbind(*[
    instrument: \inputsignal,
					\dur,Pexprand(0.1,8,inf),
					\f1a,Pexprand(1,2,inf),
					\f2a,Pexprand(0.1,20,inf),
					\f3a,Pexprand(0.1,20,inf),
					\h1a,Pexprand(1,100,inf),
					\h2a,Pexprand(1,100,inf),
		\mul,Pexprand(100,10000,inf).trace,
					\decay,Pexprand(1,6,inf),
					\attack,Pexprand(2,6,inf),
						\azimuth,Pexprand(0.1,1,inf),
					\detune,Pexprand(0.1,0.5,inf);
])

).play(quant:1)
)); 0.yield});
	}
)
)

Tdef(\pattern_vba4).play
Tdef(\pattern_vba4).stop
Tdef(\pattern_vba4).pause
Tdef(\pattern_vba4).reset
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

