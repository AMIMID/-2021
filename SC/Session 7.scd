


s.plotTree


(
SynthDef(\sound,

    {
        | freq = 200, harm = 1 |

        var audio, env, trig;

        trig = Dust.kr(2);
        env = EnvGen.kr(Env.perc(0.01,1),trig);
        audio = Blip.ar(freq,harm);
        audio = audio * env;

        Out.ar(20,audio)
}).add
)


x = Synth.new(\sound, [\freq, rrand(200,3000), \harm, rrand(1,20)])
x.free

////

s.options.numAudioBusChannels

s.options.numOutputBusChannels
s.options.numInputBusChannels


(
SynthDef(\second,

    {
        |mix = 0.5, room  = 0.5 , damp= 0.5 |
        var rev, signal;

        signal = In.ar(20, 1);
        rev =  FreeVerb.ar( signal, mix, room, damp );

        Out.ar(0,rev);
}).add
)


~signal = Synth.new(\sound, [\freq, rrand(200,3000), \harm, rrand(1,20)])
~rev = Synth.new(\second,addAction: \addToTail);
~rev.set(\room, 1)


/////// Groups !!
(

q = Group.new;
w = Group.after(q)
)



~signal = Synth.new(\sound, [\freq, rrand(200,3000), \harm, rrand(1,20)], target:q)
~rev = Synth.new(\second,target: w);


////////





10.do( {~signal = Synth.new(\sound, [\freq, rrand(200,3000), \harm, rrand(1,20)], target:q)});
~rev = Synth.new(\second,target: w);


w.set(\room, 1)

q.free



///////



(
SynthDef(\second,

    {
        |mix_1 = 0.5, room_1  = 0.5 , mix_2 = 0.5, room_2  = 0.5  damp= 0.5 |
        var rev_1, rev_2, signal;

        signal = In.ar(20, 1);

        rev_1 =  FreeVerb.ar( signal, mix_1, room_1, damp );
        rev_2 =  FreeVerb.ar( signal, mix_2, room_2, damp );


        Out.ar([0,1] ,[rev_1,rev_2]);
}).add
)




(
SynthDef(\second,

    {
        |mix = 0.5, room  = 0.5 , damp= 0.5 |
        var rev, signal;

        signal = In.ar(20, 2);
        rev =  FreeVerb.ar( signal, mix, room, damp );

        Out.ar(0,rev);
}).add
)


(

q = Group.new;
w = Group.after(q)
)



~sig = 10.do({ Synth(\sound,target:q)});

~rev = Synth(\second,target:w);

w.set(\mix,0.01)

~rev.set(\mix_1, 1)
~rev.set(\mix_2, 0.1)

~rev.set(\room_1, 1)
~rev.set(\room_2, 0.1)

s.scope






