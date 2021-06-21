s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels=3
////////////////////////////////
//////////////////////////////////////////////////////

(
SynthDef(\sp1,
	{
		var audio,sig,sig1, amp=0.5;
		sig= SoundIn.ar(0);
		sig1=SoundIn.ar(1);
     audio=sig+sig1;
		audio = audio * amp;
	Out.ar(0,audio!2);
}
).add;
);
Synth(\sp1);



///////////////////////////////synths


(
(SynthDef(\tria1,
	{   arg decay,mul,mul1;

		var sig1,env;

		env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig1= InFeedback.ar(2)*(Dust2.ar(mul));
		Out.ar(0,sig1*env);
}).add;
);
(SynthDef(\tria2,
	{   arg decay,mul,mul1;
		var sig2,env;

	env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig2=InFeedback.ar(2)*(Dust2.ar(mul));


		Out.ar(1,sig2*env);
}).add);

)
//////////////////
///*(SinOsc.ar(mul1,mul:3)* AmpComp.kr(mul1, 20,0.2))
///////////////////////
(
Tdef(\pattern_tria,
      {

		1.do({(
(

Synth.new(\sp1);

)


); 0.yield});
		1.do({((

y= Pdef(\p_tria1,
 Pbind(*[
    instrument: \tria1,
					\dur,0.01,
					\decay,0.01,
					\mul, Pseg( Pseq([2000000, 2000], inf), Pseq([8, 8],inf), Pseq([\exp, \exp],inf)),
					\mul1,Pexprand(20,20000,inf);

])

).play(quant:1)
)); 0.yield});
		1.do({((

y= Pdef(\p_tria2,
 Pbind(*[
    instrument: \tria2,
							\dur,0.01,
					\decay,0.01,
					\mul, Pseg( Pseq([2000, 2000000], inf), Pseq([8, 8],inf), Pseq([\exp, \exp],inf)),
					\mul1,Pexprand(20,20000,inf);

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
