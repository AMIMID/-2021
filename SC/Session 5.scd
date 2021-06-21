



{SinOsc.ar(1,0,1,0)}.scope  // -1,1
{SinOsc.ar(100,0,100,800)}.plot  // 400,600

{SinOsc.ar(500,0, mul: SinOsc.kr(1,0,1,0))}.scope



(
{
var modulator, carrier, rate;

 rate = MouseX.kr(1,50);
modulator = SinOsc.kr(rate);


carrier = SinOsc.ar( 500, mul: modulator);
carrier;
}.play
)




s.freqscope

(
{
var modulator, carrier, rate;

    rate = MouseX.kr(1,10);

    // modulator = SinOsc.kr(rate,0, 100,500);

    modulator = LFPulse.kr(rate, 0,0.5, 100,500).poll;

    modulator = LFPulse.kr(rate, 0,0.5) * 100 + 500).poll;


carrier = SinOsc.ar( modulator, mul: 1);

carrier;
}.play
)




{Pulse.ar(500,MouseX.kr(0.1,1), 0.5)}.scope




bipolar UGENS  -1 to 1
SinOsc, LFTri, Saw,

add == center value;
mul == amount of deviation;

min == add - mul;
max == add + mul;

rage == mul*2

test
[ -1,1] * 100 + 500


unipolar UGENS 0 to 1
LFPulse, Impulse, Dust;


add == lowest value;
mul == amount of deviation above add;

min == add;
max == add + mul;

test
[ 0, 1] * 100 + 500




{Impulse.ar(MouseX.kr(1,100))}.play

{Dust.ar(3)}.play




{SinOsc.ar(LFPulse.kr(20).range(500,600),mul:0.8)}.play

/////


(
{
var modulator, carrier, rate;

    rate = 50;

    modulator = SinOsc.kr(rate,0, 100,500);

carrier = SinOsc.ar( modulator, mul: 1);

carrier;
}.play
)



(
{
    var env, audio;

    env = Line.kr(0,1,0.5,doneAction:2);

/*    audio = Pulse.ar(400, mul: env);*/
    audio = Pulse.ar(400) * env;
    audio;

}.play
)

//////////

(
x = {
    var env, audio;

   env = EnvGen.kr(Env.new( [0,1,0] , [1,1] ),doneAction:2 );

    audio = Pulse.ar(400 * 3.rand) * env;
    audio;

}.play
)


//////


(
Env.new( [ 0.01, 1, 0.75, 0.75, 0.01], [2,1,4,7],
    ['lin','lin','lin','exp'  ]).test.plot
)



////

(
x = {
    var env, audio, trig;


    trig = Impulse.kr(1);

   env = EnvGen.kr(Env.new(
          [0.01, 1, 0.75, 0.75, 0.001],
        [0.1,0.5,0.7,1],
        ['lin','lin','lin','exp'  ]  ),
        doneAction:2,
          gate: trig);

    audio = Pulse.ar(400 * 3.rand) * env;
    audio;

}.play
)



(
x = {

    | t_gate = 0 |
    var env, audio, trig;


    trig = Impulse.kr(1);

    env = EnvGen.kr(Env.perc(0.01,1),t_gate);

    audio = Pulse.ar(400 * 3.rand) * env;
    audio;

}.play
)

x.set(\t_gate,1)

///


(
x = {


    var env, audio, trig,gate;


    // gate = Impulse.kr(1);
    gate = Dust.kr(5);

    env = EnvGen.kr(Env.perc(0.01,1),
        gate,doneAction:2);

    audio = Pulse.ar(400) * env;
    audio;

}.play
)







(
SynthDef(\modulator,

    {
        var freq, mul, add,pizza, fn, fm;

      freq = 200;
        mul = 5;
        add = 0;
        fn =  EnvGen.kr(Env.new(
            [0.01,5,0.01],
            [2,rrand(1,5),9]
                      ),doneAction:2);

  // fm = SinOsc.kr(freq mul:150, add:500); //500 to 800
      fm = SinOsc.kr(freq).range(500,800); //500 to 800


       pizza = SinOsc.ar(fm,0,1) * fn;

        Out.ar(0,pizza)

}).add
)

x = Synth(\modulator)

s.scope

