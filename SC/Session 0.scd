
/*Session 0
SuperCollider - HFG
Rafa Romo-Tavizon*/
s.boot

(
5
+
        4;
)


r.m

3.cubed   /// this is comment


"ho"

9.speak
"9"

(5 + 4).asString.speak


(440 * 3/2).asString.speak;

"ha" ++ "llo"

("The frequency for E5 is" ++ (440 * 3/2).asString).speak


("The frequency for middle C is " ++ (60.midicps.round(0.1).asString)).speak



 ////////////


(  )
[ "ho", 27, "yu"  ]    /// this is an array
{   }                /// this is for functions




//////

/*BOOT THE SERVER FIRST, OTHERWISE THERE IS NO SOUND !!*/


s.boot
s.makeWindow



////////
{SinOsc.ar(mul:

{SinOsc.ar(1).po }.play

{SinOsc.ar(  add:0 , freq: 200, phase: 0, mul: 1 )}.play


///////////


{ (SinOsc.ar(207, 0, 0.3) ring1: SinOsc.ar(88, 0, 0.3)).dup}.play;




 ////////////

{ FSinOsc.ar(700).wrap2(Line.kr(0,1.01,3)) }.scope;



 ////////////



{ Fold.ar(
          SinOsc.ar(350, 0, 0.9) ,
          LFNoise2.ar(1,0.5,-0.5) ,
          LFNoise2.ar(0.9,0.5,0.5)
        )
}.scope;




 ////////////


{SinOsc.ar( MouseX.kr(100,4000))}.play



////
(
{SinOsc.ar(
      freq:300,
	  phase: SinOsc.ar(XLine.kr(20,8000,10),0,MouseX.kr(0,2pi)),
      mul:0.5)}.scope
)


 ////////////

(
{
    var a;
    a = Line.ar(-2, 2, 0.01);
    a.wrap2
}.plot
)


 ////////////

(
{
RLPF.ar(
       LFSaw.ar([8, 12], 0, 0.2),
       LFNoise1.ar([2, 3].choose, 1500, 1600),
       0.05,
       mul: 0.4
)
}.play
)



 ////////////


(

{ Fold.ar(Pulse.ar(
    [XLine.kr(200,202,10),
        XLine.kr(200,206,10)],
    LFNoise2.kr(0.5).range(0.1,0.5), 0.2), LFNoise2.ar(0.8,0.5,-0.5), LFNoise2.ar(0.9,0.5,0.5)) }.play;

)


 ////////////
a
(

{
CombN.ar(
        SinOsc.ar(
                LFNoise1.kr(
                             4,
                            24,
                           LFSaw.kr(
                                   [8,7.23],
                                    0,
                                    3,
                                    80
                                    )
                                 ).midicps,
                         0,
                       0.04
                       ),
                        0.2,
                      0.2,
                      4
           )
       }.play
)

////////

philiplawall@gmx.de
ulrikebarwanietz@yahoo.de


rafaromo@gmail.com   // here is my email. cheers !!










    x = {SinOsc.ar(260)}.play
    x.free


