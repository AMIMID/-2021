






~sea = Buffer.read(s,"C:/Users/itat/Desktop/σοθνδσ/Νέος φάκελος (2)/enq1.wav" );

~sea.sampleRate


(
SynthDef(\player_2,
    {
        | audio_file, rate  = 1, doneA = 0, pos = 0, speed = 1|


        var audio, trig, env, grain_duration;


        grain_duration = 1/speed;

        trig = Impulse.kr(speed);

        env = EnvGen.kr(Env.new( [ 0,1,0], [ grain_duration, grain_duration]), trig);


        audio = PlayBuf.ar(1,bufnum: audio_file, rate: rate, doneAction: doneA, trigger: trig, startPos: pos);

        audio = audio * env;

        Out.ar(0,audio);
}).add
)


x = Synth(\player_2,[\audio_file, ~sea, \doneA, 0, \rate, 10, \pos, ~sea.numFrames/2   ]  );


x = Synth(\player_2,[\audio_file, ~sea.bufnum, \doneA, 0, \rate, 10, \pos, 0  ]  );


x.set(\speed, 3)



////////



(
SynthDef(\sinos,
    {
        | freq = 400, attack = 0.1, decay = 1 , amp = 1|

        var audio, env;

        env =EnvGen.kr(Env.perc(attack, decay), doneAction:2);
        audio = SinOsc.ar(freq) * amp * env;
        Out.ar(0,audio);
}).add
)


(freq: 500 ).play

(instrument: \sinos).play


a = (rafa: 400, walaa: 500, petros: 600)

a[\walaa]

a.class


(
p = Pbind(
    \instrument, \sinos,
    \dur, 0.5)
)


////


(
p = Pbind(*[
    instrument: \sinos,
    dur:  Pseq([ 0.5,0.4,0.7,0.5],inf),
    /*freq: Pseq([ 60,65,67,72].midicps, inf),*/

    midinote:  Pseq([ 60,65,67,72],inf),

    attack: Pwhite(2.0, 5.0, inf),
    decay: Pwhite(3.0,10,inf),

    amp:   0.1



])
)


p.play






s.plotTree


///



(
p = Pbind(*[
    instrument: \sinos,
    dur:  Pseq([ 0.5,0.4,0.7,0.5],inf),


    midinote:  60,

    harmonic: Pexprand( 1,20,inf),

    attack: Pwhite(2.0, 5.0, inf),
    decay: Pwhite(3.0,10,inf),

    amp:   Pkey(\harmonic).reciprocal *0.2



])
)


p.play
p.free

/////



(
Pdef(\pattern,

 Pbind(*[
    instrument: \sinos,
        dur:  Pwhite(0.05,0.4,inf),


    midinote:  50,

    harmonic: Pexprand( 1,10,inf),

    attack: Pwhite(0.1, 0.5, inf),
    decay: Pwhite(0.1,0.5,inf),

    amp:   Pkey(\harmonic).reciprocal *0.2


])
).play
)


p.play



//////





~sounds = Dictionary.new

~sounds.add(\low  ->  PathName( "/Users/rafa/Desktop/samplers perc/low/").entries.collect( { | info |
    Buffer.read(s, info.fullPath)}));

~sounds.add(\mid  ->  PathName(  "/Users/rafa/Desktop/samplers perc/mid/"  ).entries.collect( { | info |
    Buffer.read(s, info.fullPath)}));

~sounds.add(\high  ->  PathName(  "/Users/rafa/Desktop/samplers perc/high/" ).entries.collect( { | info |
    Buffer.read(s, info.fullPath)}));


~sounds.at(\high).choose.play


(
SynthDef(\player,

    {
        | buf, rate = 1, amp = 1|

        var audio;
        audio = SinOsc.ar(200);

        Out.ar(0,audio);
}).add
)



w = Synth(\player, [\buf, ~sounds[\low].choose])


(

Pdef(\first,
    Pbind( *[
        instrument:   Pseq( [\player,\sinos],inf),
        dur:  Pwrand( [0.2,0.3, 0.7],  [ 8,7, 1].normalizeSum, inf),
        buf:  Prand( ~sounds[\low]  ++   ~sounds[\mid] ++  ~sounds[\high] ,  inf),

        amp: Pwhite(0.5,1,inf)
])
).play
)







(

Pdef(\first,
    Pbind( *[
        instrument:   \player,
        dur:  0.2,
        buf:  Prand( ~sounds[\low]  ++   ~sounds[\mid] ++  ~sounds[\high] ,  inf),

        amp: Pwhite(0.5,1,inf)
])
).play(quant: 1);
)


(

Pdef(\pattern,

 Pbind(*[
    instrument: \sinos,
        dur:  0.2,


        midinote:  Pwhite(60,72,inf),

    harmonic: Pexprand( 1,5,inf),

    attack: Pwhite(0.01, 0.5, inf),
    decay: Pwhite(0.1,0.3,inf),

    amp:   0.5


])
).play(quant: 1)
)

//


Pdef(\pattern).stop













        