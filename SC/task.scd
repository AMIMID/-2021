
(
q = Routine({
       "qwe".postln; 1.yield;
        "ert".postln; 1.yield;
     "tyu".postln;1.yield;

    }
)
)

q.reset
q.play
q.stop
q.pause



//// Task


(
t = Task( {

    10.do({ "-------/////////>>>>>>>.........&&&".postln; 0.5.yield});

    30.do({ "-------/////////>>>>>>>.........&&&".scramble.postln;0.1.yield});

    1.do({ ().play; 1.yield; });

    // inf.do({ "--123123123123123&".scramble.postln;0.1.yield});
   /* loop( { })*/


})
)

t.play
t.resume
t.pause
t.reset

t.stop


///////


(
Tdef(\name,
      {
        30.do({ "-------/////////>>>>>>>.........&&&".scramble.postln;0.1.yield});
      }
)
)



Tdef(\name).play
Tdef(\name).stop
Tdef(\name).pause
Tdef(\name).reset





//////





(
x = 10;
y = 11;
if( x == 10 && y == 10,  {" it is".postln}, { ().play })
)


//////////

(
SynthDef(\re,

   {  | freq = 200 , harm = 1, amp = 1|

        var audio;

        audio = Blip.ar(freq, harm) * amp;

        audio = Blip.ar(SinOsc.ar(1).range(100,500), harm) * amp;



        Out.ar([0,1],audio)
}).add
)

q = Synth(\re)

q.set(\freq, 100)
q.set(\harm, 5)
q.set(\amp, 0.1)

q.free

/////

q.set(\freq, SinOsc.kr(1).range( 100,500)) ///this won't work

q.set(\freq, ~value)


{SinOsc.ar(400)}.play


(
a = {
    var sender, ugen, speed;

    ugen = LFPulse.ar(1).range(0,1);

    speed = Impulse.kr(10);

    sender = SendTrig.kr(speed, 0, ugen);
}.play
)



(
OSCdef(\listener, { | info |  ~value = info[3].postln }, '/tr')
)

///

(
OSCdef(\listener, { | info |  q.set(\freq,  info[3] )}, '/tr')
)




(
var win, slider;

win = Window.new("test",Rect(10,10,500,600)).front;
slider = Slider(win,Rect(20,20,100,300));
slider.value = ~value;


)






///// /////////////////////////////////////////// ///////////////////////////////////////////
(
Tdef(\counter,
			{
				inf.do{ | val = 0 |

						var  time, minutes, seconds;

						val = val + 1 ;

				        ~currentTime = val;

					if (   val < 60,
                {seconds = val; minutes = 0},
					       {
						     time = (val/60);
							  minutes = time.trunc;
							 seconds = (time % minutes) * 60
					       }
						);

						[minutes,seconds].postln;
						~minutes = minutes;
						~seconds = seconds;

					1.yield;
					  };

			}
			)
)

Tdef(\counter).resume

~currentTime
~minutes
~seconds

//// Score

(
Tdef(\score,
			{
				inf.do{
						if ( ~seconds == 2, {"i am working properly, what about you??".postln});

            if( ~minutes == 0 && ~seconds == 5, { x = {LFPulse.ar(200)}.play }  );

            if( ~minutes == 0 && ~seconds == 8, { x.free  });






						1.yield;
				};
			}
	)
)
 /////////////////////////////////////////// /////////////////////////////////////////// ///////////////////////////////////////////





(
Tdef(\score).play;
Tdef(\counter).play;
)


  ///// ///////////////////////////////////////////  ///////////////////////////////////////////



(
Tdef(\score,
			{
				inf.do{
						if ( ~seconds == 2, {"i am working properly, what about you??".postln});

            if( ~minutes == 0 && ~seconds == 5, { q = Synth(\what); Pdef(\super_cool_patter).play  }  );

            if( ~minutes == 0 && ~seconds == 8, { q.free ;Pdef(\super_cool_patter).pause  });






						1.yield;
				};
			}
	)
)



~name_1= Synth(\name)
~name_1.set(\freq, 500);
~name_1.free

Pdef(\name).play // pause, reset, resume, stop
Tdef(\name).play //pause,reset, resume, stop













