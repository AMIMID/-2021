




(
{SinOsc.ar(300,[0, 0.5pi, 1pi,1.5pi,2pi])}.plot
)

(
{

var sing_1, sing_2, audio;

sing_1 = SinOsc.ar(300, phase: 0);
sing_2 = SinOsc.ar(300, phase: SinOsc.kr(0.5).range(1pi,0));


/*audio = sing_1 + sing_2;*/

/*audio;*/

    [sing_1,sing_2]

}.scope


)




(
{SinOsc.ar(300,0,1, add: [0,1,2,3,4,5])}.plot
)

////
(
/*do not play*/
{SinOsc.ar(300,0,mul:100, add: 50)}.plot
)
///

(
{SinOsc.ar(300).range(-50,150)}.plot
)


1/15


////


(
{
    var amp = 0.5, fund = 100;


SinOsc.ar(fund, mul: amp)
+
SinOsc.ar(fund * 2, mul:amp/2)
+
SinOsc.ar(fund * 5, mul:amp/5)
+
SinOsc.ar(fund  *8, mul:amp/8)
+
SinOsc.ar(fund *11, mul:amp/11)
+
SinOsc.ar(fund *14, mul:amp/14)
+
SinOsc.ar(fund *17, mul:amp/17)
+
SinOsc.ar(fund *20, mul:amp/20)
+
SinOsc.ar(fund *22, mul:amp/22)
+
SinOsc.ar(fund *24, mul:amp/24)
+
SinOsc.ar(fund *26, mul:amp/26)
 +
SinOsc.ar(fund *30, mul:amp/30)
+
	SinOsc.ar(fund*34, mul:amp/34)
	+
	SinOsc.ar(fund*37,mul:amp/37)
	+
	SinOsc.ar(fund*40,mul:amp/40)
	+
	SinOsc.ar(fund*42, mul:amp/42)




}.scope
)

s.freqscope

/////

(1..10)
(100,200..1000)
[1,2,3,4,5] + [ 1,2,3,4]


/////

(
{
var freqs, muls, audio, amp;

freqs = (100,200..2000);
 amp  = 2;

  /*  muls = (1..freqs.size);
    muls.postln;*/

    muls = amp/freqs;
    muls.postln;



  /*  muls = (1..10)*/


audio = SinOsc.ar( freqs, mul: muls );

audio = Mix(audio);


}.scope
)


/////

(

var fund, partials, array;

fund = 100;
partials = (1..10);

/*array = Array.newClear(10)
partials.do({ | item, index |  array[index] = (item * fund )});
array.postln;*/


array = partials.collect({ | item, index | item * fund});


array.postln;



)


/////

(

{
var fund, partials, freqs, audio, muls, amp, start, step, harm;

fund = 444;
start = 3;
step = 4;
harm = 50;
amp = 0.1;


 partials = Array.series(harm,start,step) ;


/*partials = Array.series(50,1,2) ;*/


freqs = partials.collect({ | item, index | item * fund});
muls = partials.collect({ | item, index | (index +1 )});


audio = SinOsc.ar( freqs,mul: amp/muls);

/*audio = SinOsc.ar( freqs,mul: amp); */

audio = Mix(audio);
}.scope


)

{Saw.ar(240)}.play

///


(
SynthDef(\aditive,
{
        | fund = 100 |


var  partials, freqs, audio, muls, amp, start, step, harm, env;

        env = EnvGen.kr(Env.perc(0.1,1),doneAction:2);

        /*fund = Rand(100,1000);*/
        start = Rand(1,10);
        step = Rand(1,10);
harm = 50;
amp = 0.1;

 partials = Array.series(harm,start,step) ;

/*partials = Array.series(50,1,2) ;*/

freqs = partials.collect({ | item, index | item * fund});
muls = partials.collect({ | item, index | (index +1 )});


audio = SinOsc.ar( freqs,mul: amp/muls);

/*audio = SinOsc.ar( freqs,mul: amp); */

audio = Mix(audio) * env;

audio = Out.ar([0,1], audio);


}
).add


)


x = Synth(\aditive, [\fund, 350])


(
Tdef(\player,
    {
        var speed = 0.2;
        inf.do{Synth(\aditive); speed.yield;
        };
    }
)
)



Tdef(\player).play

Tdef(\player).stop











