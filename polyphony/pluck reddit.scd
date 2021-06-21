(
s.waitForBoot({
    var mypat1, parpat;

    // define synth on server
    // env ensures it has a limited life time; doneAction:2 frees the resources
    // when it's done playing
    SynthDef(\pluck, {
        | out, freq, amp, time, pan |
        var env = EnvGen.kr(Env.perc(0.2, 10), doneAction:2);
        var sig = Pan2.ar(Pluck.ar(PinkNoise.ar(), delaytime: time*3, decaytime: 10), pan);
        Out.ar(out, amp*env*sig);
    }).add;

    // wait until the synth is available on the server
    s.sync;

    // define a pattern in language
    mypat1 = Pbind(
        \instrument, \pluck,
        \midinote, Pbrown(30,60,1,inf),
        \pan, Pwhite(0.0,1.0,inf),
        \out, Pseq([0], inf),
        \amp, Pseq([0.5], inf),
        \time, Pbrown(0.001, 0.01, 0.001, inf),
        \dur, Prand([0.125, 0.25, 0.5, 1.0], inf)
    );

    // put four identical patterns in parallel
    parpat = Ppar([mypat1].dup(4).flatten, inf);

    // let the patterns generate events, and
    // play the events
    // playing an event will instantiate the required
    // synth on the server
    ~player = parpat.play;
});
)

~player.stop;