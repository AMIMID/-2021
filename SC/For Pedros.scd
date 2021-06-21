

//// first create a buffer to store some sound;

~me = Buffer.alloc(s, 20*s.sampleRate,1) // 20 second buffer


//// then we record some sound;


(
x = {RecordBuf.ar(SoundIn.ar(0),~me.bufnum); Line.kr(0,20,20).poll(1,\time);}.play
)

~me.play  // here you can test if you inded recorded something;

// whith this one you can clean the buffer. ONly in case you want to make a new recording
// ~me.zero



/////// also, instead of recording in supercollider, you might have already your audio file that you want to play.

~me = Buffer.read(s,  "   HERE GOES YOUR COOL SOUND FILE PATH   ");


///// finaly lets get down to business


(  /// here a simple SynthDef
SynthDef(\resi,
    { arg delayTime = 0.003, buf, amp = 0.5, res = 0.9;
        var audio;

        audio =  PlayBuf.ar(1,buf,loop:1);
        audio = Streson.ar(audio,delayTime,res) * amp;
        audio = Pan2.ar(audio);

        Out.ar(0,audio);
}).add
)


//// Then a quick test

q = Synth(\resi,[\buf, ~me.bufnum]);    /// start the synth;
q.set(\amp, 2);    // adjsut the volume
q.set(\delayTime, 60.midiratio.reciprocal)   // here we provide a note value in MIDI e.g. 60 is middle C
q.set(\res, 0.9)       /// adjust the level of resonance.. this goes from 0.01, to 0.99
q.free   /// stop


////////// Now with a chord of three notes

// fist we delcare the notes that we want. Also in MIDI notes

(
~note_1 = 60;    // e.i.  C
~note_2 = 64;    // e.i.  E
~note_3 = 67;    // e.i.  G
)


//// then we create 3 synths

(

q = 3.collect({ | i |
    Synth(\resi,[\buf, ~me.bufnum, \amp, 0.5, \res, 0.9, \delayTime, switch( i,
         0, {~note_1.midiratio.reciprocal},
         1, {~note_2.midiratio.reciprocal},
         2, {~note_3.midiratio.reciprocal},
    )])
})

)

///// here you can set different parameters


q.collect({ | i | i.set(\amp, 0.1)})   ////  volume
q.collect({ | i | i.set(\res, 0.95)})   //// resonance
q.collect({ | i | i.set(\delayTime, 70)})  /// Unisone e.i. the same note for the three synths. ALso in MIDI


/////// here you can change each note of the original chord independently
(
q.collect({ | i, y | switch(y,
                            0, {i.set(\delayTime, 66.midiratio.reciprocal) },    // note_1 ALL IN MIDI
                            1, { i.set(\delayTime, 75.midiratio.reciprocal) },  // note_2
                            2, {i.set(\delayTime, 79.midiratio.reciprocal) }    /// note_3
                              )
               })

)


/////// stop

q.collect({ | i | i.free});









